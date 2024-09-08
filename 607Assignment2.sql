CREATE DATABASE MovieRatings;
USE MovieRatings;

CREATE TABLE Persons (
    PersonID INT AUTO_INCREMENT PRIMARY KEY,
    PersonName VARCHAR(255)
);

CREATE TABLE Movies (
    MovieID INT AUTO_INCREMENT PRIMARY KEY,
    MovieTitle VARCHAR(255)
);

CREATE TABLE Ratings (
    RatingID INT AUTO_INCREMENT PRIMARY KEY,
    PersonID INT,
    MovieID INT,
    Rating INT,
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

INSERT INTO Persons (PersonName) VALUES 
('Mike'), 
('Bob'), 
('Eric'), 
('Kim'), 
('Kerry');

INSERT INTO Movies (MovieTitle) VALUES 
('Twisters'), 
('Deadpool'), 
('Inside Out 2'), 
('Dune 2'), 
('Mad Max'), 
('Alien');

INSERT INTO Ratings (PersonID, MovieID, Rating) VALUES
(1, 1, 5), 
(1, 2, 4),  
(1, 3, NULL), 
(1, 4, 2),  
(1, 5, 5), 
(1, 6, NULL); 

-- Insert ratings for Bob (PersonID = 2)
INSERT INTO Ratings (PersonID, MovieID, Rating) VALUES
(2, 1, 4),  
(2, 2, 3),  
(2, 3, 5),
(2, 4, NULL), 
(2, 5, 5),  
(2, 6, 4);  

-- Insert ratings for Charlie (PersonID = 3)
INSERT INTO Ratings (PersonID, MovieID, Rating) VALUES
(3, 1, 3),
(3, 2, 4), 
(3, 3, 4),  
(3, 4, 3),  
(3, 5, NULL),  
(3, 6, NULL);  

-- Insert ratings for David (PersonID = 4)
INSERT INTO Ratings (PersonID, MovieID, Rating) VALUES
(4, 1, 5),  
(4, 2, NULL), 
(4, 3, 4), 
(4, 4, 4),
(4, 5, 5),  
(4, 6, 3);  

-- Insert ratings for Eve (PersonID = 5)
INSERT INTO Ratings (PersonID, MovieID, Rating) VALUES
(5, 1, NULL), 
(5, 2, 5), 
(5, 3, 3),  
(5, 4, 2),  
(5, 5, 4),
(5, 6, 5); 
