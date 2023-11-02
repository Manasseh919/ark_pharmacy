// console.log("hello world");

const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");
const PORT = 4000;

const app = express();
const DB = 'mongodb+srv://manasseh919:manasseh4313@cluster0.idiztmr.mongodb.net/'

//middleware
app.use(express.json())
app.use(authRouter);

//connections
mongoose

//manasseh4313
  .connect(DB)
  .then(() => {
    console.log("connecion succesfult",mongoose.connection.host);
  })
  .catch((e) => {
    console.log(e);
  });

//creating api

//GET,PUT,POST,DELETE,UPDate
app.listen(PORT, () => {
  console.log(`Connected at port ${PORT}`);
});
