#!/bin/sh

/usr/bin/crontab /setting/crond/crontab
/usr/bin/supervisord -n
