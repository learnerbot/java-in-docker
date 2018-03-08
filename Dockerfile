FROM gradle:jdk9

RUN mkdir -p /home/gradle/app

WORKDIR /home/gradle/app

COPY . .

USER root

RUN chown -R gradle:gradle /home/gradle/app

USER gradle

# Define default command.
CMD ["gradle", "--no-daemon", "--console", "plain", "runapp"]
