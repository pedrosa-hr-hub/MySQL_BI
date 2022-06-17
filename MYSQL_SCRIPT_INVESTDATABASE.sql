CREATE DATABASE invest;

/* =========================================================================== */

USE invest;	/*usar toda vez antes de operação*/

/* =========================================================================== */

SELECT * FROM INVESTMENTS;

/* =========================================================================== */

CREATE VIEW VW_INDEX AS
SELECT TICKER, TITLE, NAME_INVESTMENT, PRICE_ACTUAL, CATEGORY_INVESTMENT FROM INVESTMENTS 
	WHERE CATEGORY_INVESTMENT = "INDEX";

/* =========================================================================== */

CREATE VIEW VW_STOCK AS
SELECT TICKER, TITLE, NAME_INVESTMENT, PRICE_ACTUAL, CATEGORY_INVESTMENT FROM INVESTMENTS
	WHERE CATEGORY_INVESTMENT = "AÇÃO";

/* =========================================================================== */

CREATE VIEW VW_FII AS
SELECT TICKER, TITLE, NAME_INVESTMENT, PRICE_ACTUAL, CATEGORY_INVESTMENT FROM INVESTMENTS
	WHERE CATEGORY_INVESTMENT = "FII";

/* =========================================================================== */