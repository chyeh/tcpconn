#!/bin/bash

tcpconn $@ | ./tcpconn.awk
