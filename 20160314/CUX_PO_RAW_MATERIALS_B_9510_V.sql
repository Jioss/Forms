--query_find
--֧���ֵ�Ͳ��ѯ����ѯ�����Ľ����ֶΰ�����
--ԭ���ϡ��Ƽ����ڴӡ��Ƽ���������״̬��
create or replace view  CUX_PO_RAW_MATERIALS_B_9510_V  as 
select 
      prmb.ROWID ROW_ID,
      prmb.RAW_MTL_ID,    --ԭ����ID    
      prmb.RAW_MTL_CODE,    --ԭ���ϱ��� 
      prmt.description,   --˵��������   ֧�ֶ�����     
      prmb.SPECIFICATION,   --����ͺ�        
      prmb.UOM_CODE,        --��λ        
      prmb.ENABLED_FLAG,    --�Ƿ�����      
      prmb.CURRENCY_CODE,    --����       
      prmb.CREATION_DATE ,   --��������       
      prmb.CREATED_BY,        --������ 
      prmb.LAST_UPDATED_BY,     --���������   
      prmb.LAST_UPDATE_DATE,    --�����������      
      prmb.LAST_UPDATE_LOGIN,    --�����¼��     
      prmb.ATTRIBUTE_CATEGORY,   --������   
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
