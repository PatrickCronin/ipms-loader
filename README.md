# High-level plan

1. Basic plan for which tables must be imported into.
1. Get DBIC schema classes for those tables.
1. Write the import and test routines for _required data only_. The import routines should not insert existing information.

# Program components

1. GitHub repo
1. A script for calling the ETL module
1. An ETL Perl module
1. An ETL sub-module for each required "entity" (not necessarily a target table)
1. DSN for target database
1. DBIC schemas for target tables
1. Source table design
1. XLS reader module per source table
1. Tests