import express from "express"
import prisma from "./prisma" // importing the prisma instance we created.

const app = express()
app.use(express.json())

const PORT = process.env.PORT || 3000

app.listen(PORT, () => console.log(`Server is running on port ${PORT}`))

// CREATE
app.post("/reports")
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