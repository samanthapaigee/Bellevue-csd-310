import mysql.connector
errorcode = ''

try:
    db = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "Password",
        database = "pysports"
    )
    cursor = db.cursor()
    cursor.execute("SELECT team_id, team_name, mascot FROM team")
    teams = cursor.fetchall()
    
    print("\n Displaying team records")
    
    for team in teams:
        print("Team ID: {}\n Team Name: {}\n Mascot: {}\n".format(team[0], team[1], team[2]))
        
    cursor.execute("SELECT player_id, first_name, last_name, team_id FROM player")
    players = cursor.fetchall()
    print("\n Displaying player records")
    
    for player in players:
        print("Player ID: {}\n First Name: {}\n Last Name: {}\n Team ID: {}\n".format(player[0], player[1], player[2], player[3]))

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
    
