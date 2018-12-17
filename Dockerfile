FROM debian:sid-slim

RUN apt-get update
RUN apt-get install -y pandoc
RUN apt-get install -y texlive-latex-base
RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-fonts-recommended
RUN apt-get install -y texlive-fonts-extra

RUN apt-get autoclean

# Setup fonts and TeX config.
RUN mktexpk --mfmode / --bdpi 600 --mag 1+0/600 --dpi 600 ectt1000

WORKDIR /source

CMD ["/bin/bash"]
