# Naming Conventions

**Naming Tables**
* Use singular nouns for table names.
* Use lowercase letters and underscores to separate words.
* Prefix tables with a functional area or module name for clarity, i.e. log_, lu_, source_, and tmp_.

**Naming Columns**
* Use a _id suffix to indicate that a column value references a lookup table

**Foreign Keys**
* The name should consist of fk_{usage_table}_{value_table}, i.e. fk_establishment_lu_row_status
