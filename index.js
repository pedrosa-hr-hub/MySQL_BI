const Excel = require('xlsx');
const fs = require('fs');
require('dotenv').config();

     fs.open( process.env.NODE_ROUTE_FS , (err , arq) => {
     if (arq) {
          const wb = Excel.readFile(arq, { dateNF: "dd/mm/yyyy"});
               
          const ws = wb.Sheets['log_carteira'];
     
          const data = Excel.utils.sheet_to_json(ws, {raw: false});
               
          fs.writeFile("./investments.json", JSON.stringify(data), err =>{
               if(err){
                    console.log(err)
               }
               });
                    
          }else{
               console.log(err)
          }
     });


