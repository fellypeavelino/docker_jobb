FROM ubuntu:18.04
WORKDIR "/application"
ENV TZ=America/Sao_Paulo
# Install selected extensions and other stuff
RUN apt-get update \
	&& apt-get -y install tzdata \
	&& DEBIAN_FRONTEND="noninteractive" \
	&& apt-get install software-properties-common -y \
	&& add-apt-repository ppa:ondrej/php -y \
	&& apt-get install php5.6 php5.6-cli php5.6-fpm php5.6-common php5.6-json php5.6-pdo php5.6-mysql php5.6-pgsql php5.6-zip php5.6-gd php5.6-xdebug php5.6-mbstring php5.6-curl php5.6-xml php5.6-bcmath -y \
	&& apt-get install composer -y\
	&& apt-get install apache2 -y \
	&& apt-get install libapache2-mod-php5.6 -y
		
# && apt-get install mysql-server -y 
	
# EXPOSE 80/tcp

# ENTRYPOINT service start apache2
	
	


