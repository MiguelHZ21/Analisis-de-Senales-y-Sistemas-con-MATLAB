# 📊 Análisis de Señales y Sistemas con MATLAB

## 📌 Descripción

Este proyecto desarrolla el análisis de un **sistema eléctrico tipo RL**, abordando su modelado matemático, obtención de funciones de transferencia y estudio de su comportamiento ante diferentes entradas.

Se integran herramientas de **MATLAB y Simulink** para validar resultados teóricos, además del uso de **Series de Fourier** para la construcción y análisis de señales periódicas.

---

## 🎯 Objetivos

* Modelar matemáticamente un sistema eléctrico RL
* Obtener funciones de transferencia mediante transformada de Laplace
* Analizar la respuesta del sistema ante entradas tipo escalón y rampa
* Validar resultados mediante simulación en MATLAB
* Construir señales usando Series de Fourier

---

## 🧠 Contenido del proyecto

### ⚡ Modelado del sistema

* Obtención de ecuaciones diferenciales del circuito RL
* Relación entrada-salida:

  * Corriente ( y_1(t) )
  * Voltaje en la inductancia ( y_2(t) )

---

### 🔄 Funciones de transferencia

* Derivación en dominio de Laplace
* Sistema de primer orden

---

### 📈 Análisis del sistema

* Evaluación de linealidad (propiedad de aditividad)
* Respuesta a:

  * Entrada escalón
  * Entrada rampa
* Análisis de error en estado estacionario

---

### 🧮 Teorema de valor final

Aplicación del teorema para determinar el valor en estado estacionario:
Resultados coherentes con simulación en MATLAB.

---

### 🎵 Series de Fourier

* Construcción de señal periódica por tramos
* Cálculo de coeficientes:

  * ( A_0 )
  * ( A_k )
  * ( B_k )
* Reconstrucción de la señal mediante suma de armónicos
* Análisis del efecto del número de armónicos en la aproximación

---

### 🔬 Simulación

* Implementación en **MATLAB** y **Simulink**
* Validación de:

  * Funciones de transferencia
  * Respuesta del sistema
  * Reconstrucción de señales

---

## 💻 Archivos incluidos

* Scripts de MATLAB (.m)
* Modelos de Simulink (.slx)
* Cálculo de coeficientes de Fourier
* Simulación de respuestas del sistema

---

## 💡 Conclusiones

* El modelado matemático permite predecir el comportamiento del sistema sin necesidad de implementación física
* MATLAB es una herramienta efectiva para validar resultados teóricos
* La aproximación por Series de Fourier mejora con el número de armónicos
* El sistema RL presenta comportamiento típico de primer orden

---

## 🚀 Autor

Miguel Hernández

---

## 📎 Notas

Este proyecto corresponde a un trabajo académico enfocado en el análisis de señales y sistemas, integrando teoría matemática y simulación computacional.
