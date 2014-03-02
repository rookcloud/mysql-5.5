mysql-5.5
=========

The mysql-5.5 container for Rook

Scripts
-------

#### init_wrapper

This waits with starting the container until the inter-container network is available.
Once the network is detected, it continues with the normal init.


Services
--------

### mysql


Installs the database if no database is detected.
Starts the mysql server. 


### mysql_init


Waits for mysql to be running.
If mysql is running, grants database access to the rook user, then stops this service.


Configuration
-------------

A basic my.cnf file is located in /mount/config/