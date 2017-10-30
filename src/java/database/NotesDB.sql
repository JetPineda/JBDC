DROP DATABASE if exists NotesDB;
CREATE DATABASE NotesDB;

USE NotesDB;

DROP DATABASE if exists Notes;

CREATE TABLE Note( 
    noteId INT AUTO_INCREMENT NOT NULL,
    dateCreated DATETIME NOT NULL,
    contents NVARCHAR(10000) NOT NULL,
    PRIMARY KEY (noteId)
);



