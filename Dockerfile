# Use the base image you are using in your `docker run` command
FROM ghcr.io/mckaywrigley/chatbot-ui:main

# Set environment variables
ENV OPENAI_API_KEY=${OPENAI_API_KEY}
ENV OPENAI_API_HOST=${OPENAI_API_HOST}
ENV OPENAI_API_TYPE=${OPENAI_API_TYPE}
ENV OPENAI_API_VERSION=${OPENAI_API_VERSION}
ENV DEFAULT_MODEL=${DEFAULT_MODEL}
ENV NEXT_PUBLIC_DEFAULT_SYSTEM_PROMPT=${NEXT_PUBLIC_DEFAULT_SYSTEM_PROMPT}
ENV NEXT_PUBLIC_DEFAULT_TEMPERATURE=${NEXT_PUBLIC_DEFAULT_TEMPERATURE}

# Expose the port the app runs on
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
