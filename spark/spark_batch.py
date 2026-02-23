from pyspark.sql import SparkSession

def run_batch_processing():
    spark = SparkSession.builder \
        .appName("UniversityBatchProcessing") \
        .getOrCreate()

    df = spark.read.csv("data/student_performance.csv", header=True, inferSchema=True)

    df.groupBy("department").avg("marks").show()

    spark.stop()

if __name__ == "__main__":
    run_batch_processing()