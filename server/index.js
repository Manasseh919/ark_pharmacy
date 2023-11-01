// console.log("hello world");

const express = require("express");
const PORT = 4000;

const app = express();

//creating api
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Connected at port ${PORT}` );
});
