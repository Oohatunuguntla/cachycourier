var express = require('express');
var router = express.Router();
const bcrypt = require('bcryptjs');
const notification=require('../models/notification');




router.get('/', async (req, res, next) => {
  //console.log(req.url)
  var decoded=decodeURIComponent(req.url)
  console.log(decoded)
  //List parts = req.url.Split(new char[] {'?','&'});
  email='tunuguntlaooha1234@gmail.com'
  notification.find({ email: email })
    .exec()
    .then(
      notificationss=>{
      console.log(notificationss);
      res.status(200).send({ notification: notificationss });
      })

});
      
    


module.exports = router;