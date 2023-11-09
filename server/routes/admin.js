const express = require("express");
const admin = require("../middlewares/admin");
const adminRouter = express.Router();

//add product

adminRouter.post("/admin/add-product", admin, async (req, res) => {
  try {
    const { name, description, images, quantity, price, category } = req.body;
    
  } catch (error) {
    res.status(500).json({ error: e.message });
  }
});
