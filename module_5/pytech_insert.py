from pymongo import MongoClient
url = "mongodb+srv://admin:admin@cluster0.jjyomii.mongodb.net/?retryWrites=true&w=majority"
client = MongoClient(url)
db = client.pytech
print(db.list_collection_names())

#defining names
fred = {
    "first_name": "Fred",
    "last_name": "Weasely",
    "student_id": "1007"    
}
george = {
    "first_name": "George",
    "last_name": "Weasely",
    "student_id": "1008"   
}
ron = {
    "first_name": "Ron",
    "last_name": "Weasely",
    "student_id": "1009"   
}

fred_student_id = db.student.insert_one(fred).inserted_id
george_student_id = db.student.insert_one(george).inserted_id
ron_student_id = db.student.insert_one(ron).inserted_id
print(fred_student_id)
print(george_student_id)
print(ron_student_id)
