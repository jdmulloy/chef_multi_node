#!/bin/bash
chef-client -z -o wordpress-cluster::destroy_all
