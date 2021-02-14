echo "download spark"
curl -O https://mirrors.sonic.net/apache/spark/spark-3.0.1/spark-3.0.1-bin-hadoop2.7.tgz
tar xzf spark-3.0.1-bin-hadoop2.7.tgz

echo "install spark"
SPARK_HOME=/opt/spark-3.0.1
sudo mkdir $SPARK_HOME
sudo mv spark-3.0.1-bin-hadoop2.7/* $SPARK_HOME
export SPARK_HOME
echo "done"
