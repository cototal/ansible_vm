#!/bin/bash

ansible-playbook playbook.yml --skip-tags=mongo,postgres,redis,dotnet