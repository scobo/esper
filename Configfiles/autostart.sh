#!/bin/sh
export TZ="America/Los_Angeles"
(sleep 10; /sbin/ntpd -p us.pool.ntp.org; )&
