# Proyecto: Sistema de Cálculo de Costos de Productos

Este proyecto fue desarrollado en **PSeInt** utilizando el **Lenguaje Flexible**. Simula un sistema de cálculo del costo final de un producto considerando descuentos, impuestos, cantidad, peso y destino del envío.

## Objetivo
Construir un algoritmo en pseudocódigo que simule el proceso de compra y cálculo del precio final de un producto aplicando:
- Descuentos por cupón
- Impuestos
- Descuento por cantidad
- Costo de envío basado en peso y destino

## Funcionalidades del sistema
1. **Ingreso de datos del producto y cliente**
   - Precio original
   - Cantidad
   - Peso (kg)
   - Destino de envío
   - Consulta si tiene cupón de descuento

2. **Selección o ingreso de cupón de descuento**
   - Uso de un arreglo con descuentos predefinidos (10%, 20%, 30%, 40%)
   - O posibilidad de ingresar un valor personalizado
   - Validación del valor ingresado

3. **Aplicación de descuentos por cantidad**
   - 3% para más de 10 unidades
   - 5% para más de 25 unidades
   - 8% para más de 50 unidades

4. **Aplicación de impuestos**
   - Se aplica un 12% de impuesto al producto con descuento

5. **Cálculo de costo de envío**
   - Costo fijo de $10
   - Costo adicional de $2 por cada kilogramo de peso

6. **Cálculo del total final**
   - Precio con descuento
   - Impuesto
   - Descuento por cantidad
   - Costo de envío

7. **Resumen final**
   - Detalla los componentes del costo final

## Estructura principal del algoritmo
- Uso de **variables numéricas y cadenas** para capturar entradas
- Uso de **arreglos unidimensionales** para los cupones
- Uso de **condicionales** (Si...Entonces...SiNo) para aplicar reglas de negocio
- Uso de **bucle Para** para mostrar cupones disponibles
- Operaciones aritméticas para todos los cálculos

## Ejemplo de uso
Entrada del usuario:
- Precio producto: $100
- Cantidad: 2
- Peso: 3 kg
- Cupón: 10%
- Destino: Nueva York

Resultado:
- Precio con descuento por cupón (10%): $90.00
- Precio con impuestos (12%): $100.80
- Descuento por cantidad aplicado: 0%
- Subtotal por 2 unidades: $201.60
- Envío: $16 (Costo fijo $10 + $2 por kg × 3 kg)
- Costo total final a pagar: $217.60
  
 ### Ejemplo de salida del programa
<img width="450" height="250" alt="image" src="https://github.com/user-attachments/assets/4a5b5504-7d4f-4164-979e-c0c28f23c987" />

### Caso 1: Compra de 11 unidades (Descuento por cantidad del 3%)
<img width="450" height="250" alt="image" src="https://github.com/user-attachments/assets/7398b312-d5de-4082-9286-81a71f0a1c1d" />

### Caso 2: Compra de 26 unidades (Descuento por cantidad del 5%)
<img width="450" height="250" alt="image" src="https://github.com/user-attachments/assets/10597764-249c-4ee3-ae62-2fc7627ea555" />

### Caso 3: Compra de 51 unidades (Descuento por cantidad del 8%)
<img width="450" height="250" alt="image" src="https://github.com/user-attachments/assets/8e1da86b-386f-4f52-b93e-55d5fd7691a3" />

### Caso 4: Compra de 29 unidades, Descuento por cantidad del 5%, Cupón del 35%, Peso de 5 Kg
<img width="450" height="250" alt="image" src="https://github.com/user-attachments/assets/86b2e64a-4faa-4459-8c27-03f95528c2c5" />


## Control de versiones
- Proyecto subido a GitHub en un repositorio individual

## Tecnología usada
- PSeInt (Lenguaje Flexible)
- Git & GitHub para control de versiones

## Estado del proyecto
- Cumple con todos los requisitos solicitados:
  - Lectura y validación de datos
  - Uso de arreglos y estructuras condicionales
  - Cálculos detallados paso a paso
  - Control de flujo correctamente implementado

---

**Autor:** José Esteban  
**Fecha de entrega:** 28-07-2025
