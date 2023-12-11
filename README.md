# Ejecutar modelos IA generativa local

## Paso 1: Descargar

Para comenzar, descargamos la herramienta para usar los modelos de lenguaje OLLAMA desde su sitio web oficial. Para ello, ejecutamos el siguiente comando en una terminal Linux:

```bash
curl https://ollama.ai/install.sh | sh
```

Este comando descarga el archivo de instalación de OLLAMA y lo ejecuta automáticamente. [Web oficial](https://ollama.ai/download/linux).

## Paso 2: Iniciar el servicio de OLLAMA

Después de descargar la herramienta, debemos iniciar el servicio de OLLAMA para que pueda trabajar correctamente. Para hacer esto, ejecutamos el siguiente comando en una terminal sin cerrar la anterior:

```bash
ollama serve
```

Este comando inicia el servicio de OLLAMA y lo mantiene en escucha permanentemente.

## Paso 3: Ejecutar el modelo de lenguaje

Ahora, podemos ejecutar el modelo de lenguaje LLaMa2 (o el modelo que queramos) para analizar un texto o generar un nuevo texto. Para hacer esto, ejecutamos el siguiente comando en una nueva terminal sin cerrar la anterior:

```bash
ollama run llama2 # codellama, vicuna (o el modelo que queramos)
```
O también puedes usar el script `chat`:
```bash
chat # codellama, vicuna (o el modelo que queramos, por defecto mistral)
```
Este comando ejecuta el modelo de lenguaje OLLAMA para analizar un texto específico y generar un nuevo texto basado en el resultado de la análisis. Los modelos disponibles aquí: [enlace a la página de modelos de OLLAMA](https://ollama.ai/library).

---

> [!TIP]
> # Si lo prefieres en versión web

## Paso 1: Clonar repositorio

```bash
git clone https://github.com/ollama-ui/ollama-ui
```

## Paso 2: Abrir la web
```bash
cd ollama-ui/
make # Ahora ve a la web http://127.0.0.1:8000/
```
