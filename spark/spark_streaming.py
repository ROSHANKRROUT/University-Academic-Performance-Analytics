from pyspark.sql import SparkSession

def run_streaming():
    spark = SparkSession.builder \
        .appName("UniversityStreaming") \
        .getOrCreate()

    df = spark.readStream \
        .format("csv") \
        .option("header", True) \
        .load("stream_data/")

    query = df.writeStream \
        .outputMode("append") \
        .format("console") \
        .start()

    query.awaitTermination()

if __name__ == "__main__":
    run_streaming()