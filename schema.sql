-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/HhowHr
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Bigfoot_Sighting" (
    "number" float   NOT NULL,
    "date" varchar   NOT NULL,
    "county" varchar   NOT NULL,
    "state" string   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    "observed" varchar   NOT NULL,
    CONSTRAINT "pk_Bigfoot_Sighting" PRIMARY KEY (
        "number"
     )
);

-- 'datetime', 'city', 'state', 'country', 'latitude', 'longitude', 'comments'
CREATE TABLE "UFO_Sighting" (
    "ID" serial   NOT NULL,
    "datetime" string   NOT NULL,
    "state" string   NOT NULL,
    "country" string   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    "comments" varchar   NOT NULL,
    CONSTRAINT "pk_UFO_Sighting" PRIMARY KEY (
        "ID"
     )
);

