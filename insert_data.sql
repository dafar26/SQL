-- Insertion des spécialités
INSERT INTO Specialites (Nom) VALUES
('Cardiologie'),
('Dermatologie'),
('Pédiatrie'),
('Neurologie');

-- Insertion des médecins
INSERT INTO Medecins (Nom, ID_Specialite) VALUES
('Dr. Dupont', 1),
('Dr. Martin', 2),
('Dr. Lefevre', 3),
('Dr. Bernard', 4);

-- Insertion des patients
INSERT INTO Patients (Nom, Date_Naissance, Sexe) VALUES
('Alice Durand', '1985-06-12', 'F'),
('Jean Moreau', '1990-11-23', 'M'),
('Claire Robert', '2000-03-15', 'F'),
('Marc Petit', '1978-09-30', 'M');

-- Insertion des consultations
INSERT INTO Consultations (Date_Consultation, ID_Medecin, ID_Patient, Diagnostic) VALUES
('2024-10-01', 1, 1
