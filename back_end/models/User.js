const mongoose=require('mongoose')
const userschema=mongoose.Schema({
    
    username:{
        type:String,
        required:true

    },
    mobilenumber:{
        type:Number,
        required:true,


    },
    email:{
        type:String,
        required:true,
        unique:true,
        match:/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/

    },
    password:{
        type:String,
        required:true

    },
    street:{
        type:String,
        required:true

    },
    city:{
        type:String,
        required:true

    },
    state:{
        type:String,
        required:true

    },
    pincode:{
        type:String,
        required:true

    },
    type:{
        type:String,
        required:true

    },
    isVerified: { type: Boolean, default: false },

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