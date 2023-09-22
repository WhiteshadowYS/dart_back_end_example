FROM dart:3.1

LABEL name="base_project"
LABEL version="0.1"

# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

COPY . .

EXPOSE 8000