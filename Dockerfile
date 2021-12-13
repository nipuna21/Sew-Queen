FROM ravindu01manoj/sewqueen:lovegift

RUN git clone https://github.com/nipuna21/nini-bot /root/QueenSewWhatsappBot
WORKDIR /root/QueenSewWhatsappBot/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "sew.js"]
