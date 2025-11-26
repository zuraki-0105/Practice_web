# ビルド用ステージ
FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn -B -DskipTests clean package

# 実行用ステージ
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# ここの JAR 名は自分のプロジェクトに合わせて変更
# 例: demo-0.0.1-SNAPSHOT.jar など
COPY --from=build /app/target/practice_web-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080
CMD ["java", "-jar", "app.jar"]


