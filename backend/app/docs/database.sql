-- =====================================================
-- BASE DE DATOS: Sistema de Estacionamiento Vehicular
-- =====================================================

DROP DATABASE IF EXISTS parking_db;

CREATE DATABASE parking_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE parking_db;

-- =====================================================
-- TABLA ÚNICA: estacionamiento
-- Contiene el flujo completo: ingreso, salida, tarifa y estado
-- =====================================================
CREATE TABLE estacionamiento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL,
    fecha_entrada DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    fecha_salida DATETIME NULL,
    monto DECIMAL(10,2) NULL,
    estado ENUM('ACTIVO', 'FINALIZADO') NOT NULL DEFAULT 'ACTIVO'
);

-- Índice para acelerar la búsqueda de vehículos activos
CREATE INDEX idx_estacionamiento_estado ON estacionamiento(estado);

-- =====================================================
-- Datos de prueba (opcional)
-- =====================================================
-- INSERT INTO estacionamiento (placa) VALUES ('ABC-1234');
-- INSERT INTO estacionamiento (placa) VALUES ('XYZ-9876');
