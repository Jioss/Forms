--query_find
--支持手电筒查询，查询条件的界面字段包括：
--原材料、计价日期从、计价日期至、状态。
create or replace view  CUX_PO_RAW_MATERIALS_B_9510_V  as 
select 
      prmb.ROWID ROW_ID,
      prmb.RAW_MTL_ID,    --原物料ID    
      prmb.RAW_MTL_CODE,    --原物料编码 
      prmt.description,   --说明、描述   支持多语言     
      prmb.SPECIFICATION,   --规格型号        
      prmb.UOM_CODE,        --单位        
      prmb.ENABLED_FLAG,    --是否启用      
      prmb.CURRENCY_CODE,    --币种       
      prmb.CREATION_DATE ,   --创建日期       
      prmb.CREATED_BY,        --创建者 
      prmb.LAST_UPDATED_BY,     --最近更新者   
      prmb.LAST_UPDATE_DATE,    --最近更新日期      
      prmb.LAST_UPDATE_LOGIN,    --最近登录者     
      prmb.ATTRIBUTE_CATEGORY,   --弹性域   
      prmb.ATTRIBUTE1,              
      prmb.ATTRIBUTE2,             
      prmb.ATTRIBUTE3,              
      prmb.ATTRIBUTE4,              
      prmb.ATTRIBUTE5,              
      prmb.ATTRIBUTE6,              
      prmb.ATTRIBUTE7,              
      prmb.ATTRIBUTE8,              
      prmb.ATTRIBUTE9,              
      prmb.ATTRIBUTE10,             
      prmb.ATTRIBUTE11,             
      prmb.ATTRIBUTE12,             
      prmb.ATTRIBUTE13,             
      prmb.ATTRIBUTE14,             
      prmb.ATTRIBUTE15  
from  CUX_PO_RAW_MATERIALS_B_9510  prmb,
      CUX_PO_RAW_MATERIALS_TL_9510 prmt
where prmb.raw_mtl_id = prmt.raw_mtl_id 
  AND prmt.LANGUAGE = userenv('LANG');     
