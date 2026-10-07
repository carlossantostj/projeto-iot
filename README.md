# Pipeline de Dados com IoT e Docker

## 1. Sobre o projeto

Este projeto foi desenvolvido para a disciplina **Disruptive Architectures: IoT, Big Data e IA** e tem como objetivo construir um pipeline de dados capaz de processar leituras de temperatura de dispositivos IoT, armazená-las em um banco de dados PostgreSQL executado com Docker e disponibilizar indicadores por meio de um dashboard desenvolvido com Streamlit e Plotly.

O conjunto de dados utilizado é o **Temperature Readings: IoT Devices**, disponibilizado no Kaggle.

## 2. Tecnologias utilizadas

- Python 3.14
- Pandas
- Psycopg2
- SQLAlchemy
- PostgreSQL
- Docker
- Streamlit
- Plotly
- Git e GitHub

## 3. Estrutura do projeto

```text
projeto-iot/
│
├── data/
│   └── IOT-temp.csv
│
├── src/
│   └── dashboard.py
│
├── sql/
│   └── views.sql
│
├── docs/
│
├── requirements.txt
├── .gitignore
└── README.md