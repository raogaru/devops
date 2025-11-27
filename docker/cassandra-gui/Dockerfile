FROM datastax/dse-studio:latest
ENV DS_LICENSE=accept 

# Expose the Studio web UI
EXPOSE 9091

# Optional: Set default timezone
ENV TZ=UTC

# Studio uses an internal startup script
CMD ["/start-studio.sh"]

