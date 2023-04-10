const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient({ log: ["query"] });

async function main() {
  console.log("Seed");
  let products = [
    {
        name: "BBQ",
        description: "Throw some stuff on this. It will then cook..",
        price: 340.0,
    },
    {
        name: "Basic Axe",
        description: "Chop down trees and plants..",
        price: 10.0,
    },
    {
        name: "Bananas",
        description: "Squishy",
        price: 4.96,
    }
  ];

  await Promise.all(
    products.map(async (product) => {
      await prisma.product.create({
        data: product,
      });
    })
  );

  // let product1 = await prisma.product.upsert({
  //   where: {
  //       name: 'BBQ',
  //   },
  //   create: {
  //       name: "BBQ",
  //       description: "Throw some stuff on this. It will then cook..",
  //       price: 340.0,
  //   }
  // })
  // console.log(product1)

  // let product2 = await prisma.product.upsert({
  //   where: {
  //       name: 'Basic Axe',
  //   },
  //   create: {
  //       name: "Basic Axe",
  //       description: "Chop down trees and plants..",
  //       price: 10.0,
  //   }
  // })
  // console.log(product2)
  
  // let product3 = await prisma.product.upsert({
  //   where: {
  //       name: 'Bananas',
  //   },
  //   create: {
  //       name: "Bananas",
  //       description: "Squishy",
  //       price: 4.96,
  //   }
  // })
  // console.log(product3)

}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
