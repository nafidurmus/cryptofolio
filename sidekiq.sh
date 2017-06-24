#!/bin/bash

sidekiq -d -c 1 -L log/sidekiq.log -P tmp/pids/sidekiq.pid -r . -e development
