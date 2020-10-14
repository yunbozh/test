#/bin/sh

cd server_3d/script/trunk

#tar --exclude log -czvf fish_server.tar.gz ./*

tar --exclude bin --exclude frame_config_endpoint.lua -czvf fish_server.tar.gz ./*

echo "copy file to 10.10.10.103"

scp fish_server.tar.gz root@10.10.10.103:/root/fishing/3d-server/temp_test

rm -rf fish_server.tar.gz

ssh root@10.10.10.103 'cd fishing/3d-server/temp_test; tar -xzvf fish_server.tar.gz'              
