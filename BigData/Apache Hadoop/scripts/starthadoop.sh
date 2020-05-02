
##########################################################################################
# Auther : Tanaji Sutar
# Desc   :This file is created to start the hadoop cluster and spark.
#         Install hadoop from https://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-single-node-cluster/
#         To run this file use ./starthadoop.sh
# Note   : u must set HADOOP_HOME and SPARK_HOME before running this script.
# Date   : 02-05-2020
##########################################################################################

cd $HADOOP_HOME/sbin
./start-yarn.sh
./start-dfs.sh

# You can access the hadoop from web browser as well
# HDFS : http://localhost:50070/
# RM UI: http://localhost:8088/

# Start Spark
cd $SPARK_HOME/sbin
./start-all.sh

# Show all the deamon
jps
