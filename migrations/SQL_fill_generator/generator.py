import os
output_path = os.path.dirname(os.path.realpath(__file__)) + "/output/"
erdplus_sql_path = os.path.dirname(os.path.realpath(__file__)) + "/erdplus_fill_sql.txt"

master_file = True

with open(erdplus_sql_path, "r") as file:
    current_migration_idx = 2

    table_name = ""
    if master_file == True:
        current_migration_file = open(output_path + "master_file" + ".sql", "w")

    onHeader = True
    for line in file:
        if onHeader:
            table_name = line.split(" ")[2]
            table_name = table_name.lower() # minusculas
            if master_file == False:
                current_migration_file = open(output_path + f"{current_migration_idx:02}" + "_fill_" + table_name + ".sql", "w")
            onHeader = False

        current_migration_file.write(line)

        if line == "\n":
            print(f"Tabla `{table_name.upper()}` generada correctamente.")
            if master_file == False:
                current_migration_file.close()
            onHeader = True
            current_migration_idx += 2

    if master_file == True:
        current_migration_file.close()
    file.close()