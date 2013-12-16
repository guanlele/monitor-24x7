--
-- Table structure for table EXCEPTION_LOGGER
--

--DROP TABLE IF EXISTS EXCEPTION_LOGGER;
CREATE TABLE IF NOT EXISTS EXCEPTION_LOGGER (
  ID bigint(20) PRIMARY KEY AUTO_INCREMENT,
  EXCEPTION_MESSAGE longtext NOT NULL,
  STACKTRACE longtext NOT NULL,
  CREATION_DATE DATETIME NOT NULL
) ;

CREATE INDEX IF NOT EXISTS EXP_DATE_INDEX ON EXCEPTION_LOGGER(CREATION_DATE);



-- --------------------------------------------------------

--
-- Table structure for table HTTP_REQUESTS
--

--DROP TABLE IF EXISTS HTTP_REQUESTS;
CREATE TABLE IF NOT EXISTS HTTP_REQUESTS (
  REQUEST varchar(500) PRIMARY KEY
);

-- --------------------------------------------------------

--
-- Table structure for table MANAGED_ALERTS
--

--DROP TABLE IF EXISTS MANAGED_ALERTS;
CREATE TABLE IF NOT EXISTS MANAGED_ALERTS (
  ID bigint(20) PRIMARY KEY AUTO_INCREMENT,
  ITEM_NAME varchar(500) NOT NULL,
  ITEM_TYPE varchar(500) NOT NULL,
  THRESHOLD bigint(20) NOT NULL,
  TIME_TO_ALERT_IN_MINS int(11) NOT NULL,
  ALERT_EMAIL varchar(100) NOT NULL,
  ALERT_SMS varchar(50) DEFAULT NULL,
  ENABLED int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table METHOD_SIGNATURES
--

--DROP TABLE IF EXISTS METHOD_SIGNATURES;
CREATE TABLE IF NOT EXISTS METHOD_SIGNATURES (
  METHOD_SIGNATURE varchar(500) PRIMARY KEY
);

-- --------------------------------------------------------

--
-- Table structure for table MONITORED_ITEM_TRACER
--

--DROP TABLE IF EXISTS MONITORED_ITEM_TRACER;
CREATE TABLE IF NOT EXISTS MONITORED_ITEM_TRACER (
  ID bigint(20) PRIMARY KEY AUTO_INCREMENT,
  ITEM_NAME varchar(20000) DEFAULT NULL,
  TYPE varchar(50) NOT NULL,
  AVERAGE float NOT NULL,
  MIN bigint(20) NOT NULL,
  MAX bigint(20) NOT NULL,
  COUNT bigint(20) NOT NULL,
  CREATION_DATE DATETIME NOT NULL
);

CREATE INDEX IF NOT EXISTS TRACER_DATE_INDEX ON MONITORED_ITEM_TRACER(CREATION_DATE);
CREATE INDEX IF NOT EXISTS TRACER_AVERAGE_INDEX ON MONITORED_ITEM_TRACER(AVERAGE);
CREATE INDEX IF NOT EXISTS TRACER_NAME_INDEX ON MONITORED_ITEM_TRACER(ITEM_NAME);
CREATE INDEX IF NOT EXISTS TRACER_TYPE_INDEX ON MONITORED_ITEM_TRACER(TYPE);

-- --------------------------------------------------------

--
-- Table structure for table REPORT_SCHEDULE
--

--DROP TABLE IF EXISTS REPORT_SCHEDULE;
CREATE TABLE IF NOT EXISTS REPORT_SCHEDULE (
  ID bigint(20) PRIMARY KEY AUTO_INCREMENT,
  ITEM_NAME varchar(500) NOT NULL,
  ITEM_TYPE varchar(500) NOT NULL,
  FREQUENCY varchar(100) NOT NULL,
  DAY_OF_MONTH int(11) NOT NULL,
  DAY_OF_WEEK int(11) NOT NULL,
  REPORT_HOUR int(11) NOT NULL,
  REPORT_MINUTE int(11) NOT NULL,
  REPORT_EMAIL varchar(100) NOT NULL,
  ENABLED int(11) NOT NULL,
);

-- --------------------------------------------------------

--
-- Table structure for table SQL_QUERIES
--

--DROP TABLE IF EXISTS SQL_QUERIES;
CREATE TABLE IF NOT EXISTS SQL_QUERIES (
  SQL_QUERY varchar(20000) PRIMARY KEY
) ;
