-- CreateTable
CREATE TABLE "Medication" (
    "id" SERIAL NOT NULL,
    "nome" TEXT,
    "quantity" INTEGER NOT NULL,

    CONSTRAINT "Medication_pkey" PRIMARY KEY ("id")
);
