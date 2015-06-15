FROM node:0.10.38
MAINTAINER Emmanuel (Manny) Narh <eanarh@gmail.com>

RUN cd /tmp \
	&& apt-get update \
	&& apt-get install xfonts-base -y \
	&& apt-get install xfonts-75dpi -y \
	&& curl -SLO "http://downloads.sourceforge.net/project/wkhtmltopdf/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb" \
	&& dpkg -i wkhtmltox-0.12.2.1_linux-jessie-amd64.deb \
	&& apt-get install -f -y \
	&& apt-get install xserver-common -y

CMD ["node"]