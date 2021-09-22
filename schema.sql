-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/HhowHr
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).


CREATE TABLE "Bigfoot_Sighting" (
    "number" float   NOT NULL,
    "date" date  NOT NULL,
    "county" varchar   NOT NULL,
    "state" varchar   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    "observed" varchar   NOT NULL,
    CONSTRAINT "pk_Bigfoot_Sighting" PRIMARY KEY (
        "number"
     )
);

DROP TABLE "UFO_Sighting";

CREATE TABLE "UFO_Sighting" (
    "ID" serial   NOT NULL,
    "date" date,
	"city" varchar,
    "state" varchar,
    "country" varchar,
    "latitude" float,
    "longitude" float,
    "comments" varchar,
    CONSTRAINT "pk_UFO_Sighting" PRIMARY KEY (
        "ID"
     )
);


Select 