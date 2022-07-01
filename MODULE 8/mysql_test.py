import mysql.connector
errorcode = ''

try:
    db = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "Password",
        database = "pysports"
    )

    print("Database user {} connected to MySQL on host {} with database {}".format(db.user, db.server_host, db.database))
    
    
    input ("Press any key to continue...")
    
except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("The supplied username or password are invalid")
            
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("The specified database does not exist")
            
        else:
            print(err)
            
finally:
    db.close()
