import pymongo
url = "mongodb+srv://admin:admin@cluster0.jjyomii.mongodb.net/?retryWrites=true&w=majority"
client = pymongo.MongoClient(url)
db = client.pytech
print(db.list_collection_names)