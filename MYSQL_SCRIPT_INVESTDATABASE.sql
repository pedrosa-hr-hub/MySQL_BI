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