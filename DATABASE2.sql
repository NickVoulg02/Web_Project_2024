CREATE TABLE citizen(
    cit_name VARCHAR(20)NOT NULL,
    cit_laname VARCHAR(20) NOT NULL,
    cit_id INT NOT NULL AUTO_INCREMENT,
    location INT NOT NULL, 
    cit_username VARCHAR(20) NOT NULL,
    cit_password VARCHAR(50) NOT NULL,
    PRIMARY KEY(cit_id)
	);

CREATE TABLE volunteer(
    vol_name VARCHAR(20) NOT NULL,
    vol_lname VARCHAR(20) NOT NULL,
    vol_id INT NOT NULL AUTO_INCREMENT,
    location INT NOT NULL, 
    vol_username VARCHAR(20) NOT NULL,
    vol_password VARCHAR(50) NOT NULL,
    PRIMARY KEY(vol_id)
	);

CREATE TABLE categories(
    cat_id INT NOT NULL AUTO_INCREMENT,
    cat_name VARCHAR(30) NOT NULL,
    PRIMARY KEY(cat_id)
    );
	
CREATE TABLE product(
    pr_name VARCHAR(50) NOT NULL,
    pr_id INT NOT NULL AUTO_INCREMENT,
    pr_cat_id INT NOT NULL,
    detail_name VARCHAR(50),
    detail_value INT,
    PRIMARY KEY(pr_id, pr_cat_id),
    CONSTRAINT PRODUCTCATEGORY FOREIGN KEY (pr_cat_id)
    REFERENCES categories(cat_id)
    ON DELETE CASCADE ON UPDATE CASCADE
    );
	
CREATE TABLE demands(
    dem_id INT NOT NULL AUTO_INCREMENT,
    dem_cit_id INT NOT NULL,
    dem_pr_id INT NOT NULL,
    dem_type ENUM('request','donation') NOT NULL,
    PRIMARY KEY(dem_id, dem_cit_id, dem_pr_id),
    CONSTRAINT DEMPROD FOREIGN KEY(dem_pr_id)
    REFERENCES product(pr_id)
    ON DELETE CASCADE ON UPDATE CASCADE, 
    CONSTRAINT DEMCIT FOREIGN KEY(dem_cit_id)
    REFERENCES citizen(cit_id)
    ON DELETE CASCADE ON UPDATE CASCADE
    );
	
CREATE TABLE task(
    task_id INT NOT NULL AUTO_INCREMENT,
    task_dem_id INT NOT NULL,
    task_submission_date DATETIME NOT NULL,
    task_acceptance_date DATETIME,
    task_completion_date DATETIME,
    task_status ENUM('Complete','Not Complete') NOT NULL,
    PRIMARY KEY(task_id, task_dem_id),
    CONSTRAINT TASKDEM FOREIGN KEY(task_dem_id)
    REFERENCES demands(dem_id)
    ON DELETE CASCADE ON UPDATE CASCADE
    );
	
CREATE TABLE accepts(
    acc_vol_id INT NOT NULL,
    acc_task_id INT NOT NULL,
    PRIMARY KEY(acc_vol_id, acc_task_id),
    CONSTRAINT ACCEPTTASK FOREIGN KEY(acc_task_id)
    REFERENCES task(task_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT VOLTASK FOREIGN KEY(acc_vol_id)
    REFERENCES volunteer(vol_id)
    ON DELETE CASCADE ON UPDATE CASCADE
    );
	
CREATE TABLE vehicle(
    veh_id INT NOT NULL AUTO_INCREMENT,
    veh_vol_id INT NOT NULL,
    veh_location INT NOT NULL,
    veh_task_num INT NOT NULL,
    PRIMARY KEY(veh_id, veh_vol_id),
    CONSTRAINT VEHICLEVOL FOREIGN KEY(veh_vol_id)
    REFERENCES volunteer(vol_id)
    ON DELETE CASCADE ON UPDATE CASCADE
    );
	
CREATE TABLE veh_load(
    veh_load_id INT NOT NULL,
    veh_load_prod INT NOT NULL,
    PRIMARY KEY(veh_load_id, veh_load_prod),
    CONSTRAINT VEHICLELOAD FOREIGN KEY(veh_load_id)
    REFERENCES vehicle(veh_id)
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT LOADPRODUCT FOREIGN KEY(veh_load_prod)
    REFERENCES product(pr_id)
    ON DELETE CASCADE ON UPDATE CASCADE
    );
	
INSERT INTO volunteer VALUES('Emmanuel', 'Moratti', NULL , 150, 'emmo', 'ytrfgbgf');
INSERT INTO volunteer VALUES('Gina', 'Norton', NULL , 560, 'ginorton', 'gffg5tr');
INSERT INTO volunteer VALUES('Marc', 'Kein', NULL , 321, 'markkennei', 'hgfnf6543');
INSERT INTO volunteer VALUES('Louise', 'Peterson', NULL , 540, 'louipetr', 'ghfefgb43');
INSERT INTO volunteer VALUES('Chris', 'Colman', NULL , 760, 'chircol', '54323');

INSERT INTO citizen VALUES('Sergei', 'Kristov', NULL , 340, 'sergkrist', '4532432');
INSERT INTO citizen VALUES('George', 'Erin', NULL , 345, 'georgerin', '65433rthgr');
INSERT INTO citizen VALUES('Jonas', 'Burgmann', NULL , 432, 'jonburg', 'nbbgf5');
INSERT INTO citizen VALUES('Keina', 'Moss', NULL , 654, 'keinamoss', '445543');
INSERT INTO citizen VALUES('Nikolas', 'Mescal', NULL , 123, 'nikolmescal', '4trdxvc');

INSERT INTO categories VALUES(NULL, 'FOOD');
INSERT INTO categories VALUES(NULL, 'BEVERAGES');
INSERT INTO categories VALUES(NULL, 'MEDICAL_SUPPLIES');
INSERT INTO categories VALUES(NULL, 'CLOTHING');

INSERT INTO product VALUES('Water', NULL, 2, 'Bottles', 2);
INSERT INTO product VALUES('Milk', NULL, 2, 'Bottles', 1);
INSERT INTO product VALUES('Shirt', NULL, 4, 'Piece', 1);
INSERT INTO product VALUES('Depon', NULL, 3, 'Pills', 2);
INSERT INTO product VALUES('Grilled Steak', NULL, 2, 'Portion', 1);
INSERT INTO product VALUES('Rice', NULL, 2, 'Portion', 1);

INSERT INTO demands VALUES(NULL, 2, 2, 'request');
INSERT INTO demands VALUES(NULL, 1, 4, 'donation');

INSERT INTO task VALUES(NULL, 1, CURRENT_TIMESTAMP, NULL, NULL, 'Not Complete')
INSERT INTO task VALUES(NULL, 2, CURRENT_TIMESTAMP, NULL, NULL, 'Not Complete')

INSERT INTO vehicle VALUES(NULL, 2, 150, 0);
INSERT INTO vehicle VALUES(NULL, 3, 250, 0);
INSERT INTO vehicle VALUES(NULL, 5, 300, 0);
INSERT INTO vehicle VALUES(NULL, 1, 450, 0);

INSERT INTO demands VALUES(NULL, 1, 4, 'request');
INSERT INTO task VALUES(NULL, 2,'2023-11-11 13:23:44','2023-12-16 13:23:44',CURRENT_TIMESTAMP,'Completed');