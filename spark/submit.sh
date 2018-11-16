#! /bin/bash

if [[ "$@" = "-p" ]]; then
	docker run\
		--network spark\
		-v $(pwd)/code/:/code/\
		--name spark_submit\
		-d\
		gettyimages/spark\
		./bin/spark-submit --master spark://master:7077 /code/main.py
elif [[ "$@" = "-j" ]]; then
	docker run\
		--network spark\
		-v $(pwd)/code/:/code/\
		--name spark_submit\
		-d\
		gettyimages/spark\
		./bin/spark-submit --master spark://master:7077 /code/main.jar
else
	echo "Usage:	submit.sh OPTION

submit code to spark container.
put your code in code/ directory and rename it to main.py or main.jar .

Options:
  -p     for python code submit
  -j     for jar file submit

Note: All of code/ directory will copy to container.
"
fi
