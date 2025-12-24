FROM node:18

WORKDIR /app

# Copy everything
#COPY . .
COPY package.json  ./
COPY packages/app/package.json packages/app/
COPY packages/backend/package.json packages/backend/

# Enable yarn
RUN corepack enable

# Install deps
RUN yarn install

# Build Backstage
RUN yarn build

# Expose backend port
EXPOSE 7007

# Start backend
CMD ["yarn", "start"]

