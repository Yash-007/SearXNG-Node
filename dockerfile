FROM searxng/searxng:latest

# Copy the settings files into the container
COPY ./settings/settings-1.yml /etc/searxng/settings.yml
COPY ./settings/settings-2.yml /usr/local/searxng/searx/settings.yml

# Expose port for web access
EXPOSE 8888

# Command to run the application
CMD ["searxng"]
