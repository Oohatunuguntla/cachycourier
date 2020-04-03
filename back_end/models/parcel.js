const mongoose=require('mongoose')
const parcelschema=mongoose.Schema({
    id:{
        type:String,
        unique:true,

    },
    email:{
        type:String,
        required:true,
        match:/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/

    },
    weight:{
        type:Number,
        required:true
    },
    sourceaddress:{
        type:String,
        required:true
    },
    destinationaddress:{
        type:String,
        required:true
    },
    parceltype:{
        type:String,
        required:true
    },
    pool:{
        type:Boolean,
        required:true
    },
    reached:{
        type:Boolean,
        required:true
    },
    cost:{
        type:Number,
        required:true
    }

});
module.exports=mongoose.model('parcel',parcelschema);