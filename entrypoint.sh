#!/bin/bash
service nginx start
cd /app
gunicorn --bind unix:/app/gunicorn.sock main:app
# Flask by default does not support uvicorn/asgi, but if you replace it with something that does use this instead
# gunicorn -k uvicorn.workers.UvicornWorker --bind unix:/app/gunicorn.sock main:app
