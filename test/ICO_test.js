const ICO = artifacts.require("ICO.sol");


// let ico = await ICO.deployed()
// console.log(ico);

// ICO.deployed()
//     .then(instance=>{
//         console.log(instance);        
//     });
ICO.deployed()
    .then(instance =>{
        instance.AddToWhiteList("0x55eE1D15fE87fe0a031A8F2f4d001F339f3dF58A");
        instance.AddToWhiteList("0xc257167dFB89b32f4CD478Dd3A99B9D3e3dAC709");
    });
ICO.deployed()
    .then(instance=>{
        instance.ExistInList("0x55eE1D15fE87fe0a031A8F2f4d001F339f3dF58A")
    });
ICO.deployed()
    .then(inst=>{
        inst.donateToken("0xc257167dFB89b32f4CD478Dd3A99B9D3e3dAC709",20);
    });
ICO.deployed()
    .then(inst=>{
        inst.balanceOf("0xc257167dFB89b32f4CD478Dd3A99B9D3e3dAC709")
    })