/*  

MAINTAINED BY JEFF Kranenburg

Comment Everything and Uncommment Line 6 before recreating the content

*/


USE Master

USE Rugby7db



---------------------------------------

-- INSERT DATA

---------------------------------------



-- TRUNCATE TABLE "game_schedule"

-- Go



INSERT INTO "game_schedule" VALUES 

('m1', 1, '10.05am', 'COUM', 'WBHM', null, null), 

('m2', 1, '10.25am', 'MANM', 'NHBM', null, null), 

('m3', 1, '10.45am', 'WAIM', 'STHM', null, null), 

('m4', 1, '11.05am', 'AKLM', 'OTAM', null, null), 

('m5', 1, '11.25am', 'WELM', 'SCBM', null, null), 

('m6', 1, '11.45am', 'TASM', 'NTHM', null, null), 

('m7', 1, '12.05pm', 'HAWM', 'CANM', null, null), 

('m8', 1, '12.25pm', 'BOPM', 'TARM', null, null), 

('m9', 2, '12.25pm', 'COUM', 'NHBM', null, null), 

('m10', 2, '12.45pm', 'MANM', 'WBHM', null, null), 

('m11', 2, '1.05pm', 'WAIM', 'OTAM', null, null), 

('m12', 2, '1.25pm', 'AKLM', 'STHM', null, null), 

('m13', 2, '1.45pm', 'WELM', 'NTHM', null, null), 

('m14', 2, '2.35pm', 'TASM', 'SCBM', null, null), 

('m15', 2, '2.55pm', 'BOPM', 'CANM', null, null), 

('m16', 2, '3.15pm', 'HAWM', 'TARM', null, null), 

('m17', 1, '3.15pm', 'COUM', 'MANM', null, null), 

('m18', 1, '3.35pm', 'NHBM', 'WBHM', null, null), 

('m19', 1, '3.55pm', 'WAIM', 'AKLM', null, null), 

('m20', 1, '4.15pm', 'OTAM', 'STHM', null, null), 

('m21', 1, '4.35pm', 'WELM', 'TASM', null, null), 

('m22', 1, '4.55pm', 'NTHM', 'SCBM', null, null), 

('m23', 1, '5.15pm', 'TARM', 'CANM', null, null), 

('m24', 1, '5.35pm', 'HAWM', 'BOPM', null, null), 

('m25', 2, '10.05am', 'm', 'm', null, null), 

('m26', 2, '10.25am', 'm', 'm', null, null), 

('m27', 2, '10.45am', 'm', 'm', null, null), 

('m28', 2, '11.05am', 'm', 'm', null, null), 

('m29', 1, '11.30am', 'm', 'm', null, null), 

('m30', 1, '11.50am', 'm', 'm', null, null), 

('m31', 1, '12.10pm', 'm', 'm', null, null), 

('m32', 1, '12.30pm', 'm', 'm', null, null), 

('m33', 1, '1.35pm', 'm', 'm', null, null), 

('m34', 2, '1.35pm', 'm', 'm', null, null), 

('m35', 1, '1.55pm', 'm', 'm', null, null), 

('m36', 2, '1.55pm', 'm', 'm', null, null), 

('m37', 1, '2.40pm', 'm', 'm', null, null), 

('m38', 2, '2.40pm', 'm', 'm', null, null), 

('m39', 1, '3.00pm', 'm', 'm', null, null), 

('m40', 2, '3.00pm', 'm', 'm', null, null), 

('m41', 1, '4.15pm', 'm', 'm', null, null), 

('m42', 1, '4.40pm', 'm', 'm', null, null), 

('m43', 1, '5.05pm', 'm', 'm', null, null);




INSERT INTO "game_schedule" VALUES 

('f1', 2, '10.05am', 'WAIF', 'TASF', null, null), 

('f2', 2, '10.25am', 'BOPF', 'HAWF', null, null), 

('f3', 2, '10.45am', 'MANF', 'NHBF', null, null), 

('f4', 2, '11.05am', 'COUF', 'WELF', null, null), 

('f5', 2, '11.25am', 'AKLF', 'TARF', null, null), 

('f6', 2, '11.45am', 'CANF', 'OTAF', null, null), 

('f7', 1, '12.25pm', 'WAIF', 'HAWF', null, null), 

('f8', 1, '1.05pm', 'BOPF', 'TASF', null, null), 

('f9', 1, '1.25pm', 'MANF', 'WELF', null, null), 

('f10', 1, '1.45pm', 'COUF', 'NHBF', null, null), 

('f11', 1, '2.35pm', 'AKLF', 'OTAF', null, null), 

('f12', 1, '2.55pm', 'CANF', 'TARF', null, null), 

('f13', 2, '3.55pm', 'WAIF', 'BOPF', null, null), 

('f14', 2, '4.15pm', 'HAWF', 'TASF', null, null), 

('f15', 2, '4.35pm', 'MANF', 'COUF', null, null), 

('f16', 2, '4.55pm', 'WELF', 'NHBF', null, null), 

('f17', 2, '5.15pm', 'AKLF', 'CANF', null, null), 

('f18', 2, '5.35pm', 'OTAF', 'TARF', null, null), 

('f19', 1, '10.05am', 'f', 'f', null, null), 

('f20', 1, '10.25am', 'f', 'f', null, null), 

