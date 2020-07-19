var express = require('express');
var router = express.Router();
const bcrypt = require('bcryptjs');
const parcelassignment=require('../models/parcelassignment');
const user = require('../models/User');
router.get('/', async (req, res, next) => {
    console.log('statistiics url')
    console.log(req.url)
    var decoded=decodeURIComponent(req.url)
    console.log(decoded)
    //List parts = req.url.Split(new char[] {'?','&'});
    email='tunuguntlaooha1234@gmail.com'
    user.find({ email: email })
    const userdetails=await user.findOne({email:email});
    console.log(userdetails['type'])
    if(userdetails['type']=='deliveryguy')
    {
        parcelassignment.find({toemail:email})
        .exec()
        .then(
            parcelassignmentdetails=>{
                console.log(len(parcelassignmentdetails))

                res.status(200).send({statitics:parcelassignmentdetails});
            }
        )
    }
    else if (userdetails['type']=='customer') {
        console.log('finding in database')
        parcelassignment.find({fromemail:email})
        .exec()
        .then(
            parcelassignmentdetails=>{
                console.log(parcelassignmentdetails[0])
                res.status(200).send({statitics:parcelassignmentdetails});
            }
        )
        
    }
    
    //   .exec()
    //   .then(
    //     userdetails=>{
    //     if(userdetails)
    //     res.status(200).send({ statistics: statistics });
    //     })
  
  });
  module.exports=router;