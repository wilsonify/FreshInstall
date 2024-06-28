echo "download spark"
curl -O https://mirrors.sonic.net/apache/spark/spark-3.0.1/spark-3.0.1-bin-hadoop2.7.tgz
curl -O https://archive.apache.org/dist/hadoop/common/hadoop-2.7.7/hadoop-2.7.7.tar.gz

tar xzf spark-3.0.1-bin-hadoop2.7.tgz
tar xzf hadoop-2.7.7.tar.gz

echo "install spark"
SPARK_HOME=/opt/spark-3.0.1
sudo mkdir $SPARK_HOME
sudo mv spark-3.0.1-bin-hadoop2.7/* $SPARK_HOME
export SPARK_HOME
echo "done"

echo "install hadoop"
HADOOP_HOME=/opt/hadoop-2.7.7
sudo mkdir $HADOOP_HOME
sudo mv hadoop-2.7.7/* $$HADOOP_HOME
export HADOOP_HOME
echo "done"
