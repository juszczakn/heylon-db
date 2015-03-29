#!/bin/bash

# table creation script
rm -f table_creation.sql
touch table_creation.sql

# concat in order to table script
cat user.sql\
    parcel.sql\
    kingdom.sql\
    units.sql >> table_creation.sql
