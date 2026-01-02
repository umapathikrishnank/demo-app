FROM node:24-alpine AS builder
WORKDIR /app

RUN node -v && npm -v

# 🔍 This shows files copied from Cloud Build /workspace
# (Docker context = repo root)


COPY package*.json ./


RUN npm install

COPY . .


# 🔨 Build Next.js
RUN npm run build


RUN echo "=== BUILD STAGE COMPLETED ==="


# ---------- Runtime stage ----------
FROM node:24-alpine
WORKDIR /app

ENV NODE_ENV=production


# 📦 Copy build artifacts from builder stage
COPY --from=builder /app ./


EXPOSE 8080

CMD ["npm","run","start","--","-p","8080"]

RUN echo "Application started"