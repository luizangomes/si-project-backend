import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
    // const newUser = await prisma.user.create({
    //     data: {
    //         email: 'luizangomes@outlook.com',
    //         nome: 'Luiza N Gomes',
    //         reports: {},
    //     },
    // });

    // const newMed = await prisma.medication.create({
    //     data: {
    //         nome: 'Clonazepam',
    //         quantity: 15,
    //     }
    // });

    const newReport = await prisma.report.create({
        data: {
            content: 'Não sei o que esse remédio faz...',
            userId: 1,
            medicationId: 1,
        }
    })

    // const allUsers = await prisma.user.findMany();
    // const allMeds = await prisma.medication.findMany();
    const allReports = await prisma.report.findMany();
    // console.dir(allUsers, { depth: null });
    // console.dir(allMeds, { depth: null });
    console.dir(allReports, { depth: null });
}

main();

