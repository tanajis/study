#@Auther : Tanaji Sutar
#This file is created to start the hadoop cluster
#Install hadoop from https://www.michael-noll.com/tutorials/running-hadoop-on-ubuntu-linux-single-node-cluster/
# To run this file use ./starthadoop.sh


cd /home/tms/tmsCodeGround/myInstallDir/hadoop-2.7.3/sbin
./start-yarn.sh
./start-dfs.sh

#You can access the hadoop from web browser as well
#HDFS : http://localhost:50070/
#RM UI: http://localhost:8088/


#Start Spark
cd /home/tms/tmsCodeGround/myInstallDir/spark-2.3.2-bin-hadoop2.7/sbin
./start-all.sh
