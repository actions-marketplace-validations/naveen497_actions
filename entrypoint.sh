#!/bin/sh -l


export PATH="$PATH:/github/home/.dotnet/tools"
dotnet tool install -g dotnet-stryker

cd *.Test/
dotnet stryker --reporters "['json']"
