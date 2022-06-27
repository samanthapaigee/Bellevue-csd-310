#import
from pymongo import MongoClient
#defining everything :D
url = "mongodb+srv://admin:admin@cluster0.jjyomii.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
col = db["student"]

#print via find method :D
for doc in col.find():
    print(doc)

#new student record    
snape = {
    "first_name": "Severus",
    "last_name": "Snape",
    "student_id": "1010"    
}

#insert Snape record
db.student.insert_one(snape)

#print new student record via find one method
doc = db.student.find_one({"student_id":"1010"})
print(doc)

#define filter
filter = {"student_id": "1010"}

#delete the Snape record via filter variable because it doesn't like anything else
#also un-aliving Dumbledore was whack.
col.delete_one(filter)

#print via find method :D
for doc in col.find():
    print(doc)
