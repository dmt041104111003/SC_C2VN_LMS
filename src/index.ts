import express from 'express'
import cors from 'cors'
import router from './routers/index.route'
const app = express()

app.use(cors())
app.use(express.json())

app.get('/', (req, res) => {
    res.json({ message: 'Hello from Express on Vercel!' })
})
router(app)

const PORT = Number(process.env.PORT || 3001)
app.listen(PORT, function () {
    console.log(`http://localhost:${PORT}`)
})

export default app
