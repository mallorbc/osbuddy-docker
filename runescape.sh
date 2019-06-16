#!/bin/bash
#starts the built image detached with both port 5901 and 6901 forwarded
docker run -d -p 5901:5901 -p 6901:6901 osrs
