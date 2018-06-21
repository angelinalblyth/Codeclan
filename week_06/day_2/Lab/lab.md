Lab
Big news, G6! Prestwick Airport have caught wind of your coding prowess and asked that you build their new Flight Management Logger. This is it G6! You are now TOP GUN. Please use TDD to complete the following:

MVP
Create a Airplane class with a Destination, Capacity and an initially empty ArrayList passengers of type Person
Create a method to return the number of passengers on the plane.
Create a method to board a passenger onto the plane only if the passenger count is less than the capacity.
Create a method to deplane a passenger from the plane. Deplane is a word. Feel free to look it up.
✈️✈️✈️

Extensions:
Add an Airport class which interacts with the other two.
Airports should have a location and an initially empty ArrayList of type "Person" - a departure lounge, if you will?
Add a method to add a Person to the departure lounge.
Add a method to remove a person from the departure lounge.
Create an departing plane method in that takes in an airplane and adds all the passengers in the departure lounge to the plane.
✈️✈️✈️

Further extensions:
Add an arriving plane method to the airport that takes in an airplane and deplanes all the passengers and adds them to the departure lounge.
Amend the arriving plane method so that if the plane's destination is not the location of the airport, no passengers deplane.
TIL: deplane
