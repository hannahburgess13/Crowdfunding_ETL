DROP TABLE category;

CREATE TABLE category (
    category_id VARCHAR(100)   NOT NULL,
    category VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

SELECT * FROM category;

DROP TABLE subcategory;

CREATE TABLE subcategory (
    subcategory_id VARCHAR(100)   NOT NULL,
    subcategory VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

SELECT * FROM subcategory;

DROP TABLE contacts;

CREATE TABLE contacts (
    contact_id INT   NOT NULL,
    first_name VARCHAR(100)   NOT NULL,
    last_name VARCHAR(100)   NOT NULL,
    email VARCHAR(100)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

SELECT * FROM contacts

DROP TABLE campaign;

CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(100)   NOT NULL,
    description VARCHAR(100)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(100)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(100)   NOT NULL,
    currency VARCHAR(100)   NOT NULL,
    launched_date VARCHAR(100)   NOT NULL,
    end_date VARCHAR(100)   NOT NULL,
    category_id VARCHAR(100)   NOT NULL,
    subcategory_id VARCHAR(100)   NOT NULL
);

SELECT * FROM campaign

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");