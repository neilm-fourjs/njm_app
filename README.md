# njm_app
My Genero Application

# WORK IN PROGRESS
Goal is to make all the demos and utils etc sub modules so they can checked out seperate.


*IMPORTANT* Make sure you use the --recursive flag when you clone this repo, eg: On Linux
```
$ git clone --recursive https://github.com/neilm-fourjs/njm_app.git
$ cd njm_app
$ make
```

This demo uses imported git repos:
* git submodule add https://github.com/neilm-fourjs/g2_lib.git g2_lib
* git submodule add https://github.com/neilm-fourjs/njm_demo_db.git njm_demo_db
* git submodule add https://github.com/neilm-fourjs/njm_menu.git njm_menu
* git submodule add https://github.com/neilm-fourjs/fontAwesome.git fontAwesome
* git submodule add https://github.com/neilm-fourjs/matDesTest.git matDesTest
* git submodule add https://github.com/neilm-fourjs/gbc_app.git gbc_app
* git submodule add https://github.com/neilm-fourjs/wc_d3Charts.git wc_d3Charts
* git submodule add https://github.com/neilm-fourjs/wc_kite.git wc_kite
* git submodule add https://github.com/neilm-fourjs/widgets.git widgets
* git submodule add https://github.com/neilm-fourjs/wizard.git wizard

If libraries change do:
* git submodule foreach git pull origin master


The default user and log for the demo is:
test@test.com / 12test


The Demos:
* ipodTree - Tree demo
* picFlow - picFlow GDC
* widgets - Genero Widgets and UI features


The Web Component Demos:
* wc_aircraft - Interactive Images - Aricraft catering
* wc_d3chart - Charting
* wc_amCharts - Charting
* wc_googleMaps - Google Maps
* wc_guage - A simple Gauge and a Pie chart
* wc_kite - Interactive Image - SVG Kite
* wc_music - Music player


The Application Framework:
* Login
* User Creation
* Menu System
* Basic table maintainance
* Order Entry
* Invoice printing
* Web Ordering



When deployed as via the gas the application urls will be:
```
http://<server>/<gas-alias>/ua/r/<xcf>
or
http://<server>:6394/ua/r/<xcf>
```

The xcf files are:
* njm_app - Main demo with login using default GBC


Databases:
* Informix
* PostgreSQL
* Maria DB
* SQL Server


For PostgreSQL
```
sudo -u postgres createuser <appuser>
sudo -u postgres createdb njm_demo310
sudo -u postgres psql
psql (9.6.7)
Type "help" for help.

postgres=# grant all privileges on database njm_demo310 to <appuser>;
GRANT
postgres=# \q
```

or
```
postgres=# \connect njm_demo310;
You are now connected to database "njm_demo310" as user "postgres".
njm_demo310=# GRANT UPDATE ON ALL TABLES IN SCHEMA public TO fourjs;
GRANT
njm_demo310=# GRANT INSERT ON ALL TABLES IN SCHEMA public TO fourjs;
GRANT
njm_demo310=# GRANT DELETE ON ALL TABLES IN SCHEMA public TO fourjs;
GRANT
```

For MariaDB added a user of 'dbuser' to connect to the database.
```
MariaDB [(none)]> CREATE USER 'dbuser'@'%';
MariaDB [(none)]> GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'%';
```

