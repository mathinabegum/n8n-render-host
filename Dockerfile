# Use the official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Copy your workflow file (exported from local n8n)
COPY instant_rag_builder.json /home/node/workflow.json

# Ensure permissions
RUN chown -R node:node /home/node

# Switch to node user (n8n runs as node inside its container)
USER node

# Default environment
ENV N8N_PORT=5678
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Import workflow and start n8n
CMD ["sh", "-c", "n8n import:workflow --input=/home/node/workflow.json && n8n start"]
