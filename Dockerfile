ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"
RUN mkdir QR
RUN apt update 
RUN apt upgrade -y 
RUN apt install git -y 
RUN apt install nodejs -y
RUN cd QR
RUN git clone https://github.com/Krakinz/MizukyQR.git
RUN cd MizukyQR
WORKDIR /MizukyQR
RUN npm install @adiwajshing/baileys
RUN npm fix --force
CMD node index.js
