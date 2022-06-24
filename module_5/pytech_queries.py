from pymongo import MongoClient
url = "mongodb+srv://admin:admin@cluster0.jjyomii.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
print(db.list_collection_names())

doc = db.student.find_one({"student_id":"1008"})
print(doc["student_id"])