('f21', 1, '10.45am', 'f', 'f', null, null), 

('f22', 1, '11.05am', 'f', 'f', null, null), 

('f23', 2, '11.50am', 'f', 'f', null, null), 

('f24', 2, '12.10pm', 'f', 'f', null, null), 

('f25', 1, '12.55pm', 'f', 'f', null, null), 

('f26', 2, '12.55pm', 'f', 'f', null, null), 

('f27', 1, '1.15pm', 'f', 'f', null, null), 

('f28', 2, '1.15pm', 'f', 'f', null, null), 

('f29', 1, '2.20pm', 'f', 'f', null, null), 

('f30', 1, '3.25pm', 'f', 'f', null, null), 

('f31', 2, '3.25pm', 'f', 'f', null, null), 

('f32', 1, '3.50pm', 'f', 'f', null, null), 

('f33', 2, '3.50pm', 'f', 'f', null, null), 

('f34', 1, '5.35pm', 'f', 'f', null, null);



-- TRUNCATE TABLE "teams"

-- Go-



INSERT INTO "teams" VALUES

('COUM', 'A', 'Counties Manukau'),

('MANM', 'A', 'Manawatu'),

('NHBM', 'A', 'North Harbour'),

('WBHM', 'A', 'Wairarapa Bush'),

('WAIM', 'B', 'Waikato'),

('AKLM', 'B', 'Auckland'),

('OTAM', 'B', 'Otago'),

('STHM', 'B', 'Southland'),

('WELM', 'C', 'Wellington'),

('TASM', 'C', 'Tasman'),

('NTHM', 'C', 'Northland'),

('SCBM', 'C', 'South Canterbury'),

('HAWM', 'D', 'Hawke''s Bay'),

('BOPM', 'D', 'Bay of Plenty'),

('TARM', 'D', 'Taranaki'),

('CANM', 'D', 'Canterbury');



INSERT INTO "teams" VALUES 

('AKLF', 'A', 'Auckland'),

('CANF', 'A', 'Canterbury'),

('OTAF', 'A', 'Otago'),

('TARF', 'A', 'Taranaki'),

('MANF', 'B', 'Manawatu'),

('COUF', 'B', 'Counties Manukau'),

('WELF', 'B', 'Wellington'),

('NHBF', 'B', 'North Harbour'),

('WAIF', 'C', 'Waikato'),

('BOPF', 'C', 'Bay of Plenty'),

('HAWF', 'C', 'Hawke''s Bay'),

('TASF', 'C', 'Tasman');



TRUNCATE TABLE "pool_points"

Go



INSERT INTO "pool_points" VALUES 

('COUM', 1, 0),

('WBHM', 1, 0),

('MANM', 2, 0),

('NHB', 2, 0),

('WAIM', 3, 0),

('STHM', 3, 0),

('AKLM', 4, 0),

('OTAM', 4, 0),

('WELM', 5, 0),

('SCBM', 5, 0),

('TASM', 6, 0),

('NTHM', 6, 0),

('HAWM', 7, 0),

('CANM', 7, 0),

('BOPM', 8, 0),

('TARM', 8, 0),

('COUM', 9, 0),

('NHBM', 9, 0),

('MANM', 10, 0),

('WBHM', 10, 0),

('WAIM', 11, 0),

('OTAM', 11, 0),

('AKLM', 12, 0),

('STHM', 12, 0),

('WELM', 13, 0),

('NTHM', 13, 0),

('TASM', 14, 0),

('SCBM', 14, 0),

('BOPM', 15, 0),

('CANM', 15, 0),

('HAWM', 16, 0),

('TARM', 16, 0),

('COUM', 17, 0),

('MANM', 17, 0),

('NHBM', 18, 0),

('WBHM', 18, 0),

('WAIM', 19, 0),

('AKLM', 19, 0),

('OTAM', 20, 0),

('STHM', 20, 0),

('WELM', 21, 0),

('TASM', 21, 0),

('NTHM', 22, 0),

('SCBM', 22, 0),

('TARM', 23, 0),

('CANM', 23, 0),

('HAWM', 24, 0),

('BOPM', 24, 0);



INSERT INTO "pool_points" VALUES 

('WAIF', 1, 0),

('TASF', 1, 0),

('BOPF', 2, 0),

('HAWF', 2, 0),

('MANF', 3, 0),

('NHBF', 3, 0),

('COUF', 4, 0),

('WELF', 4, 0),

('AKLF', 5, 0),

('TARF', 5, 0),

('CANF', 6, 0),

('OTAF', 6, 0),

('WAIF', 7, 0),

('HAWF', 7, 0),

('BOPF', 8, 0),

('TASF', 8, 0),

('MANF', 9, 0),

('WELF', 9, 0),

('COUF', 10, 0),

('NHBF', 10, 0),

('AKLF', 11, 0),

('OTAF', 11, 0),

('CANF', 12, 0),

('TARF', 12, 0),

('WAIF', 13, 0),

('BOPF', 13, 0),

('HAWF', 14, 0),

('TASF', 14, 0),

('MANF', 15, 0),

('COUF', 15, 0),

('WELF', 16, 0),

('NHBF', 16, 0),

('AKL', 17, 0),

('CANF', 17, 0),

('OTAF', 18, 0),

('TARF', 18, 0);