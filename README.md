# lab
required vars to run, I would vault them and not commit to git
|Variable Name|Default Value|Required|Type|Description|Example|
|:---:|:---:|:---:|:---:|:---:|:---:|
|`tower_node_list`|""|yes|list of strings|A list of FQDN or IP addresses|["example.com", "example2.com"]|
|`tower_ah_node`|""|yes|string|FQDN or IP address of Automation Hub node|"127.0.0.1"|
|`tower_db_node`|""|yes|string|FQDN or IP address of Database node|"database.example.com"|
|`tower_admin_pass`|""|yes|string|Password to set for the admin account for Tower and Automation Hub if not specified|'Sup3rGo0dP@s$wOrd'|
|`tower_pg_pass`|""|yes|string|Password to set for the database user for Tower and Automation Hub if not specified|'Sup3rGo0dP@s$wOrd2'|
