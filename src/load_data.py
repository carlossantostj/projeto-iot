import pandas as pd
from sqlalchemy import create_engine

CSV_FILE = "data/IOT-temp.csv"

DATABASE_URL = (
    "postgresql+psycopg2://postgres:postgres123@localhost:5432/iot_db"
)

engine = create_engine(DATABASE_URL)

# Leitura do CSV
df = pd.read_csv(CSV_FILE)

# Conversão da data no formato DD-MM-YYYY HH:MM
df["noted_date"] = pd.to_datetime(
    df["noted_date"],
    format="%d-%m-%Y %H:%M"
)

# Ajuste dos nomes das colunas para a tabela PostgreSQL
df = df.rename(
    columns={
        "room_id/id": "room_id_id",
        "out/in": "out_in"
    }
)

# Inserção dos dados no PostgreSQL
df.to_sql(
    "temperature_readings",
    engine,
    if_exists="append",
    index=False
)

print(f"{len(df)} registros inseridos com sucesso.")