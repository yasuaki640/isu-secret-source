#!/bin/sh

sudo tail -n 18 /var/log/nginx/access.log | alp json -o count,method,uri,min,avg,max