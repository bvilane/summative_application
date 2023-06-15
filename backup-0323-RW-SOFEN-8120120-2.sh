#!/bin/bash

HOST="a0dfc11ba139.a982e858.alu-cod.online"
USER="a0dfc11ba139"
PASSWORD="899c79fc532cd0591af1"
SOURCE="0323-RW-SOFEN-8120120-2_q1"
DESTINATION="/home/sftp-student/03033/summative"

sshpass -p $PASSWORD scp -r $SOURCE $USER@$HOST:$DESTINATION
