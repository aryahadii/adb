# SPARK README

## 1. Compose

Start spark just with one worker:

```bash
$ docker-compose up -d
```

*NOTE:*

- Docker-compose file in `spark/` directory isnt work on hdfs. For supporting hdfs use compose in `flink-spark-hdfs/`

- For start spark with more than 1 worker: change docker-compose.yml and copy worker service setting. Change container_name and SPARK_WORKER_WEBUI_PORT and ports. make sure these variables is unique.

## 2. Sumbit

Use `submit.sh` to submit your app in runnig spark cluster.

`count.py` is an example available in `example/` directory.
```bash
$ mv example/count.py code/main.py
$ ./submit.sh
```

Note: If you dont want to detach from submitted code, change `submit.sh`: add `-it` + remove `-d`

## 3. Interface

Follow all spark nodes logs:
```bash
$ docker-compose logs -f
```

Follow submitted code log:
```bash
$ docker logs -f spark_submit
```


## 4. Stop

Remove stoped containers:
```bash
$ docker container prune
```

Tear down spark cluster:
```
$ docker-compose down
```

### Config

Spark config file is available at `config/`.

### PS

Contact me if there is any issue with containers and composer: [mailto]erfan.mehraban@gmail.com

Submit reference: https://spark.apache.org/docs/latest/submitting-applications.html

More spark example: http://spark.apache.org/examples.html

Main spark reference: https://spark.apache.org/docs/latest/index.html

Docker image source: https://github.com/gettyimages/docker-spark
