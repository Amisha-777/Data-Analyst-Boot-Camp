import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job
from awsgluedq.transforms import EvaluateDataQuality
from awsglue.dynamicframe import DynamicFrame
from awsglue import DynamicFrame
from pyspark.sql import functions as SqlFuncs

def sparkUnion(glueContext, unionType, mapping, transformation_ctx) -> DynamicFrame:
    for alias, frame in mapping.items():
        frame.toDF().createOrReplaceTempView(alias)
    result = spark.sql("(select * from source1) UNION " + unionType + " (select * from source2)")
    return DynamicFrame.fromDF(result, glueContext, transformation_ctx)
def sparkAggregate(glueContext, parentFrame, groups, aggs, transformation_ctx) -> DynamicFrame:
    aggsFuncs = []
    for column, func in aggs:
        aggsFuncs.append(getattr(SqlFuncs, func)(column))
    result = parentFrame.toDF().groupBy(*groups).agg(*aggsFuncs) if len(groups) > 0 else parentFrame.toDF().agg(*aggsFuncs)
    return DynamicFrame.fromDF(result, glueContext, transformation_ctx)

args = getResolvedOptions(sys.argv, ['JOB_NAME'])
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args['JOB_NAME'], args)

# Default ruleset used by all target nodes with data quality enabled
DEFAULT_DATA_QUALITY_RULESET = """
    Rules = [
        ColumnCount > 0
    ]
"""

# Script generated for node Patient Data 1
PatientData1_node1739215180906 = glueContext.create_dynamic_frame.from_options(format_options={"quoteChar": "\"", "withHeader": True, "separator": ",", "optimizePerformance": False}, connection_type="s3", format="csv", connection_options={"paths": ["s3://dataanalystcampbucket/patient_data/RealHealthcareData1.csv"]}, transformation_ctx="PatientData1_node1739215180906")

# Script generated for node Patient Data 2
PatientData2_node1739215426659 = glueContext.create_dynamic_frame.from_options(format_options={"quoteChar": "\"", "withHeader": True, "separator": ",", "optimizePerformance": False}, connection_type="s3", format="csv", connection_options={"paths": ["s3://dataanalystcampbucket/patient_data/RealHealthcareData2.csv"], "recurse": True}, transformation_ctx="PatientData2_node1739215426659")

# Script generated for node Union
Union_node1739215517298 = sparkUnion(glueContext, unionType = "ALL", mapping = {"source1": PatientData2_node1739215426659, "source2": PatientData1_node1739215180906}, transformation_ctx = "Union_node1739215517298")

# Script generated for node Change Schema
ChangeSchema_node1739215945242 = ApplyMapping.apply(frame=Union_node1739215517298, mappings=[("patient id", "string", "patient id", "string"), ("name", "string", "name", "string"), ("age", "string", "age", "string"), ("diagnosis", "string", "diagnosis", "string"), ("treatment", "string", "treatment", "string"), ("files", "string", "files", "string")], transformation_ctx="ChangeSchema_node1739215945242")

# Script generated for node Aggregate
Aggregate_node1739215837227 = sparkAggregate(glueContext, parentFrame = ChangeSchema_node1739215945242, groups = ["diagnosis"], aggs = [["age", "avg"]], transformation_ctx = "Aggregate_node1739215837227")

# Script generated for node Amazon S3
EvaluateDataQuality().process_rows(frame=Aggregate_node1739215837227, ruleset=DEFAULT_DATA_QUALITY_RULESET, publishing_options={"dataQualityEvaluationContext": "EvaluateDataQuality_node1739215055593", "enableDataQualityResultsPublishing": True}, additional_options={"dataQualityResultsPublishing.strategy": "BEST_EFFORT", "observations.scope": "ALL"})
AmazonS3_node1739215709293 = glueContext.getSink(path="s3://dataanalystcampbucket", connection_type="s3", updateBehavior="LOG", partitionKeys=[], enableUpdateCatalog=True, transformation_ctx="AmazonS3_node1739215709293")
AmazonS3_node1739215709293.setCatalogInfo(catalogDatabase="heathcaredata",catalogTableName="ETL_Patient_Data")
AmazonS3_node1739215709293.setFormat("glueparquet", compression="snappy")
AmazonS3_node1739215709293.writeFrame(Aggregate_node1739215837227)
job.commit()