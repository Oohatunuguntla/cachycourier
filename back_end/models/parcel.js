const mongoose=require('mongoose')
const parcelschema=mongoose.Schema({
    id:{
        type:String,
        unique:true,

    },
    email:{
        type:String,
        
        match:/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/

    },
    timetopick:{
        type:String,
       
    },
    weight:{
        type:Number,
        
    },
    sourceaddress:{
        type:String,
      
    },
    destinationaddress:{
        type:String,
       
    },
    parceltype:{
        type:String,
        
    },
    pool:{
        type:Boolean,
        
    },
    reached:{
       
    },
    cost:{
        type:Number,
       
    },
    promocode:{
        type:String,
    }

});
module.exports=mongoose.model('parcel',parcelschema);