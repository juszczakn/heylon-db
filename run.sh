#!/bin/bash

# table creation script
rm -f table_creation.sql
touch table_creation.sql

# concat in order to table script
cat user.sql\
    parcel.sql\
    race.sql\
    kingdom.sql\
    units.sql\
    actions.sql\
    >> table_creation.sql
