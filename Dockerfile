FROM n8nio/n8n:latest
WORKDIR /home/node
EXPOSE 5678
CMD ["tini", "--", "n8n", "start"]
