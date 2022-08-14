FROM  --platform=$TARGETPLATFORM python:alpine3.10
ARG TARGETPLATFORM
WORKDIR /app
RUN  echo "construyendo para $TARGETPLATFORM" > /log
COPY . .
CMD [ "python", "main.py" ]