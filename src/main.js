import express from "express";

const app = express();

const PORT = Number(process.env.PORT) || 3000;

app.get('/', (req, res) => {
    res.status(200).json({message: 'This is home API.'})
})

app.listen(PORT, () => {
    console.log(`Server started on PORT ${PORT}`);
})