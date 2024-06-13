CREATE TABLE Donor (
    DonorID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Age NUMBER,
    Gender CHAR(1),
    BloodType VARCHAR2(5),
    ContactInformation VARCHAR2(20),
    DonorHistory VARCHAR2(100)
);

INSERT INTO Donor VALUES (1, 'John Doe', 25, 'M', 'O+', '123-456-7890', 'No previous donations');
INSERT INTO Donor VALUES (2, 'Jane Smith', 30, 'F', 'A-', '987-654-3210', 'Regular donor');
INSERT INTO Donor VALUES (3, 'Robert Brown', 40, 'M', 'B+', '555-555-5555', 'Medical history of hepatitis');
INSERT INTO Donor VALUES (4, 'Lisa Johnson', 35, 'F', 'AB-', '111-222-3333', 'Regular donor');
INSERT INTO Donor VALUES (5, 'Michael Williams', 28, 'M', 'O-', '444-444-4444', 'No previous donations');
INSERT INTO Donor VALUES (6, 'Susan Taylor', 50, 'F', 'A+', '666-666-6666', 'Regular donor');
INSERT INTO Donor VALUES (7, 'William Clark', 45, 'M', 'O+', '777-777-7777', 'No previous donations');
INSERT INTO Donor VALUES (8, 'Sophia Anderson', 33, 'F', 'B-', '888-888-8888', 'Regular donor');
INSERT INTO Donor VALUES (9, 'David Wilson', 38, 'M', 'A-', '999-999-9999', 'Medical history of HIV');
INSERT INTO Donor VALUES (10, 'Emily Thomas', 29, 'F', 'AB+', '101-010-1010', 'Regular donor');
INSERT INTO Donor VALUES (11, 'James Brown', 42, 'M', 'B+', '202-020-2020', 'No previous donations');
INSERT INTO Donor VALUES (12, 'Sarah Davis', 27, 'F', 'A-', '303-030-3030', 'Regular donor');
INSERT INTO Donor VALUES (13, 'Paul Johnson', 35, 'M', 'O-', '404-040-4040', 'No previous donations');
INSERT INTO Donor VALUES (14, 'Linda Smith', 32, 'F', 'B+', '505-050-5050', 'Regular donor');
INSERT INTO Donor VALUES (15, 'Richard Wilson', 40, 'M', 'A-', '606-060-6060', 'Medical history of hepatitis');
INSERT INTO Donor VALUES (16, 'Karen Williams', 29, 'F', 'O+', '707-070-7070', 'Regular donor');
INSERT INTO Donor VALUES (17, 'George Taylor', 48, 'M', 'B-', '808-080-8080', 'Regular donor');
INSERT INTO Donor VALUES (18, 'Amanda Clark', 31, 'F', 'AB+', '909-090-9090', 'No previous donations');
INSERT INTO Donor VALUES (19, 'Steven Anderson', 37, 'M', 'O+', '121-212-1212', 'Regular donor');
INSERT INTO Donor VALUES (20, 'Michelle Brown', 26, 'F', 'B-', '131-313-1313', 'Medical history of HIV');
INSERT INTO Donor VALUES (21, 'Daniel Davis', 44, 'M', 'A-', '141-414-1414', 'Regular donor');
INSERT INTO Donor VALUES (22, 'Carol Johnson', 34, 'F', 'O+', '151-515-1515', 'No previous donations');
INSERT INTO Donor VALUES (23, 'Edward Williams', 39, 'M', 'AB+', '161-616-1616', 'Regular donor');
INSERT INTO Donor VALUES (24, 'Laura Wilson', 28, 'F', 'B-', '171-717-1717', 'No previous donations');
INSERT INTO Donor VALUES (25, 'Joseph Taylor', 47, 'M', 'O-', '181-818-1818', 'Regular donor');
INSERT INTO Donor VALUES (26, 'Patricia Clark', 36, 'F', 'B+', '191-919-1919', 'Regular donor');
INSERT INTO Donor VALUES (27, 'Charles Brown', 43, 'M', 'A-', '202-020-2020', 'Medical history of hepatitis');
INSERT INTO Donor VALUES (28, 'Donna Smith', 33, 'F', 'O+', '212-121-2121', 'Regular donor');
INSERT INTO Donor VALUES (29, 'Thomas Anderson', 49, 'M', 'B-', '222-222-2222', 'No previous donations');
INSERT INTO Donor VALUES (30, 'Mary Johnson', 30, 'F', 'AB+', '232-323-2323', 'Regular donor');
INSERT INTO Donor VALUES (31, 'Rushi Patel', 32, 'M', 'B+', '252-323-2323', 'Regular donor');
INSERT INTO Donor VALUES (32, 'Viya Shah', 39, 'F', 'B+', '232-323-2353', 'Regular donor');
INSERT INTO Donor VALUES (33, 'Siddh Shah', 36, 'M', 'B+', '232-323-2123', 'Regular donor');
INSERT INTO Donor VALUES (34, 'Yashvi Shah', 20, 'F', 'B+', '232-323-4323', 'Regular donor');
INSERT INTO Donor VALUES (35, 'Devansh Shah', 23, 'M', 'B+', '232-323-7323', 'Regular donor');
INSERT INTO Donor VALUES (36, 'Roshni Rana', 26, 'F', 'B+', '232-323-2923', 'Regular donor');
INSERT INTO Donor VALUES (37, 'Aarya Patel', 20, 'F', 'B+', '232-323-2023', 'Regular donor');
INSERT INTO Donor VALUES (38, 'Khushi Patel', 18, 'F', 'B+', '232-323-2563', 'Regular donor');


