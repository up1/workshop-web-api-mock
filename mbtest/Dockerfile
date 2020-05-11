FROM node:14.2.0-stretch-slim
ENV DEBIAN_FRONTEND=noninteractives 
RUN npm install -g mountebank --production
ADD resources/imposters /mb/
RUN ln -s /usr/bin/nodejs /usr/bin/node
EXPOSE 2525
EXPOSE 8010
CMD ["mb", "--configfile", "/mb/imposters.ejs", "--allowInjection"]