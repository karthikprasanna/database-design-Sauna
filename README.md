## Database Design for Sauna Heating World Championship
- Requirements Gathering
- Entity-Relationship Model
- Relational Database Model
- Final Coding phase of the database
- Testin Database

## List of all commands run, and their descriptions

1. Inclusion‌ ‌of‌ ‌the‌ ‌winner‌ ‌in‌ ‌the‌ ‌Events‌ ‌entity‌ ‌type‌ ‌based‌ ‌on‌ ‌the‌ ‌maximum‌ ‌total‌‌
points‌ ‌found‌ ‌in‌ ‌the‌ ‌points‌ ‌entity‌ ‌type.‌ ‌
    - Based on the maximum points in the Points entity type, the 'Winner' is added to the Events entity type

2. Addition‌ ‌of‌ ‌a‌ ‌new‌ ‌hotel‌ ‌in‌ ‌the‌ ‌accommodation‌ ‌entity‌ ‌type‌ ‌if‌ ‌the‌ ‌number‌ ‌of‌‌
vacant‌ ‌rooms‌ ‌>=‌ ‌20‌ ‌
    - If the Bookings in the Accomodation2 crosses 20, then the vacancy in Hotels is set to 0 

3. Deletion‌ ‌of‌ ‌the‌ ‌athlete‌ ‌from‌ ‌the‌ ‌participant’s‌ ‌list‌ ‌if‌ ‌the‌ ‌penalty‌ ‌points‌ ‌>=‌ ‌100,‌‌
from‌ ‌the‌ ‌points‌ ‌entity‌ ‌type.‌ ‌
    - If the Pentaly_points in the Points entity type is more than 100, then that corresponding player is removed everywhere.

4. Update‌ ‌the‌ ‌date‌ ‌of‌ ‌an‌ ‌event‌ ‌if‌ ‌the‌ ‌number‌ ‌of‌ ‌participants‌ ‌registered‌ ‌for‌ ‌a‌‌
given‌ ‌event‌ ‌is‌ ‌less‌ ‌than‌ ‌50‌ ‌in‌ ‌the‌ ‌events‌ ‌entity‌ ‌type.‌ ‌
    - If less than 50 people have signed up for the Event, then the Event_date is changed

5. Ask‌ ‌and‌ ‌update‌ ‌the‌ ‌age‌ ‌of‌ ‌the‌ ‌participant‌ ‌whenever‌ ‌a‌ ‌new‌ ‌entity‌ ‌is‌ ‌being‌‌
added‌ ‌to‌ ‌the‌ ‌events.
    - The Age of the participants is updated based on the current date

6. Select‌ ‌200‌ ‌tuples‌ ‌in‌ ‌the‌ ‌events,‌ ‌in‌ ‌which‌ ‌the‌ ‌particpant’s‌ ‌points‌ ‌in‌ ‌the‌ ‌points‌‌
entity‌ ‌type‌ ‌is‌ ‌maximum.‌ ‌
    - The 200 maximum point getters are listed out from the Points entity type

7. List‌ ‌all‌ ‌the‌ ‌participants‌ ‌in‌ ‌a‌ ‌given‌ ‌race‌ ‌event‌ ‌based‌ ‌on‌ ‌the‌ ‌gender‌ ‌category‌ ‌in‌‌
the‌ ‌participants‌ ‌entity‌ ‌type.‌ ‌
    - The user is asked for a gender category, and all the players of that gender are listed out from the Participants entity type.

8. Display‌ ‌the‌ ‌names‌ ‌of‌ ‌all‌ ‌the‌ ‌participants‌ ‌based‌ ‌on‌ ‌their‌ ‌country‌ ‌name.‌ ‌
    - The user is asked for a country name, and all the players from that country are listed out from the Participants entity type.

9. Count‌ ‌and‌ ‌nominate‌ ‌all‌ ‌the‌ ‌participants‌ ‌for‌ ‌the‌ ‌next‌ ‌event‌ ‌whose‌ ‌height‌ ‌is‌ ‌in‌‌
the‌ ‌range‌ ‌of‌ ‌140‌ ‌-‌ ‌160‌ ‌cm.‌ ‌
    - All the participants with height in the range 140-160 cm are nominated. 

10. Search‌ ‌for‌ ‌any‌ ‌Australian‌ ‌male‌ ‌participant‌ ‌whose‌ ‌height‌ ‌is‌ ‌150‌ ‌cm.
    - Australian male participant whose height is 150cm is searched
    
11. Quit
    - Ends the program
