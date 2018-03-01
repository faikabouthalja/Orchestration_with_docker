#!/bin/bash
until docker logs erecrute_php_1 | grep -m 1 "fpm is running"; do echo "still running ...." && sleep 4 ; done
echo "found"
rm -rf /datadrive/srcrecrute/app/cache/*
rm -rf  /datadrive/srcrecrute/app/logs/*
rm -rf  /datadrive/logsrecrute/symfony/*
chmod -R 777 /datadrive/srcrecrute/app/cache/
chmod -R 777  /datadrive/srcrecrute/app/logs/
