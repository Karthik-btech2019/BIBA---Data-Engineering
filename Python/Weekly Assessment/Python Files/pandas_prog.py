"""
    Pandas is a Python library used for working with data sets. 
    It is used to analyze, clean and explore the datasets
    It will be very helpful for large scale datasets
"""

# importing pandas library as pd
import pandas as pd
import csv

# reading a data from the csv file

data = pd.read_csv("Salary_Data.csv")
print(data.head()) # displaying first 5 values
print(data.tail()) # displaying last 5 values

# printing the no. of columns in the csv file
print("The columns in the csv file are :",data.columns)