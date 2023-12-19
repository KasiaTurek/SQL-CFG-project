use superstore_usa;
select * from sales where order_id = 152156;
select count(item_id) from sales;
select * from sales;
ALTER TABLE sales   
MODIFY item_id INT;  

INSERT INTO sales
(item_id, order_id, customer_id, product_id, sales_amount, quantity, discount, profit, margin)
VALUES 
(9921, 149272, 552, 'OFF-BI-10004233', 22.39, 7, 0.8, -35.82, -11.20),
(9922, 111360, 29, 'OFF-BI-10003350', 5.74, 3, 0.7, -4.59, -2.4),
(9923, 162124, 365, 'TEC-AC-10001990', 191.97, 4, 0.2, 28.8, 0.6),
(9924, 159534, 204, 'OFF-BI-10003982', 49.85, 3, 0.2, 16.82, 1.01),
(9925, 159534, 204, 'OFF-EN-10004386', 23.99, 1, 0, 12, 0.5),
(9926, 159534, 204, 'OFF-BI-10003656', 1087.94, 8, 0.2, 353.58, 2.6),
(9927, 159534, 204, 'TEC-PH-10002310', 199.98, 2, 0, 53.99, 0.54),
(9928, 159534, 204, 'OFF-ST-10001172', 83.92, 4, 0, 20.14, 0.96),
(9929, 129630, 336, 'FUR-FU-10000260', 24.27, 3, 0, 8.74, 1.08),
(9930, 129630, 336, 'TEC-CO-10003763', 2799.96, 5, 0.2, 944.99, 1.69),
(9931, 104948, 433, 'OFF-BI-10001267', 9.87, 2, 0.2, 3.46, 0.7),
(9932, 104948, 433, 'FUR-BO-10004357', 683.33, 4, 0.15, -40.2, -0.24),
(9933, 104948, 433, 'OFF-PA-10004610', 29.96, 7, 0, 13.48, 3.15),
(9934, 166555, 346, 'TEC-PH-10004912', 164.85, 3, 0, 47.81, 0.87),
(9935, 114405, 16, 'OFF-AP-10003278', 33.53, 3, 0.2, 2.51, 0.22),
(9936, 114405, 16, 'OFF-ST-10001627', 36.74, 3, 0.2, 3.67, 0.3),
(9937, 132955, 704, 'OFF-BI-10002735', 102.93, 3, 0, 48.38, 1.41),
(9938, 164889, 155, 'FUR-TA-10001676', 71.09, 2, 0.2, -1.78, -0.05),
(9939, 169824, 575, 'FUR-FU-10004864', 60.35, 5, 0, 19.92, 1.65),
(9940, 169824, 575, 'OFF-SU-10000952', 35.52, 4, 0, 9.95, 1.12),
(9941, 169824, 575, 'OFF-AR-10000462', 11.2, 7, 0, 4.82, 3.01),
(9942, 164028, 388, 'TEC-AC-10001772', 223.58, 14, 0, 87.2, 5.46),
(9943, 143371, 489, 'OFF-ST-10001128', 998.82, 9, 0, 29.96, 0.27),
(9944, 143371, 489, 'OFF-SU-10002537', 51.15, 5, 0, 13.3, 1.3),
(9945, 145415, 643, 'OFF-ST-10000419', 40.74, 3, 0, 0.41, 0.03),
(9946, 111157, 573, 'OFF-PA-10000327', 3.42, 1, 0.2, 1.07, 0.31),
(9947, 111157, 573, 'TEC-AC-10004353', 151.2, 3, 0.2, 32.13, 0.64),
(9948, 121559, 328, 'FUR-CH-10003746', 1925.88, 6, 0, 539.25, 1.68),
(9949, 121559, 328, 'OFF-AP-10002945', 2405.2, 8, 0, 793.72, 2.64),
(9950, 121559, 328, 'TEC-AC-10004568', 83.97, 3, 0, 15.95, 0.57),
(9951, 121559, 328, 'TEC-AC-10001714', 39.89, 1, 0, 14.76, 0.37),
(9952, 121559, 328, 'OFF-BI-10002072', 17.38, 2, 0, 8.69, 1),
(9953, 141593, 197, 'OFF-BI-10001153', 55.26, 2, 0.2, 20.72, 0.75),
(9954, 141593, 197, 'OFF-PA-10004983', 6.48, 1, 0, 3.11, 0.48),
(9955, 141593, 197, 'OFF-BI-10000948', 34.25, 3, 0.2, 11.56, 1.01),
(9956, 141593, 197, 'FUR-TA-10002622', 273.57, 2, 0.2, 10.26, 0.08),
(9957, 143287, 446, 'OFF-PA-10001776', 46.35, 5, 0, 21.78, 2.35),
(9958, 143287, 446, 'OFF-PA-10004039', 223.92, 4, 0, 109.72, 1.96),
(9959, 143287, 446, 'OFF-SU-10001574', 7.3, 2, 0, 2.19, 0.6),
(9960, 137421, 63, 'OFF-AR-10001761', 9.34, 2, 0.2, 1.87, 0.4),
(9961, 141446, 179, 'TEC-AC-10002305', 18, 1, 0, 3.24, 0.18),
(9962, 168088, 176, 'OFF-PA-10000675', 65.58, 2, 0.2, 23.77, 0.72),
(9963, 168088, 176, 'FUR-BO-10004218', 383.47, 4, 0.32, -67.67, -0.71),
(9964, 143700, 16, 'OFF-PA-10003072', 10.37, 2, 0.2, 3.63, 0.7),
(9965, 146374, 319, 'FUR-FU-10002671', 13.4, 1, 0, 6.43, 0.48),
(9966, 146374, 319, 'OFF-PA-10000349', 4.98, 1, 0, 2.34, 0.47),
(9967, 146374, 319, 'OFF-EN-10004483', 109.69, 7, 0, 51.55, 3.29),
(9968, 153871, 628, 'OFF-BI-10004209', 40.2, 5, 0, 18.09, 2.25),
(9969, 153871, 628, 'OFF-BI-10004600', 735.98, 2, 0, 331.19, 0.9),
(9970, 153871, 628, 'OFF-AP-10003622', 22.75, 7, 0, 6.6, 2.03),
(9971, 103772, 497, 'OFF-BI-10002867', 119.56, 2, 0, 55, 0.92),
(9972, 103772, 497, 'OFF-AR-10000538', 140.75, 5, 0, 42.23, 1.5),
(9973, 130225, 663, 'OFF-EN-10000056', 99.57, 2, 0.2, 33.6, 0.67),
(9974, 103674, 48, 'TEC-PH-10004080', 271.96, 5, 0.2, 27.2, 0.5),
(9975, 103674, 48, 'OFF-AR-10004752', 18.69, 7, 0, 5.23, 1.96),
(9976, 103674, 48, 'OFF-PA-10000743', 13.36, 2, 0, 6.41, 0.96),
(9977, 103674, 48, 'TEC-PH-10002496', 249.58, 2, 0.2, 31.2, 0.25),
(9978, 103674, 48, 'OFF-FA-10003467', 13.86, 7, 0, 0, 0),
(9979, 103674, 48, 'OFF-BI-10003727', 13.38, 4, 0.2, 4.68, 1.4),
(9980, 103674, 48, 'OFF-BI-10002026', 437.47, 14, 0.2, 153.12, 4.9),
(9981, 151435, 696, 'FUR-TA-10001039', 85.98, 1, 0, 22.35, 0.26),
(9982, 163566, 736, 'OFF-LA-10004484', 16.52, 5, 0.2, 5.37, 1.63),
(9983, 157728, 663, 'OFF-PA-10002195', 35.56, 7, 0, 16.71, 3.29),
(9984, 157728, 663, 'TEC-PH-10001305', 97.98, 2, 0, 27.43, 0.56),
(9985, 100251, 230, 'OFF-LA-10003766', 31.5, 10, 0, 15.12, 4.8),
(9986, 100251, 230, 'OFF-SU-10000898', 55.6, 4, 0, 16.12, 1.16),
(9987, 125794, 493, 'TEC-AC-10003399', 36.24, 1, 0, 15.22, 0.42),
(9988, 163629, 658, 'TEC-AC-10001539', 79.99, 1, 0, 28.8, 0.36),
(9989, 163629, 658, 'TEC-PH-10004006', 206.1, 5, 0, 55.65, 1.35),
(9990, 110422, 759, 'FUR-FU-10001889', 25.25, 3, 0.2, 4.1, 0.49),
(9991, 121258, 203, 'FUR-FU-10000747', 91.96, 2, 0, 15.63, 0.34),
(9992, 121258, 203, 'TEC-PH-10003645', 258.58, 2, 0.2, 19.39, 0.15),
(9993, 121258, 203, 'OFF-PA-10004041', 29.6, 4, 0, 13.32, 1.8),
(9994, 119914, 147, 'OFF-AP-10002684', 243.16, 2, 0, 72.95, 0.6);