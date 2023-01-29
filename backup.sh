#!/bin/bash

# Define the backup directory
BACKUP_DIR=jenkins_backups

# Create the backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Get the current date
DATE=$(date +%Y-%m-%d)

# Define the Jenkins home directory
JENKINS_HOME=~/.jenkins

# Backup the Jenkins home directory
tar -zcvf $BACKUP_DIR/jenkins_home_$DATE.tar.gz $JENKINS_HOME

# Backup the Jenkins configuration
tar -zcvf $BACKUP_DIR/jenkins_config_$DATE.tar.gz /etc/default/jenkins
