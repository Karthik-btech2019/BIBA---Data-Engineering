import requests
from bs4 import BeautifulSoup
import keyboard
import time as t
import pandas as pd
import asyncio
from azure.eventhub.aio import EventHubProducerClient
from azure.eventhub import EventData
import json

def getdata(city):
    
    # Creating url and requests instances
    url = "https://www.google.com/search?q="+"weather"+city
    html = requests.get(url).content
    
    # Getting raw data
    soup = BeautifulSoup(html,'html.parser')
    temp = soup.find('div',attrs={'class':'BNeawe iBp4i AP7Wnd'}).text
    str = soup.find('div',attrs={'class':'BNeawe tAd8D AP7Wnd'}).text
    
    # Formatting data
    data = str.split('\n')
    time = data[0]
    sky=data[1]
    
    # Printing all the data
    t.sleep(60)
    dataframe=pd.DataFrame([[temp,time,sky]],columns=['temperature','time','skycondition'])
    return dataframe.to_dict('records')
getdata('Tamilnadu')

async def run():
    # Create a producer client to send message to the event hub
    # Specify the connection string to event hubs namespace and event hub name
    
    while True:
        await asyncio.sleep(5)
        producer = EventHubProducerClient.from_connection_string(conn_str='Endpoint=sb://receivestreamingdata.servicebus.windows.net/;SharedAccessKeyName=policy;SharedAccessKey=Ogm4mLVugujOiyGA3WC9Ru4vAcAD+5DUP+AEhFMz2Ko=;EntityPath=getdata',eventhub_name='getdata')
        async with producer:
            
            # create a batch
            event_data_batch = await producer.create_batch()
            
            # add events to the batch
            event_data_batch.add(EventData(json.dumps(getdata('Tamilnadu'))))
            
            # send the batch of events to the event hub
            await producer.send_batch(event_data_batch)
            print('Data has been sent successfully to eventhubs!!')

loop = asyncio.get_event_loop()
try:
    asyncio.ensure_future(run())
    loop.run_forever()
except KeyboardInterrupt:
    pass
finally:
    print('ClosingloopNow!!')
    loop.close()