#!/bin/bash

ECHO checking if NodeLink exists
if [ ! -e "/NodeLink/NodeLink.dll" ]; then
wget -O /NodeLink/NodeLink.dll http://automationshack.com/Files/NodeLink.dll 
fi

if [ ! -e "NodeLink.runtimeconfig.json" ]; then
wget -O /NodeLink/NodeLink.runtimeconfig.json http://automationshack.com/Files/NodeLink.runtimeconfig.json
fi


ECHO starting NodeLink
dotnet /NodeLink/NodeLink.dll &
/bin/bash
