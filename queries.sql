-- 1. Liste des patients et leurs consultations
SELECT p.Nom AS Patient, c.Date_Consultation, c.Diagnostic
FROM Patients p
JOIN Consultations c ON p.ID_Patient = c.ID_Patient;

-- 2. Médicaments prescrits par consultation
SELECT c.ID_Consultation, m.Nom AS Medecin, me.Nom AS Medicament, pr.Quantite
FROM Consultations c
JOIN Prescriptions pr ON c.ID_Consultation = pr.ID_Consultation
JOIN Medicaments me ON pr.ID_Medicament = me.ID_Medicament
JOIN Medecins m ON c.ID_Medecin = m.ID_Medecin;

-- 3. Nombre de consultations par patient
SELECT p.Nom, COUNT(c.ID_Consultation) AS Nb_Consultations
FROM Patients p
LEFT JOIN Consultations c ON p.ID_Patient = c.ID_Patient
GROUP BY p.Nom;

-- 4. Liste des médecins et leur spécialité
SELECT m.Nom AS Medecin, s.Nom AS Specialite
FROM Medecins m
JOIN Specialites s ON m.ID_Specialite = s.ID_Specialite;

-- 5. Consultations avec nom du médecin et
