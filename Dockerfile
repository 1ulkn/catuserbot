FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/sandy1709/catuserbot.git /root/catuserbot
#working directory 
WORKDIR /root/catuserbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
