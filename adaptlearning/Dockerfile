FROM node:10-buster
WORKDIR /opt/
RUN git clone https://github.com/adaptlearning/adapt_authoring.git
RUN npm install -g grunt-cli
WORKDIR /opt/adapt_authoring
RUN npm install --production
ADD config.json conf/config.json
RUN git config --global user.name "Your Name"; \
	git config --global user.email "youremail@example.com"
ADD startup.sh /opt/adapt_authoring/
EXPOSE 5000
ENTRYPOINT ["./startup.sh"]
