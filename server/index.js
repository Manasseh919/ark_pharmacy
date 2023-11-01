// console.log("hello world");

const express = require("express");
const authRouter = require("./routes/auth")
const PORT = 4000;

const app = express();

//middleware
app.use(authRouter);


//creating api

//GET,PUT,POST,DELETE,UPDate
app.listen(PORT, () => {
  console.log(`Connected at port ${PORT}`);
});
