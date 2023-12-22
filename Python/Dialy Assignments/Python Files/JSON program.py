import json

person = '{"name": "Bob", "languages": ["English", "French"]}'
person_dict = json.loads(person)

# Displaying the values
print( person_dict)

# Displaying the values which belongs only to languages
print(person_dict['languages'])

# Loading and opening a json file
with open('karthik.json', 'r') as f:
  data = json.load(f)
print(data)

# Converting dict to json
veh_dict = {"name":"Bmw","Fuel_type":"Petrol","model":2020}
new_data = json.dumps(veh_dict)
print(new_data)