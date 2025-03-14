FROM node:22-alpine AS base
RUN apk add --no-cache curl bash
RUN npm install -g pm2@latest

RUN curl -fsSL https://bun.sh/install | bash
ENV PATH=/root/.bun/bin:$PATH

WORKDIR /app

COPY package.json bun.lock ./
COPY client/package.json client/bun.lock ./client/
COPY prisma ./prisma/

RUN bun install --frozen-lockfile

RUN if [ "$(uname -m)" = "aarch64" ]; then \
      bun add @rollup/rollup-linux-arm64-musl --no-save; \
    elif [ "$(uname -m)" = "x86_64" ]; then \
      bun add @rollup/rollup-linux-x64-musl --no-save; \
    fi

RUN cd client && bun install --frozen-lockfile

COPY . .

RUN bun run build && cd client && bun run build

RUN if [ ! -f .env ]; then cp .env.example .env; fi

EXPOSE 3000

CMD ["pm2-runtime", "./dist/index.js", "--no-autorestart"]