# CivicDAO Fast Prompting POC

## Introducción
Este proyecto es una **prueba de concepto (POC)** para demostrar cómo las técnicas de **Fast Prompting** 
pueden aplicarse en **CivicDAO**, una plataforma descentralizada enfocada en la toma de decisiones comunitarias.

## Problema
La comunidad de una DAO suele generar **gran cantidad de propuestas** en lenguaje natural.  
Revisar y clasificar estas propuestas manualmente es lento y consume muchos recursos.  
Además, las propuestas suelen ser largas y necesitan **resúmenes breves** para que los miembros voten de manera informada.

## Solución propuesta
Implementar un sistema de **clasificación automática y resúmenes rápidos de propuestas DAO**, 
aprovechando técnicas de prompting (prompt simple, estructurado y fast/comprimido).

Las categorías seleccionadas para la clasificación son:
- Gobernanza (GOV)
- Finanzas (FIN)
- Tecnología (TEC)
- Comunidad (COM)

## Justificación de la viabilidad
- **Factible técnicamente**: con Python, Jupyter Notebook y un modelo de lenguaje (ej. GPT).  
- **Tiempo**: la POC se desarrolla en pocas semanas.  
- **Recursos**: se optimizan consultas usando **Fast Prompting** y batching.  

## Objetivos
1. Comparar la eficacia de diferentes técnicas de prompting en la clasificación de propuestas DAO.  
2. Evaluar la reducción de coste y número de consultas mediante prompts comprimidos y batching.  
3. Generar resúmenes breves de propuestas para facilitar la toma de decisiones.  

## Metodología
1. Definir un dataset de propuestas de ejemplo (`data/propuestas_civicdao.csv`).  
2. Probar distintos tipos de prompting (simple, estructurado, fast).  
3. Evaluar resultados en términos de precisión, claridad y coste estimado.  
4. Documentar los hallazgos en un Notebook.  

## Herramientas y tecnologías
- **Python + Jupyter Notebook**  
- **OpenAI API** (GPT-4o-mini o equivalente)  
- **pandas, tiktoken, matplotlib, tqdm**  
- Técnicas de prompting:  
  - Zero-shot prompting  
  - Few-shot prompting  
  - Prompt comprimido (Fast Prompting)  
  - Batching para reducir llamadas  

## Implementación
En el notebook `notebooks/fast_prompting_civicdao.ipynb` se muestra:  
- Clasificación de propuestas con distintos prompts.  
- Generación de resúmenes breves.  
- Comparación de precisión y coste.  

## Análisis de costes
Se estima el consumo de tokens por prompt y la diferencia de coste entre:  
- Prompt simple (muchas llamadas individuales).  
- Prompt estructurado (más tokens por llamada).  
- Prompt fast con batching (menos consultas, menor coste).  

## Resultados y conclusiones
- Los prompts comprimidos permiten **reducir hasta 50% de tokens** sin perder precisión.  
- Batching reduce el número de llamadas y hace más eficiente el sistema.  
- CivicDAO puede escalar mejor con **Fast Prompting** para manejar grandes volúmenes de propuestas.  

## Cómo ejecutar
1. Clonar este repositorio.  
2. Crear un entorno virtual e instalar dependencias:  
   ```bash
   pip install -r requirements.txt
