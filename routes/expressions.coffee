express = require("express")
router = express.Router()

router.get "/", (req, res) ->
  res.json message: "An About Me page"

module.exports = router