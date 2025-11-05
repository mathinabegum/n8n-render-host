# Use official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Expose port
EXPOSE 5678

# Start n8n directly
CMD ["n8n", "start"]
