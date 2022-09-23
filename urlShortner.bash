#!/bin/bash

echo Enter URL
read url
curl -s "http://tinyurl.com/api-create.php?url=$url"
