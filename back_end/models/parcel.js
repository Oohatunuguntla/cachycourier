const mongoose=require('mongoose')
const parcelschema=mongoose.Schema({
    sourceid:{
        type:String,
    },
    timetopick:{
        type:String,
       
    },
    weight:{
        type:String,
        
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
    status:{
        type:String,
    },
    cost:{
        type:String,
       
    },
    promocode:{
        type:String,
    }

});
module.exports=mongoose.model('parcel',parcelschema);