CREATE TABLE BloodDonation (
    DonationID NUMBER PRIMARY KEY,
    DonorID NUMBER,
    DonationDate DATE,
    DonationLocation VARCHAR2(50),
    VolumeOfBloodDonated NUMBER,
    BloodBagID VARCHAR2(10),
    FOREIGN KEY (DonorID) REFERENCES Donor(DonorID)
);

INSERT INTO BloodDonation VALUES (1, 1, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'City Hospital', 450, 'DB-001');
INSERT INTO BloodDonation VALUES (2, 1, TO_DATE('2023-01-20', 'YYYY-MM-DD'), 'City Hospital', 450, 'DB-002');
INSERT INTO BloodDonation VALUES (3, 2, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'City Hospital', 450, 'DB-003');
INSERT INTO BloodDonation VALUES (4, 3, TO_DATE('2023-02-12', 'YYYY-MM-DD'), 'Community Center', 500, 'DB-004');
INSERT INTO BloodDonation VALUES (5, 4, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'City Hospital', 400, 'DB-005');
INSERT INTO BloodDonation VALUES (6, 5, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 'City Hospital', 400, 'DB-006');
INSERT INTO BloodDonation VALUES (7, 6, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 'Red Cross Center', 550, 'DB-007');
INSERT INTO BloodDonation VALUES (8, 7, TO_DATE('2023-04-20', 'YYYY-MM-DD'), 'Red Cross Center', 550, 'DB-008');
INSERT INTO BloodDonation VALUES (9, 8, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 'Red Cross Center', 550, 'DB-009');
INSERT INTO BloodDonation VALUES (10, 9, TO_DATE('2023-05-15', 'YYYY-MM-DD'), 'Community Center', 500, 'DB-010');
INSERT INTO BloodDonation VALUES (11, 10, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 'Red Cross Center', 480, 'DB-011');
INSERT INTO BloodDonation VALUES (12, 11, TO_DATE('2023-07-01', 'YYYY-MM-DD'), 'City Hospital', 420, 'DB-012');
INSERT INTO BloodDonation VALUES (13, 12, TO_DATE('2023-07-10', 'YYYY-MM-DD'), 'City Hospital', 420, 'DB-013');
INSERT INTO BloodDonation VALUES (14, 13, TO_DATE('2023-08-01', 'YYYY-MM-DD'), 'Community Center', 490, 'DB-014');
INSERT INTO BloodDonation VALUES (15, 14, TO_DATE('2023-09-01', 'YYYY-MM-DD'), 'Red Cross Center', 460, 'DB-015');
INSERT INTO BloodDonation VALUES (16, 15, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 'City Hospital', 510, 'DB-016');
INSERT INTO BloodDonation VALUES (17, 16, TO_DATE('2023-11-01', 'YYYY-MM-DD'), 'Community Center', 470, 'DB-017');
INSERT INTO BloodDonation VALUES (18, 17, TO_DATE('2023-11-10', 'YYYY-MM-DD'), 'Community Center', 470, 'DB-018');
INSERT INTO BloodDonation VALUES (19, 18, TO_DATE('2023-12-05', 'YYYY-MM-DD'), 'Red Cross Center', 440, 'DB-019');
INSERT INTO BloodDonation VALUES (20, 19, TO_DATE('2023-12-15', 'YYYY-MM-DD'), 'Red Cross Center', 440, 'DB-020');
INSERT INTO BloodDonation VALUES (21, 20, TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'City Hospital', 430, 'DB-021');
INSERT INTO BloodDonation VALUES (22, 21, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Community Center', 520, 'DB-022');
INSERT INTO BloodDonation VALUES (23, 22, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'Red Cross Center', 490, 'DB-023');
INSERT INTO BloodDonation VALUES (24, 23, TO_DATE('2023-04-01', 'YYYY-MM-DD'), 'City Hospital', 450, 'DB-024');
INSERT INTO BloodDonation VALUES (25, 24, TO_DATE('2023-05-20', 'YYYY-MM-DD'), 'Community Center', 500, 'DB-025');
INSERT INTO BloodDonation VALUES (26, 25, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 'Red Cross Center', 480, 'DB-026');
INSERT INTO BloodDonation VALUES (27, 26, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 'Red Cross Center', 480, 'DB-027');
INSERT INTO BloodDonation VALUES (28, 27, TO_DATE('2023-07-01', 'YYYY-MM-DD'), 'City Hospital', 460, 'DB-028');
INSERT INTO BloodDonation VALUES (29, 28, TO_DATE('2023-08-10', 'YYYY-MM-DD'), 'Community Center', 530, 'DB-029');
INSERT INTO BloodDonation VALUES (30, 29, TO_DATE('2023-08-20', 'YYYY-MM-DD'), 'Community Center', 530, 'DB-030');
INSERT INTO BloodDonation VALUES (31, 31, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'Community Center', 530, 'DB-031');
INSERT INTO BloodDonation VALUES (32, 32, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Red Cross Center', 530, 'DB-032');
INSERT INTO BloodDonation VALUES (33, 33, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Community Center', 530, 'DB-033');
INSERT INTO BloodDonation VALUES (34, 34, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'Community Center', 530, 'DB-034');
INSERT INTO BloodDonation VALUES (35, 35, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 'Community Center', 530, 'DB-035');
INSERT INTO BloodDonation VALUES (36, 36, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 'Red Cross Center', 530, 'DB-036');
INSERT INTO BloodDonation VALUES (37, 37, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 'Red Cross Center', 530, 'DB-037');
INSERT INTO BloodDonation VALUES (38, 38, TO_DATE('2023-07-10', 'YYYY-MM-DD'), 'Red Cross Center', 530, 'DB-038');
INSERT INTO BloodDonation VALUES (39, 38, TO_DATE('2023-08-10', 'YYYY-MM-DD'), 'Community Center', 530, 'DB-039');
INSERT INTO BloodDonation VALUES (40, 38, TO_DATE('2023-08-10', 'YYYY-MM-DD'), 'City Hospital', 530, 'DB-040');
INSERT INTO BloodDonation VALUES (41, 38, TO_DATE('2023-08-10', 'YYYY-MM-DD'), 'City Hospital', 530, 'DB-041');
INSERT INTO BloodDonation VALUES (42, 38, TO_DATE('2023-10-10', 'YYYY-MM-DD'), 'City Hospital', 530, 'DB-042');


CREATE TABLE ScreeningResults (
    ScreeningID NUMBER PRIMARY KEY,
    DonationID NUMBER,
    ScreeningDate DATE,
    TestType VARCHAR2(10),
    TestResult VARCHAR2(10),
    ScreeningLab VARCHAR2(50),
    ScreeningTechnician VARCHAR2(50),
    FOREIGN KEY (DonationID) REFERENCES BloodDonation(DonationID)
);

INSERT INTO ScreeningResults VALUES (1, 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'HIV', 'Negative', 'City Lab', 'Dr. Anderson');
INSERT INTO ScreeningResults VALUES (2, 2, TO_DATE('2023-01-25', 'YYYY-MM-DD'), 'HBV', 'Negative', 'City Lab', 'Dr. Anderson');
INSERT INTO ScreeningResults VALUES (3, 3, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'HIV', 'Negative', 'Community Lab', 'Dr. Baker');
INSERT INTO ScreeningResults VALUES (4, 4, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'HCV', 'Negative', 'Community Lab', 'Dr. Baker');
INSERT INTO ScreeningResults VALUES (5, 5, TO_DATE('2023-03-05', 'YYYY-MM-DD'), 'HIV', 'Negative', 'City Lab', 'Dr. Clark');
INSERT INTO ScreeningResults VALUES (6, 6, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'HBV', 'Positive', 'City Lab', 'Dr. Clark');
INSERT INTO ScreeningResults VALUES (7, 7, TO_DATE('2023-04-15', 'YYYY-MM-DD'), 'HIV', 'Positive', 'Red Cross Lab', 'Dr. Davis');
INSERT INTO ScreeningResults VALUES (8, 8, TO_DATE('2023-04-25', 'YYYY-MM-DD'), 'HCV', 'Negative', 'Red Cross Lab', 'Dr. Davis');
INSERT INTO ScreeningResults VALUES (9, 9, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 'HIV', 'Negative', 'Community Lab', 'Dr. Evans');
INSERT INTO ScreeningResults VALUES (10, 10, TO_DATE('2023-05-20', 'YYYY-MM-DD'), 'HBV', 'Negative', 'Community Lab', 'Dr. Evans');
INSERT INTO ScreeningResults VALUES (11, 11, TO_DATE('2023-06-15', 'YYYY-MM-DD'), 'HIV', 'Negative', 'Red Cross Lab', 'Dr. Fisher');
INSERT INTO ScreeningResults VALUES (12, 12, TO_DATE('2023-06-30', 'YYYY-MM-DD'), 'HBV', 'Positive', 'Red Cross Lab', 'Dr. Fisher');
INSERT INTO ScreeningResults VALUES (13, 13, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 'HIV', 'Positive', 'City Lab', 'Dr. Grant');
INSERT INTO ScreeningResults VALUES (14, 14, TO_DATE('2023-07-30', 'YYYY-MM-DD'), 'HCV', 'Negative', 'City Lab', 'Dr. Grant');
INSERT INTO ScreeningResults VALUES (15, 15, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'HIV', 'Negative', 'Community Lab', 'Dr. Harris');
INSERT INTO ScreeningResults VALUES (16, 16, TO_DATE('2023-08-30', 'YYYY-MM-DD'), 'HBV', 'Negative', 'Community Lab', 'Dr. Harris');
INSERT INTO ScreeningResults VALUES (17, 17, TO_DATE('2023-09-20', 'YYYY-MM-DD'), 'HIV', 'Positive', 'Red Cross Lab', 'Dr. Irving');
INSERT INTO ScreeningResults VALUES (18, 18, TO_DATE('2023-09-30', 'YYYY-MM-DD'), 'HCV', 'Positive', 'Red Cross Lab', 'Dr. Irving');
INSERT INTO ScreeningResults VALUES (19, 19, TO_DATE('2023-10-25', 'YYYY-MM-DD'), 'HIV', 'Negative', 'City Lab', 'Dr. Johnson');
INSERT INTO ScreeningResults VALUES (20, 20, TO_DATE('2023-11-05', 'YYYY-MM-DD'), 'HBV', 'Negative', 'City Lab', 'Dr. Johnson');
INSERT INTO ScreeningResults VALUES (21, 21, TO_DATE('2023-11-20', 'YYYY-MM-DD'), 'HIV', 'Negative', 'Community Lab', 'Dr. King');
INSERT INTO ScreeningResults VALUES (22, 22, TO_DATE('2023-12-05', 'YYYY-MM-DD'), 'HBV', 'Positive', 'Community Lab', 'Dr. King');
INSERT INTO ScreeningResults VALUES (23, 23, TO_DATE('2023-12-20', 'YYYY-MM-DD'), 'HIV', 'Positive', 'Red Cross Lab', 'Dr. Lewis');
INSERT INTO ScreeningResults VALUES (24, 24, TO_DATE('2023-12-30', 'YYYY-MM-DD'), 'HCV', 'Positive', 'Red Cross Lab', 'Dr. Lewis');
INSERT INTO ScreeningResults VALUES (25, 25, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'HIV', 'Negative', 'City Lab', 'Dr. Martin');
INSERT INTO ScreeningResults VALUES (26, 26, TO_DATE('2023-01-25', 'YYYY-MM-DD'), 'HBV', 'Negative', 'City Lab', 'Dr. Martin');
INSERT INTO ScreeningResults VALUES (27, 27, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'HIV', 'Negative', 'Community Lab', 'Dr. Nelson');
INSERT INTO ScreeningResults VALUES (28, 28, TO_DATE('2023-02-25', 'YYYY-MM-DD'), 'HCV', 'Positive', 'Community Lab', 'Dr. Nelson');
INSERT INTO ScreeningResults VALUES (29, 29, TO_DATE('2023-03-10', 'YYYY-MM-DD'), 'HIV', 'Negative', 'Red Cross Lab', 'Dr. Owen');
INSERT INTO ScreeningResults VALUES (30, 30, TO_DATE('2023-03-25', 'YYYY-MM-DD'), 'HBV', 'Positive', 'Red Cross Lab', 'Dr. Owen');
INSERT INTO ScreeningResults VALUES (31, 31, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'HBV', 'Positive', 'Community Lab', 'Dr. Nelson');
INSERT INTO ScreeningResults VALUES (32, 32, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'HBV', 'Positive', 'Red Cross Lab', 'Dr. Owen');
INSERT INTO ScreeningResults VALUES (33, 33, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'HBV', 'Negative', 'Community Lab', 'Dr. Nelson');
INSERT INTO ScreeningResults VALUES (34, 34, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 'HBV', 'Negative', 'Community Lab', 'Dr. Nelson');
INSERT INTO ScreeningResults VALUES (35, 35, TO_DATE('2023-04-15', 'YYYY-MM-DD'), 'HBV', 'Negative', 'Community Lab', 'Dr. Nelson');
INSERT INTO ScreeningResults VALUES (36, 36, TO_DATE('2023-04-15', 'YYYY-MM-DD'), 'HBV', 'Negative', 'Red Cross Lab', 'Dr. Owen');
INSERT INTO ScreeningResults VALUES (37, 37, TO_DATE('2023-06-15', 'YYYY-MM-DD'), 'HBV', 'Negative', 'Red Cross Lab', 'Dr. Owen');
INSERT INTO ScreeningResults VALUES (38, 38, TO_DATE('2023-07-15', 'YYYY-MM-DD'), 'HBV', 'Negative', 'Red Cross Lab', 'Dr. Owen');
INSERT INTO ScreeningResults VALUES (39, 39, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'HBV', 'Positive', 'Community Lab', 'Dr. Nelson');
INSERT INTO ScreeningResults VALUES (40, 40, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'HBV', 'Positive', 'City Lab',  'Dr. Johnson');
INSERT INTO ScreeningResults VALUES (41, 41, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'HBV', 'Negative', 'City Lab',  'Dr. Johnson');
INSERT INTO ScreeningResults VALUES (42, 42, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'HBV', 'Positive', 'City Lab',  'Dr. Johnson');

CREATE TABLE Recipient (
    RecipientID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Age NUMBER,
    Gender CHAR(1),
    BloodType VARCHAR2(5),
    ContactInformation VARCHAR2(20),
    MedicalHistory VARCHAR2(100)
);

INSERT INTO Recipient VALUES (1001, 'Emily White', 32, 'F', 'O+', '555-123-4567', 'No previous transfusions');
INSERT INTO Recipient VALUES (1002, 'William Green', 45, 'M', 'A-', '123-987-6543', 'Recent surgery');
INSERT INTO Recipient VALUES (1003, 'Sophia Brown', 50, 'F', 'B+', '999-888-7777', 'No previous transfusions');
INSERT INTO Recipient VALUES (1004, 'James Clark', 40, 'M', 'O-', '111-222-3333', 'Regular transfusions');
INSERT INTO Recipient VALUES (1005, 'Olivia Davis', 28, 'F', 'A+', '444-555-6666', 'Medical history of anemia');
INSERT INTO Recipient VALUES (1006, 'Emma Wilson', 35, 'F', 'B-', '777-888-9999', 'No previous transfusions');
INSERT INTO Recipient VALUES (1007, 'Luke Taylor', 42, 'M', 'O+', '111-222-3333', 'Regular transfusions');
INSERT INTO Recipient VALUES (1008, 'Anna Smith', 39, 'F', 'AB+', '444-555-6666', 'Medical history of hepatitis');
INSERT INTO Recipient VALUES (1009, 'Ethan Johnson', 33, 'M', 'A-', '777-888-9999', 'No previous transfusions');
INSERT INTO Recipient VALUES (1010, 'Grace Williams', 36, 'F', 'O-', '111-222-3333', 'Regular transfusions');

CREATE TABLE TransmittedInfections (
    InfectionID NUMBER PRIMARY KEY,
    DonorID NUMBER,
    RecipientID NUMBER,
    InfectionType VARCHAR2(10),
    DateOfDiagnosis DATE,
    TransmissionRoute VARCHAR2(50),
    SeverityStage VARCHAR2(20),
    FOREIGN KEY (DonorID) REFERENCES Donor(DonorID),
    FOREIGN KEY (RecipientID) REFERENCES Recipient(RecipientID)
);

INSERT INTO TransmittedInfections VALUES (1, 3, 1001, 'HIV', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 'Unknown', 'Early');
INSERT INTO TransmittedInfections VALUES (2, 4, 1002, 'HBV', TO_DATE('2023-05-05', 'YYYY-MM-DD'), 'Blood transfusion', 'Chronic');
INSERT INTO TransmittedInfections VALUES (3, 6, 1003, 'HIV', TO_DATE('2023-04-10', 'YYYY-MM-DD'), 'Unknown', 'Asymptomatic');
INSERT INTO TransmittedInfections VALUES (4, 5, 1004, 'HCV', TO_DATE('2023-06-15', 'YYYY-MM-DD'), 'Unknown', 'Chronic');
INSERT INTO TransmittedInfections VALUES (5, 2, 1005, 'HIV', TO_DATE('2023-02-25', 'YYYY-MM-DD'), 'Unknown', 'Early');
INSERT INTO TransmittedInfections VALUES (6, 10, 1006, 'HBV', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 'Blood transfusion', 'Chronic');
INSERT INTO TransmittedInfections VALUES (7, 15, 1007, 'HIV', TO_DATE('2023-09-05', 'YYYY-MM-DD'), 'Unknown', 'Early');
INSERT INTO TransmittedInfections VALUES (8, 20, 1008, 'HCV', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'Blood transfusion', 'Chronic');
INSERT INTO TransmittedInfections VALUES (9, 25, 1009, 'HBV', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'Unknown', 'Chronic');
INSERT INTO TransmittedInfections VALUES (10, 30, 1010, 'HIV', TO_DATE('2023-03-30', 'YYYY-MM-DD'), 'Unknown', 'Early');