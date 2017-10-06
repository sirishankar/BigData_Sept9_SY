Create external table if not exists consumer_data(
	DateReceived DATE,
	Product STRING,
	SubProduct STRING,
	Issue STRING,
	SubIssue STRING,
	ConsumerComplaintNarrative STRING,
	CompanyPublicResponse STRING,
	Company STRING,
	State STRING,
	ZipCode STRING,
	Tags String,
	ConsumerConsentProvided? BOOLEAN,
	Submitted_Via STRING,
	DateSentToCompany DATE,
	CompanyResponseToConsumer STRING,
	TimelyResponse? BOOLEAN,
	ConsumerDisputed? BOOLEAN,
	ComplaintId INT
) 
Row format SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
	WITH SERDEPROPERTIES(
		"seperatorChar" = ",",
		"quoteChar" = "\"",
		"escapeChar" = "\\r",
		"serialization.escape.crlf" = "true"
	)
STORED AS TEXTFILE
LOCATION '/user/ubuntu/data/raw/consumer_data_raw'
tblproperties ("skip.header.line.count"="1");