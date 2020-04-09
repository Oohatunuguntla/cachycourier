const mongoose=require('mongoose')
const userschema=mongoose.Schema({
    
   
    email:{
        type:String,
        required:true,
        unique:true,
        match:/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/

    },
    name:{
        type:String,
        required:true
    },
    password:{
        type:String,
        required:true

    },
    isVerified: { type: Boolean, default: false },
    
    type:{
        type:String,
        

    },
   city:{
        type:String,
        required:true
   },
   pin:{
        type:Number,
        required:true
   },
   mobilenumber:{
        type:String,
        required:true
   },

    resetPasswordToken:{
        type:String,
        default:" "
    },

    resetPasswordExpires:{
        type: Date,
        default:Date.now()
    },


});
module.exports=mongoose.model('user',userschema);