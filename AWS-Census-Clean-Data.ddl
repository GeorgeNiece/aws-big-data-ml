CREATE EXTERNAL TABLE `census_data_clean`(
  `age` bigint, 
  `workclass` string, 
  `education` string, 
  `relationship` string, 
  `occupation` string, 
  `country` string, 
  `income_cat` string
 )
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://aws-big-data-emr-glue-spark/census_clean_data'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='census-crawler', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='126', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='31542', 
  'sizeKey'='3974305', 
  'typeOfData'='file')

SHOW CREATE TABLE census_data_clean;

