const express = require("express");


const app = express();
const PORT = 3000;

// Simple controller route
app.get("/api/hello", (req, res) => {
  res.json({ message: "Hello World 🌍 from Node.js API" });
});

// Start server
app.listen(PORT, () => {
  console.log(`✅ Server running on http://localhost:${PORT}`);
});
