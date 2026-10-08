FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY src ./src
COPY frontend ./frontend

RUN javac --add-modules jdk.httpserver -d out src/*.java

EXPOSE 8080

CMD ["java", "--add-modules", "jdk.httpserver", "-cp", "out", "LibraryServer"]