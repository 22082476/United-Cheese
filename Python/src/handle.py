import pyodbc
import pandas as pd

def setup_cursor(connection):
    connection = pyodbc.connect(connection)

    cursor = connection.cursor()

    return cursor

def handleOne (cursor, source, method):   
    for index, row in source.iterrows():

        try :
            vlaai = method(index, row)
            cursor.execute(vlaai)
        except pyodbc.Error:
            print(vlaai)


    cursor.commit()  
    cursor.close() 

def handleTwo (cursor, source1, source2, method):
    for index1, row1 in source1.iterrows():

        for index, row in source2.iterrows():

            try :
                vlaai = method(index1, index, row1, row)
                cursor.execute(vlaai)
            except pyodbc.Error:
                print(vlaai)    


    cursor.commit()
    cursor.close()

def read(cursor, table, where):
    try:
        query = f"SELECT MAX(S_KEY) FROM {0} WHERE {1}", table , where
        cursor.execute(query)
        result = cursor.fetchall()
        result = result[0][0]
    except pyodbc.Error:
        print(query)  
        result = None

    cursor.commit()
    cursor.close()

    return result

def get_data(cursor, name):
    cursor.execute(f"SELECT * FROM " + name)
    rows = cursor.fetchall()
    column_names = [desc[0] for desc in cursor.description]
    rows_as_tuples = [tuple(row) for row in rows]
    data = pd.DataFrame(rows_as_tuples, columns=column_names)
    return data