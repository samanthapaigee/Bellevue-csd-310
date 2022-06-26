#import
from pymongo import MongoClient
#defining everything :D
url = "mongodb+srv://admin:admin@cluster0.jjyomii.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
col = db["student"]

#defining filter and new_last_name to use the variables to update the DB
filter = {"student_id": "1007"}
new_last_name = {"$set" : {"last_name": "Potter"}} 
col.update_one(filter, new_last_name)

#print :D
for doc in col.find():
    print(doc)
