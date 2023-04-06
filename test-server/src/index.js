const express = require("express");
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

app.get("/products", (req, res) => {
  console.log("get products");
  const products = [
    {
      name: "Shovel",
      description: "It's like a big spoon for dirt and stuff.",
      price: 9.0,
    },
    {
      name: "Bug Net",
      description: "Catch those creepy crawlies.",
      price: 11.0,
    },
    {
      name: "Fishing Rod",
      description: "A rod used for fishing and the like.",
      price: 12.6,
    },
  ];
  return res.json({ products });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
