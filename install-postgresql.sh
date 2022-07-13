#!/bin/bash

# Create the file repository configuration:
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
sudo apt-get update

# Install the latest version of PostgreSQL.
# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
sudo apt-get -y install postgresql

sudo -u postgres psql -c "CREATE USER cronuser WITH ENCRYPTED PASSWORD 'cronpass';";

sudo -u postgres psql -c "ALTER USER cronuser WITH SUPERUSER;";

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

# psql -U postgres
#sudo -u postgres psql -c "CREATE ROLE alice4 WITH LOGIN PASSWORD 'securePass1';";
# psql -U alice4 -W postgres

#sudo -u postgres psql -c "CREATE ROLE dbowner NOLOGIN;";
#sudo -u postgres psql -c "ALTER DATABASE mydb OWNER TO dbowner;";
#sudo -u postgres psql -c "GRANT dbowner TO user1, user2;";

# pg_dump.exe -U username -d databasename -n schemaname > C:\mylocation\mydumpfilename.dmp
# pg_dump --no-acl --no-owner -h 13.233.112.218 -U postgres -p 5432 dwh -Ft | aws s3 cp - s3://vaya-postgres-crondb/backup/dwh.tar

# pg_dump --no-acl --no-owner -h 13.233.112.218 -U postgres -p 5432 test -Ft -f /home/vaya-it/Desktop/postgres-backup/test.tar
# pg_restore --no-acl --no-owner -h localhost -Ft -d postgres -U cronuser /home/vaya-it/Desktop/postgres-backup/test.tar
