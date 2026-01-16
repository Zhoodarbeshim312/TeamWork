-- CreateEnum
CREATE TYPE "Role" AS ENUM ('USER', 'ADMIN');

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" "Role" NOT NULL DEFAULT 'USER',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Data" (
    "id" SERIAL NOT NULL,
    "img" TEXT DEFAULT 'https://retrotok.ru/upload/resize_cache/webp/bitrix/templates/unimagazin_s1/images/noimg/no-img.webp',
    "images" TEXT[] DEFAULT ARRAY[]::TEXT[],
    "title" TEXT NOT NULL,
    "category" TEXT,
    "nationality" TEXT,
    "dateOfBirth" TEXT,
    "age" INTEGER,
    "placeOfBirth" TEXT,
    "dateOfDeath" TEXT,
    "coach" TEXT,
    "height" INTEGER,
    "weight" INTEGER,
    "mastery" TEXT,
    "achievements" TEXT,
    "works" TEXT,
    "biography" TEXT,
    "interestingFact" TEXT,
    "family" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Data_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
