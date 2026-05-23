CREATE DATABASE IF NOT EXISTS ebms;
USE ebms;

/* CUSTOMER TABLE */

DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    state VARCHAR(30) NOT NULL,
    city VARCHAR(30) NOT NULL,
    pincode INT NOT NULL
);

/* ACCOUNT TABLE */

DROP TABLE IF EXISTS account;

CREATE TABLE account (
    acc_id INT PRIMARY KEY,
    cust_id INT NOT NULL,
    account_no VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(50) NOT NULL,

    FOREIGN KEY (cust_id)
    REFERENCES customer(cust_id)
);

/* ADMIN TABLE */

DROP TABLE IF EXISTS admin;

CREATE TABLE admin (
    admin_id INT PRIMARY KEY,
    admin_name VARCHAR(50) NOT NULL,
    cust_id INT,

    FOREIGN KEY (cust_id)
    REFERENCES customer(cust_id)
);

/* ELECTRICITY BOARD TABLE */

DROP TABLE IF EXISTS elec_board;

CREATE TABLE elec_board (
    eboard_id INT PRIMARY KEY,
    board_name VARCHAR(50) NOT NULL
);

/* TARIFF TABLE */

DROP TABLE IF EXISTS tariff;

CREATE TABLE tariff (
    tariff_id INT PRIMARY KEY,
    tariff_type VARCHAR(50) NOT NULL
);

/* BILLING TABLE */

DROP TABLE IF EXISTS billing;

CREATE TABLE billing (
    meter_number VARCHAR(10) PRIMARY KEY,
    acc_id INT NOT NULL,
    cust_id INT NOT NULL,
    monthly_units INT NOT NULL,
    amount_per_unit INT NOT NULL,

    total_amount INT
    GENERATED ALWAYS AS (monthly_units * amount_per_unit) STORED,

    FOREIGN KEY (acc_id)
    REFERENCES account(acc_id),

    FOREIGN KEY (cust_id)
    REFERENCES customer(cust_id)
);

/* INVOICE TABLE */

DROP TABLE IF EXISTS invoice;

CREATE TABLE invoice (
    invoice_id INT PRIMARY KEY,
    eboard_id INT NOT NULL,
    account_no VARCHAR(50) NOT NULL,
    tariff_id INT NOT NULL,
    reading_date DATE NOT NULL,
    meter_number VARCHAR(10) NOT NULL,

    FOREIGN KEY (eboard_id)
    REFERENCES elec_board(eboard_id),

    FOREIGN KEY (tariff_id)
    REFERENCES tariff(tariff_id),

    FOREIGN KEY (meter_number)
    REFERENCES billing(meter_number)
);