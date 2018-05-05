#This is scipt starts the mongod database and the npm server 
#!/bin/sh

echo "killing previouse mongo services"
if pgrep mongod >/dev/null;then
    echo "Found and killing "
    pkill mongod
fi

echo "starting mongod at port 27017 in a new detached screen session"
screen -d -m bash -c "mongod --dbpath ~/mongo --port 27017"
sleep 5
echo "starting server in new screen session"
screen -d -m bash -c "npm start "
sleep 2
echo "<---- screen -X -S session_name quit ---> to quit screen session"


