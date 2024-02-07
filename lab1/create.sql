CREATE DATABASE Сессия;

CREATE TABLE Студент (
    N_зачетки INT PRIMARY KEY,
    фамилия VARCHAR(50) NOT NULL,
    имя VARCHAR(50) NOT NULL,
    отчество VARCHAR(50) NOT NULL,
    N_группы INT NOT NULL,
    телефон VARCHAR(15)
);

CREATE TABLE Предмет (
    N_предмета INT PRIMARY KEY,
    название_предмета VARCHAR(100) NOT NULL,
    фамилия_преподавателя VARCHAR(50) NOT NULL
);

CREATE TABLE Студент_предмет (
    N_зачетки INT,
    N_предмета INT,
    оценка INT,
    PRIMARY KEY (N_зачетки, N_предмета),
    FOREIGN KEY (N_зачетки) REFERENCES Студент(N_зачетки),
    FOREIGN KEY (N_предмета) REFERENCES Предмет(N_предмета)
);