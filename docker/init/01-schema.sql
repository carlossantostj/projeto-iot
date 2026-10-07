CREATE TABLE IF NOT EXISTS temperature_readings (
    id VARCHAR(100),
    room_id_id VARCHAR(100),
    noted_date TIMESTAMP,
    temp NUMERIC,
    out_in VARCHAR(10)
);

CREATE OR REPLACE VIEW avg_temp_por_dispositivo AS
SELECT
    room_id_id AS device_id,
    AVG(temp) AS avg_temp
FROM temperature_readings
GROUP BY room_id_id;

CREATE OR REPLACE VIEW leituras_por_hora AS
SELECT
    EXTRACT(HOUR FROM noted_date) AS hora,
    COUNT(*) AS contagem
FROM temperature_readings
GROUP BY EXTRACT(HOUR FROM noted_date)
ORDER BY hora;

CREATE OR REPLACE VIEW temp_max_min_por_dia AS
SELECT
    DATE(noted_date) AS data,
    MAX(temp) AS temp_max,
    MIN(temp) AS temp_min
FROM temperature_readings
GROUP BY DATE(noted_date)
ORDER BY data;