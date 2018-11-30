#! /bin/bash
# getting a string and make desire dirs and change all valumes in docker-compose files

mkdir /mnt/storage/$@
mkdir /mnt/storage/$@/data
mkdir /mnt/storage/$@/data/postgres
mkdir /mnt/storage/$@/data/cockroach
mkdir /mnt/storage/$@/data/voltdb
mkdir /mnt/storage/$@/data/hdfs
mkdir /mnt/storage/$@/data/hdfs/historyserver
mkdir /mnt/storage/$@/data/hdfs/datanode
mkdir /mnt/storage/$@/data/hdfs/nodename
sed -i -e "s/HOME/$@/g" ./cockroachDB/docker-compose.yml
sed -i -e "s/HOME/$@/g" ./flink-spark-hdfs/docker-compose.yml
sed -i -e "s/HOME/$@/g" ./postgres/docker-compose.yml
sed -i -e "s/HOME/$@/g" ./voltdb/docker-compose.yml
