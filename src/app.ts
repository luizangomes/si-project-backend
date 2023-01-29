import express from "express"
import prisma from "./prisma" // importing the prisma instance we created.

const app = express()
app.use(express.json())

const PORT = process.env.PORT || 3000

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`))

//CRUD USER
// CREATE
app.post("/users", async (req, res) => {
    try {
        const { email, nome, reports } = req.body

        const newUser = await prisma.user.create({
            data: {
                email,
                nome,
                reports,
            },
        })

        res.json(newUser)
    } catch (error: any) {
        console.log(error.message)
        res.status(500).json({
            message: "Internal Server Error",
        })
    }
})

// READ
app.get("/users", async (req, res) => {
    try {
        const users = await prisma.user.findMany({
            include: {
                reports: true,
            },
        })

        res.json(users)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})

// READ
app.get("/users/:id", async (req, res) => {
    try {
        const { id } = req.params
        const users = await prisma.user.findUnique({
            where: {
                id,
            },
            include: {
                reports: true,
            },
        })

        res.json(users)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})


// UPDATE
app.put("/users/:id", async (req, res) => {
    try {
        const { email, nome, reports } = req.body
        const { id } = req.params

        const updatedUser = await prisma.user.update({
            where: {
                id,
            },
            data: {
                nome,
                email,
                reports,
            },
        })

        res.json(updatedUser)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})

// DELETE
app.delete("/users/:id", async (req, res) => {
    try {
        const { id } = req.params

        const deletedUser = await prisma.user.delete({
            where: {
                id,
            },
        })

        res.json(deletedUser)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})

// CRUD REPORTS

// CREATE
app.post("/reports", async (req, res) => {
    try {
        const { content, userId, medicationId } = req.body

        const newReport = await prisma.report.create({
            data: {
                content,
                userId,
                medicationId
            }
        })

        res.json(newReport)
    } catch (error: any) {
        console.log(error.message)
        res.status(500).json({
            message: "Internal Server Error",
        })
    }
})

// READ
app.get("/reports", async (req, res) => {
    try {
        const reports = await prisma.report.findMany({
        })

        res.json(reports)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})


// UPDATE
app.put("/reports/:id", async (req, res) => {
    try {
        const { content, userId, medicationId } = req.body
        const { id } = req.params

        const updatedReport = await prisma.report.update({
            where: {
                id,
            },
            data: {
                content,
                userId,
                medicationId
            },
        })

        res.json(updatedReport)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})

// DELETE
app.delete("/reports/:id", async (req, res) => {
    try {
        const { id } = req.params

        const deletedReport = await prisma.report.delete({
            where: {
                id,
            },
        })

        res.json(deletedReport)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})


// CRUD MEDICATIONS

// CREATE
app.post("/medications", async (req, res) => {
    try {
        const { nome, tipo, quantity, estoque, dataInicio, dataFim, horario } = req.body

        const newMed = await prisma.medication.create({
            data: {
                nome,
                tipo,
                quantity,
                estoque,
                dataInicio,
                dataFim,
                horario
            },
        })

        res.json(newMed)
    } catch (error: any) {
        console.log(error.message)
        res.status(500).json({
            message: "Internal Server Error",
        })
    }
})

// READ
app.get("/medications", async (req, res) => {
    try {
        const medications = await prisma.medication.findMany({
            include: {
                reports: true,
            },
        })

        res.json(medications)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})

app.get("/medications/onlyNames", async (req, res) => {
    try {
        const medications = await prisma.medication.findMany({
            select: {
                nome: true
            }
        })

        res.json(medications)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})

// UPDATE
app.put("/medications/:id", async (req, res) => {
    try {
        const { nome, tipo, quantity, estoque, dataInicio, dataFim, horario } = req.body
        const { id } = req.params

        const updatedMedication = await prisma.medication.update({
            where: {
                id,
            },
            data: {
                nome,
                tipo,
                quantity,
                estoque,
                dataInicio,
                dataFim,
                horario
            },
        })

        res.json(updatedMedication)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})

// DELETE
app.delete("/medications/:id", async (req, res) => {
    try {
        const { id } = req.params

        const deletedMedication = await prisma.medication.delete({
            where: {
                id,
            },
        })

        res.json(deletedMedication)
    } catch (error) {
        res.status(500).json({
            message: "Something went wrong",
        })
    }
})