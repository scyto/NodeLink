#!/bin/bash
ECHO checking if NodeLink exists
if [ ! -e "/NodeLink/NodeLink.exe" ]; then
wget -O /NodeLink/NodeLink.exe http://automationshack.com/Files/NodeLink.exe
fi
ECHO starting NodeLink
mono /NodeLink/NodeLink.exe &
/bin/bash