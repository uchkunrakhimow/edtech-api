# @edtech/api

@edtech platformasi uchun REST API.

## Texnologiyalar

- Node.js (v22+)
- Express
- TypeScript
- Prisma (PostgreSQL)
- Zod (validatsiya)
- JWT (autentifikatsiya)
- Swagger (API dokumentatsiya)

## O'rnatish

```bash
# Kerakli paketlarni o'rnatish
bun install # Menga bun bilan ishlash yoqimli

# .env faylini yaratish
cp .env.example .env
# .env faylini o'zingizga moslab tahrirlang
```

## Dasturni ishga tushirish

```bash
# Development rejimida ishga tushirish
bun run start:dev

# Production uchun build qilish
bun run build

# Production rejimida ishga tushirish
bun run start
```

## Ma'lumotlar bazasi bilan ishlash

```bash
# Prisma migratsiyalarini yaratish
bun run prisma:migration

# Test ma'lumotlarini yuklash
bun run prisma:seed

# Ma'lumotlar bazasi sxemasini generatsiya qilish
bun run prisma:generate

# Prisma Studio orqali ma'lumotlar bazasini ko'rish
bun run prisma:studio
```

## API haqida

API quyidagi modullardan iborat:

1. **Foydalanuvchilar** - `/user` - Foydalanuvchilarni boshqarish
2. **Autentifikatsiya** - `/auth` - Ro'yxatdan o'tish va tizimga kirish
3. **Kurslar** - `/course` - Kurslarni boshqarish
4. **Ro'yxatdan o'tishlar** - `/enrollment` - Kurslarga ro'yxatdan o'tish
5. **Testlar** - `/test` - Kurslar uchun testlar
6. **Test natijalari** - `/test-result` - Foydalanuvchilarning test natijalari

## API dokumentatsiyasi

API to'liq dokumentatsiyasini ko'rish uchun serverni ishga tushirib, brauzeringizda quyidagi manzilga kiring:

```
http://localhost:3000/api-docs
```

## Docker bilan ishga tushirish

```bash
# Docker compose yordamida ishga tushirish
docker-compose up -d

# Docker image yaratish
docker build -t edtech-api .
```
