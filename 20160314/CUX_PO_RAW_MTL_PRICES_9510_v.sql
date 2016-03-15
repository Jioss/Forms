CREATE OR REPLACE VIEW CUX_PO_RAW_MTL_PRICES_9510_V AS
SELECT prmp.rowid row_id,
               prmp.raw_mtl_id,
               prmp.price_id,
               prmp.pricing_date,--�Ƽ�����
               prmb.raw_mtl_code, --ԭ���ϱ���
               prmt.description, --˵��������   ֧�ֶ�����
               prmb.specification, --����ͺ�
               prmb.uom_code, --��λ
               prmb.currency_code, --����
               prmb.creation_date, --��������
               prmp.unit_price, --�۸񣺱�����ֹ�¼�룬������λС�����������ָ�ʽ��
               prmp.status_code, --״̬������ʾ��������¼ʱĬ��Ϊ���½�����
               prmp.submitted_by, --�ύ�ˣ�����ʾ����Դ
               prmp.submit_date, --�ύ���ڣ�����ʾ��
               prmp.approved_by, --�����ˣ�����ʾ����Դ
               prmp.approve_date, --�������ڣ�����ʾ��
               prmp.comments, --��ע���ֹ�¼�롣
               prmp.created_by,
               prmp.last_updated_by,
               prmp.last_update_date,
               prmp.last_update_login,
               prmp.attribute_category,
               prmp.attribute1,
               prmp.attribute2,
               prmp.attribute3,
               prmp.attribute4,
               prmp.attribute5,
               prmp.attribute6,
               prmp.attribute7,
               prmp.attribute8,
               prmp.attribute9,
               prmp.attribute10,
               prmp.attribute11,
               prmp.attribute12,
               prmp.attribute13,
               prmp.attribute14,
               prmp.attribute15

          FROM cux_po_raw_mtl_prices_9510   prmp,
               cux_po_raw_materials_b_9510  prmb,
               cux_po_raw_materials_tl_9510 prmt,
               fnd_user                     fu,
               hr_employees                 he,
               fnd_lookup_values_vl         flvl
         WHERE prmb.raw_mtl_id = prmt.raw_mtl_id
           AND prmb.raw_mtl_id = prmp.raw_mtl_id
           AND prmp.approved_by = fu.user_id
           AND prmp.submitted_by = fu.user_id
           AND fu.employee_id = he.employee_id(+)
           AND flvl.lookup_type = 'CUX_PO_RAW_PRICE_STATUS_9510'
           AND prmp.status_code = flvl.lookup_code(+)
           AND prmt.language = userenv('LANG');