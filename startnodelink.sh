#!/bin/bash
if [ ! -e "/NodeLink/NodeLink.exe" ]; then
wget -O /NodeLink/NodeLink.exe http://automationshack.com/Files/NodeLink.exe
fi
mono /NodeLink/NodeLink.exe &
/bin/bash