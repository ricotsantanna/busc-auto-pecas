import sqlite3
import os

def init_db():
    db_dir = os.path.join(os.path.dirname(__file__), '..', '..', 'data')
    if not os.path.exists(db_dir):
        os.makedirs(db_dir)
        
    db_path = os.path.join(db_dir, 'local_catalog.db')
    
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()
    
    # Table for the extracted parts
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS extracted_parts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        original_pdf TEXT,
        page INTEGER,
        part_code TEXT,
        name TEXT,
        manufacturer TEXT,
        category TEXT,
        status TEXT DEFAULT 'pending'
    )
    ''')
    
    # Table for part compatibilities
    cursor.execute('''
    CREATE TABLE IF NOT EXISTS extracted_compatibility (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        part_id INTEGER,
        brand TEXT,
        model TEXT,
        version TEXT,
        year_start INTEGER,
        year_end INTEGER,
        engine TEXT,
        FOREIGN KEY(part_id) REFERENCES extracted_parts(id)
    )
    ''')
    
    conn.commit()
    conn.close()
    print(f"Banco de dados local criado em: {db_path}")

if __name__ == "__main__":
    init_db()
