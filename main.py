import sqlite3

connection = sqlite3.connect("SaunasHotTub.db")
print("database connected")

cursor = connection.cursor()

sql_file = open("main.sql")
sql_as_string = sql_file.read()
sql_file.close()

# cursor.executescript(sql_as_string)
# connection.commit()

def AddWinner():
    """
    Function for inclusion‌ ‌of‌ ‌the‌ ‌winner‌ ‌in‌ ‌the‌ ‌Events‌ ‌entity‌ ‌type‌ ‌based‌ ‌on‌ ‌the‌ ‌maximum‌ ‌total‌‌
points‌ ‌found‌ ‌in‌ ‌the‌ ‌points‌ ‌entity‌ ‌type.
    """
    query = "SELECT * FROM Points ORDER BY Total_points DESC LIMIT 1"
    print(query)
    cursor.execute(query)
    for row in cursor:
        Participant_ID = row[0]

    query = "SELECT Participant_ID, Participant_name, Gender_category, Country FROM Participants WHERE Participant_ID={}".format(Participant_ID)
    print(query)
    cursor.execute(query)
    for row in cursor:
        ID = row[0]
        Participant_name = row[1]
        Gender_category = row[2]
        Country = row[3]

    if ID == Participant_ID:
        print("winner already exists in the table")
    else:
		
        query = "INSERT INTO Winners(Participant_ID, Participant_name, Gender_category, Country) VALUES ({}, \'{}\', \'{}\', \'{}\')".format(Participant_ID, Participant_name, Gender_category, Country)
        print(query)
        cursor.execute(query)
        connection.commit()
        print("Winner has been added.")

def DisplayName():
    '''
	Display‌ ‌the‌ ‌names‌ ‌of‌ ‌all‌ ‌the‌ ‌participants‌ ‌based‌ ‌on‌ ‌their‌ ‌country‌ ‌name.‌
	'''
    C = input("enter country name: ")
    query = "SELECT Participant_name FROM Participants WHERE Country = \'{}\'".format(C)
    print(query)
    cursor.execute(query)
    for row in cursor:
	    print(row[0])

def ListParticipants():
    '''
	List‌ ‌all‌ ‌the‌ ‌participants‌ ‌in‌ ‌a‌ ‌given‌ ‌race‌ ‌event‌ ‌based‌ ‌on‌ ‌the‌ ‌gender‌ ‌category‌ ‌in‌‌
the‌ ‌participants‌ ‌entity‌ ‌type.‌ ‌
	'''
    g = input("enter the gender category: ")
    query = 'SELECT Participant_name FROM Participants WHERE Gender_category = \'{}\''.format(g)
    print(query)
    cursor.execute(query)
    for row in cursor:
	    print(row[0])

def dispatch(ch):
    """
    Function that maps helper functions to option entered
    """

    if ch == '1':
        AddWinner()
    elif ch =='7':
        ListParticipants()
    elif ch == '8':
        DisplayName()
    else:
        print("Error: Invalid Option")

while(1):
                
                # Here taking example of Employee Mini-world
                ch = input('''
1. Inclusion‌ ‌of‌ ‌the‌ ‌winner‌ ‌in‌ ‌the‌ ‌Events‌ ‌entity‌ ‌type‌ ‌based‌ ‌on‌ ‌the‌ ‌maximum‌ ‌total‌‌
points‌ ‌found‌ ‌in‌ ‌the‌ ‌points‌ ‌entity‌ ‌type.‌ ‌
2. Addition‌ ‌of‌ ‌a‌ ‌new‌ ‌hotel‌ ‌in‌ ‌the‌ ‌accommodation‌ ‌entity‌ ‌type‌ ‌if‌ ‌the‌ ‌number‌ ‌of‌‌
vacant‌ ‌rooms‌ ‌>=‌ ‌20‌ ‌
3. Deletion‌ ‌of‌ ‌the‌ ‌athlete‌ ‌from‌ ‌the‌ ‌participant’s‌ ‌list‌ ‌if‌ ‌the‌ ‌penalty‌ ‌points‌ ‌>=‌ ‌100,‌‌
from‌ ‌the‌ ‌points‌ ‌entity‌ ‌type.‌ ‌
4. Update‌ ‌the‌ ‌date‌ ‌of‌ ‌an‌ ‌event‌ ‌if‌ ‌the‌ ‌number‌ ‌of‌ ‌participants‌ ‌registered‌ ‌for‌ ‌a‌‌
given‌ ‌event‌ ‌is‌ ‌less‌ ‌than‌ ‌50‌ ‌in‌ ‌the‌ ‌events‌ ‌entity‌ ‌type.‌ ‌
5. Ask‌ ‌and‌ ‌update‌ ‌the‌ ‌age‌ ‌of‌ ‌the‌ ‌participant‌ ‌whenever‌ ‌a‌ ‌new‌ ‌entity‌ ‌is‌ ‌being‌‌
added‌ ‌to‌ ‌the‌ ‌events.
6. Select‌ ‌200‌ ‌tuples‌ ‌in‌ ‌the‌ ‌events,‌ ‌in‌ ‌which‌ ‌the‌ ‌particpant’s‌ ‌points‌ ‌in‌ ‌the‌ ‌points‌‌
entity‌ ‌type‌ ‌is‌ ‌maximum.‌ ‌
7. List‌ ‌all‌ ‌the‌ ‌participants‌ ‌in‌ ‌a‌ ‌given‌ ‌race‌ ‌event‌ ‌based‌ ‌on‌ ‌the‌ ‌gender‌ ‌category‌ ‌in‌‌
the‌ ‌participants‌ ‌entity‌ ‌type.‌ ‌
8. Display‌ ‌the‌ ‌names‌ ‌of‌ ‌all‌ ‌the‌ ‌participants‌ ‌based‌ ‌on‌ ‌their‌ ‌country‌ ‌name.‌ ‌
9. Count‌ ‌and‌ ‌nominate‌ ‌all‌ ‌the‌ ‌participants‌ ‌for‌ ‌the‌ ‌next‌ ‌event‌ ‌whose‌ ‌height‌ ‌is‌ ‌in‌‌
the‌ ‌range‌ ‌of‌ ‌140‌ ‌-‌ ‌160‌ ‌cm.‌ ‌
10. Search‌ ‌for‌ ‌any‌ ‌Australian‌ ‌male‌ ‌participant‌ ‌whose‌ ‌height‌ ‌is‌ ‌150‌ ‌cm.
11. QUIT
''')

                if ch == '11':
                    exit()
                else:
                    dispatch(ch)
                    tmp = input("Enter any key to CONTINUE>")


connection.close()
