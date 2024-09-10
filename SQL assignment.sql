CREATE TABLE Members (
id INT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
age INT);

CREATE TABLE Worksessions (
session_id INT PRIMARY KEY,
member_id INT,
session_date DATE,
session_time VARCHAR(50),
activity VARCHAR(255),
FOREIGN KEY (member_id) REFERENCES Members(id));

INSERT INTO Members (id, name, age)
VALUES 
(1, 'Jane Doe', 28),
(2, 'John Smith', 35),
(3, 'Alice Brown', 22);


INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES 
(1, 1, '2024-09-10', '08:00', 'Yoga'),
(2, 2, '2024-09-10', '10:00', 'Weightlifting'),
(3, 3, '2024-09-10', '09:00', 'Cardio');

SELECT * FROM members;