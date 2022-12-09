#!/bin/bash

# Install the latest version of MySql
sudo apt install -y mysql-server

sudo mysql_secure_installation

sudo mysql -uroot -p -e "CREATE USER harish@localhost IDENTIFIED BY '#@|!$#';";

sudo mysql -uroot -p -e "GRANT ALL PRIVILEGES ON *.* TO 'harish'@'localhost';";

#sudo mysql -uroot -p -e "ALTER USER cronuser WITH SUPERUSER;";

#sudo -u postgres psql -c "ALTER USER cronuser WITH PASSWORD 'newpassword';"
#sudo -u postgres psql -c "GRANT CONNECT ON DATABASE database_name TO username;";
#sudo -u postgres psql -c "GRANT USAGE ON SCHEMA schema_name TO username;";
#sudo -u postgres psql -c "GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA schema_name TO username;";
#sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA schema_name TO username;";
#sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA schema_name TO username;";
#sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE database_name TO username;";
#sudo -u postgres psql -c "ALTER USER username CREATEDB;";
#sudo -u postgres psql -c "ALTER USER myuser WITH SUPERUSER;";
#sudo -u postgres psql -c "ALTER USER username WITH NOSUPERUSER;";
#sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE database_name TO username;";

# pg_dump.exe -U username -d databasename -n schemaname > C:\mylocation\mydumpfilename.dmp
# pg_dump --no-acl --no-owner -h 13.233.112.218 -U postgres -p 5432 dwh -Ft | aws s3 cp - s3://vaya-postgres-crondb/backup/dwh.tar

# mysqldump -h localhost -P 3306  -u root -p vaya@123 database_name | gzip > /home/vaya-it/Desktop/mysql-backup/dump.sql.gz
# mysql -u root -p audit_data_bkp_restore < audit_data-2022-07-12.sql
