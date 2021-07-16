#!/bin/bash
cd "SeiRA Web App" 
json-server --watch db.json &
npm install axios
node server.js