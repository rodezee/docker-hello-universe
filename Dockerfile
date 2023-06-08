FROM busybox:latest

RUN echo -e "\
#! /bin/sh\n\
sleep 1 && echo 1 \n\
sleep 1 && echo 2 \n\
sleep 1 && echo 3 \n\
sleep 1 && echo 4 \n\
sleep 1 && echo 5 \n\
echo \"hello universe\"\n\
" > /root/run.sh

RUN chmod +x /root/run.sh

ENTRYPOINT ["/bin/sh"]

CMD ["/root/run.sh"]
