#!/bin/bash
aws elb describe-load-balancers|grep DNSName|grep josephm354
