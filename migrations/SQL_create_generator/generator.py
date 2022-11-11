import os
output_path = os.path.dirname(os.path.realpath(__file__)) + "/output/"
erdplus_sql_path = os.path.dirname(os.path.realpath(__file__)) + "/erdplus_create_sql.txt"

master_file = True

def generate_autoincrement(table_name):
    return (f"CREATE SEQUENCE {table_name.upper()}_SEQ START WITH 1;\n"
            f"\n"
            f"CREATE OR REPLACE TRIGGER {table_name.upper()}_PK \n"
            f"BEFORE INSERT ON {table_name.upper()} \n"
            f"FOR EACH ROW\n"
            f"\n"
            f"BEGIN\n"
            f"SELECT {table_name.upper()}_SEQ.NEXTVAL\n"
            f"INTO   :new.id\n"
            f"FROM   dual;\n"
            f"END;\n"
            f"/\n"
            f"\n")
            # f"-- DOWN\n"
            # f"DROP SEQUENCE {table_name.upper()}_SEQ;\n"
            # f"DROP TABLE {table_name.upper()};\n")

with open(erdplus_sql_path, "r") as file:
    current_migration_idx = 1

    table_name = ""
    if master_file == True:
        current_migration_file = open(output_path + "master_file" + ".sql", "w")

    onHeader = True
    for line in file:
        if onHeader:
            table_name = line.split(" ")[2][:-1]
            table_name = table_name.lower() # minusculas
            if master_file == False:
                current_migration_file = open(output_path + f"{current_migration_idx:02}" + "_create_" + table_name + ".sql", "w")
            current_migration_file.write("-- UP\n")
            onHeader = False

        current_migration_file.write(line)

        if line == "\n":
            print(f"Tabla `{table_name.upper()}` generada correctamente.")
            autoincrement_code = generate_autoincrement(table_name)
            current_migration_file.write(autoincrement_code)
            if master_file == False:
                current_migration_file.close()
            onHeader = True
            current_migration_idx += 2

    autoincrement_code = generate_autoincrement(table_name)
    current_migration_file.write(autoincrement_code)
    if master_file == True:
        current_migration_file.close()
    file.close()