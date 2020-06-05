-- Creating tables to prepare for file import.

-- BUILDING PERMIT APPLICATIONS
CREATE TABLE bldg_permit_apps (
    permit_number varchar(20) NOT NULL
    , permit_type_desc varchar(50) NOT NULL
    , permit_subtype_desc varchar(50) NOT NULL
    , parcel varchar(20) NOT NULL
    , date_entered date NOT NULL
    , date_issued date NULL
    , construction_cost money NULL
    , address varchar(40) NOT NULL
    , city varchar(20) NOT NULL
    , st varchar(2) NOT NULL
    , zip varchar(5) NOT NULL
    , subdivision_lot varchar(110) NULL
    , contact varchar(70) NULL
    , permit_type varchar(4) NOT NULL
    , permit_subtype varchar(10) NOT NULL
    , IVR_tracking_number varchar(10) NOT NULL
    , purpose varchar(2200) NULL
    , council_district smallint NULL
    , mapped_location varchar(90) NULL
)

SELECT * 
FROM bldg_permit_apps
LIMIT 5;	

-- BUILDING PERMITS ISSUED
CREATE TABLE bldg_permits_issued (
	permit_number varchar(15) NOT NULL
	, permit_type_desc varchar(40) NOT NULL
	, permit_subtype_desc varchar(40) NOT NULL
	, parcel varchar(20) NULL
	, date_entered date NOT NULL
	, date_issued date NOT NULL
	, construction_cost money NULL
	, address varchar(40) NOT NULL
	, city varchar(20) NOT NULL
	, st varchar(2) NOT NULL
	, zip varchar(5) NOT NULL
	, subdivision_lot varchar(110) NULL
	, contact varchar(70) NULL
	, permit_type varchar(4) NOT NULL
	, permit_subtype varchar(10) NOT NULL
	, IVR_tracking_number varchar(10) NOT NULL
	, purpose varchar(2200) NULL
	, council_district smallint NULL
	, census_tract varchar(11) NULL
	, mapped_location varchar(90) NULL
)


