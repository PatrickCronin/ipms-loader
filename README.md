# High-level plan

1. Basic plan for which tables must be imported into.
1. Get DBIC schema classes for those tables.
1. Write the import and test routines for _required data only_. The import routines should not insert existing information.

# Program components

1. GitHub repo (done)
1. A script for calling the ETL module (done)
1. An ETL Perl module (started)
1. An ETL sub-module for each required "entity" (not necessarily a target table) (started)
1. DSN for target database (done)
1. DBIC schemas for target tables (done)
1. Source table design
1. XLS reader module per source table (done)
1. Tests
