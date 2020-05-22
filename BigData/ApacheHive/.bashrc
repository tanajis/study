export HADOOP_HOME=/home/tms/myInstallDir/hadoop-2.10.0
export PATH=$PATH:$HADOOP_HOME/bin
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin
export SPARK_HOME=/home/tms/myInstallDir/spark
export PATH=$PATH:$SPARK_HOME/bin

export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop



export HIVE_HOME=/home/tms/myInstallDir/hive
export PATH=$PATH:$HIVE_HOME/bin
export CLASSPATH=$CLASSPATH:/home/tms/myInstallDir/hadoop-2.10.0/lib/*:.
export CLASSPATH=$CLASSPATH:/home/tms/myInstallDir/lib/*:.
export DERBY_HOME=/home/tms/myInstallDir/db-derby-10.4.2.0-bin
export PATH=$PATH:$DERBY_HOME/bin
export CLASSPATH=$CLASSPATH:$DERBY_HOME/lib/derby.jar:$DERBY_HOME/lib/derbytools.jar
