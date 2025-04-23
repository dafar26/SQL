-- Création de la base (si besoin)
CREATE DATABASE Clinique;

-- Connexion à la base (utile si tu exécutes tout dans un seul fichier)
\c Clinique

-- Table des spécialités médicales
CREATE TABLE Specialites (
    ID_Specialite SERIAL PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL
);

-- Table des médecins
CREATE TABLE Medecins (
    ID_Medecin SERIAL PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    ID_Specialite INT REFERENCES Specialites(ID_Specialite)
);

-- Table des patients
CREATE TABLE Patients (
    ID_Patient SERIAL PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    Date_Naissance DATE,
    Sexe CHAR(1) CHECK (Sexe IN ('M', 'F'))
);

-- Table des consultations
CREATE TABLE Consultations (
    ID_Consultation SERIAL PRIMARY KEY,
    Date_Consultation DATE NOT NULL,
    ID_Medecin INT REFERENCES Medecins(ID_Medecin),
    ID_Patient INT REFERENCES Patients(ID_Patient),
    Diagnostic TEXT
);

-- Table des médicaments
CREATE TABLE Medicaments (
    ID_Medicament SERIAL PRIMARY KEY,
    Nom VARCHAR(100) NOT NULL,
    Type VARCHAR(50),
    Doses VARCHAR(50)
);

-- Table des prescriptions
CREATE TABLE Prescriptions (
    ID_Prescription SERIAL PRIMARY KEY,
    ID_Consultation INT REFERENCES Consultations(ID_Consultation),
    ID_Medicament INT REFERENCES Medicaments(ID_Medicament),
    Quantite INT NOT NULL
);
