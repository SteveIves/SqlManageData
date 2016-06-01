
# SqlManageData

An example of using the Synergy SQL Connection API to manage data in a SQL
Server relational database.

Author: Steve Ives, Synergex Professional Services Group (steve.ives@synergex.com)

## Preparing the Database

The code in this example is configured for use with a local default instance of
a recent version of Microsoft SQL Server (Express edition is OK) that is
configured to accept Windows authentication. The code expects to find a database
named "SqlManagement" that already contains several tables and various data.
The files for this database are included in this environment in a ZIP file
named SqlManagementData. You will need to extract the two data files from the
ZIP file and then use the SQL Server Management Studio utility to attach the
database to your SQL Server instance.

If your SQL Server database is not local, or does not accept Windows
authentication, you will need to alter the value of the DB_CONSTR identifier
in the source file DatabaseTableTest.dbl. Refer to the section on configuring
connect strings in the Synergy/DE SQL Connection API manual for more details.

## Instructions

To build and use the code in this example you will need to:

- Start Workbench and use "Project > Open Workspace" to open the SqlManageData.vpw workspace.

- From "Build" menu select "Import Schema to Repository" to load the repository database.

- Next select "Build > Build" to compile and link the example code.

- Finally select "Build > Execute" to run the exmaple.

The example application is a Synergy UI Toolkit application that directly
accesses the data in the SQL Server database.


