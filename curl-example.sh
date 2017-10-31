#!/bin/bash
for link in "$@"
do
    echo "Curling $link"
    response=`curl "$link"`
    echo "Returned response is: $response"
    "$response" > response.txt 2>&1
done
