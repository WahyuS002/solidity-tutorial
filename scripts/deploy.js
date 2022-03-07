const hre = require("hardhat");

async function main() {
  const SimpleStorage = await hre.ethers.getContractFactory("SimpleStorage");
  const simpleStorage = await SimpleStorage.deploy();

  await simpleStorage.deployed();

  console.log("This smart contract is deployed to:", simpleStorage.address);

  const text = await simpleStorage.text();
  console.log(`text is ${text}`);

  const set = await simpleStorage.set("Wahyu Syahputra");
  console.log(`updated text is ${set}`);

  const get = await simpleStorage.get();
  console.log(`get text is ${get}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
