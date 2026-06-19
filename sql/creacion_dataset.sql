-- ==============================================================================
-- LAB: RETAIL ANALYTICS - BIGQUERY SCHEMA CREATION
-- DATA INFRASTRUCTURE & GOVERNANCE
-- ==============================================================================

-- 1. CREACIÓN DEL DATASET (ESQUEMA LÓGICO)
CREATE SCHEMA IF NOT EXISTS retail_dw;

-- 2. CREACIÓN DE LA TABLA DE DIMENSIÓN: CLIENTES
CREATE TABLE IF NOT EXISTS retail_dw.clientes (
    id_cliente INT64,
    nombre STRING,
    pais STRING
);

-- 3. CREACIÓN DE LA TABLA DE DIMENSIÓN: PRODUCTOS
CREATE TABLE IF NOT EXISTS retail_dw.productos (
    id_producto INT64,
    producto STRING,
    categoria STRING
);

-- 4. CREACIÓN DE LA TABLA DE HECHOS: VENTAS
CREATE TABLE IF NOT EXISTS retail_dw.ventas (
    id_venta INT64,
    fecha_venta DATE,
    id_cliente INT64,
    id_producto INT64,
    sucursal STRING,
    monto NUMERIC
);