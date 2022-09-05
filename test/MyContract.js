const { loadFixture } = require("@nomicfoundation/hardhat-network-helpers");
const { expect } = require("chai");

describe("MyContract", function () {
	let contract;

	it("Deploys with hardcoded 1", async function () {
		const Factory = await hre.ethers.getContractFactory("MyContract");
		contract = await Factory.deploy();
		await contract.deployed();
	});

	it("Returns 2 instead", async function () {
		expect(await contract.foo()).to.equal(2);
	});
});
