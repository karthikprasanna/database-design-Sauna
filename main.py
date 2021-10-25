import sqlite3


connection = sqlite3.connect("SaunasHotTub.db")
print("database connected")

cursor = connection.cursor()

sql_file = open("main.sql")
sql_as_string = sql_file.read()
sql_file.close()

# cursor.executescript(sql_as_string)
# connection.commit()


connection.close()
