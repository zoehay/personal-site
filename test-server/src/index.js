const express = require("express");
const { PrismaClient } = require('@prisma/client')

const prisma = new PrismaClient()
const app = express();
const PORT = 8000;
const cors = require("cors");

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(
  cors({
    origin: "https://zoemhay.com",
    methods: "GET,PUT,POST,DELETE",
    credentials: true,
    allowedHeaders: ["content-type", "cookie", "credentials"],
  })
);

app.get("/products", async (req, res) => {
  console.log("get products");
  const products = await prisma.product.findMany();
  return res.json({ products });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
