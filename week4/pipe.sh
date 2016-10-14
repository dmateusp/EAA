#!/bin/bash
# ps -ef prints running processes information
# grep mysql gets the lines that contain mysql from text
# the pipe sends the text created by ps -ef to the grep command, getting all the information for the mysql process

ps -ef | grep mysql
