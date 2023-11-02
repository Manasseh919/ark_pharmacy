const express = require("express");
const User = require("../models/user");
const bcryptjs = require("bcryptjs");
const authRouter = express.Router();

authRouter.post("/api/signup", async (req, res) => {
  // get data from the client
  try {
    const { name, email, password } = req.body;

    const existingUser = await User.findOne({ email });

    if (existingUser) {
      return res.status(409).json({ msg: "Email already in use" });
    }

   const hashedPassword = await  bcryptjs.hash(password, 8);

    let user = new User({
      email,
      password: hashedPassword,
      name,
    });

    user = await user.save();
    res.json(user);
    // post that data to the database

    //return that data to the user
  } catch (e) {
    res.status(500).json({ error: e.message });
  }
});

module.exports = authRouter;