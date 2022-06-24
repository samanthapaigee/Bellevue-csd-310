from pymongo import MongoClient

url = 'mongodb+srv://admin:admin@cluster0.jjyomii.mongodb.net/?retryWrites=true&w=majority'

try:
    conn = url
    print ("success")
except:
    print("no")
