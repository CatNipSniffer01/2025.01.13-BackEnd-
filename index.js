const express = require("express")
const app = express()
const cors = require("cors")
const backendRouter = require("./Routes/backend")

app.use(express.json())
app.use(cors({ origin: "http://localhost:4200" }))


app.get("/", (req, res) => { res.json({ "message": "Minden OK" }) })

app.use("/backend", backendRouter)

app.use((err, req, res, next) => {
    console.log(err.message, err.stack)
    res.status(err.statusCode || 500).json({ "message": err.message })
    return
}

)
app.listen(3000, () => console.log("A szerver fut a 3000-es porton!"))