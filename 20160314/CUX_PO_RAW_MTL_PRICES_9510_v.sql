CREATE OR REPLACE VIEW CUX_PO_RAW_MTL_PRICES_9510_V AS
SELECT prmp.rowid row_id,
               prmp.raw_mtl_id,
               prmp.price_id,
               prmp.pricing_date,--计价日期
               prmb.raw_mtl_code, --原物料编码
               prmt.description, --说明、描述   支持多语言
               prmb.specification, --规格型号
               prmb.uom_code, --单位
               prmb.currency_code, --币种
               prmb.creation_date, --创建日期
               prmp.unit_price, --价格：必输项，手工录入，保留两位小数的正数数字格式。
               prmp.status_code, --状态：仅显示，新增记录时默认为“新建”。
               prmp.submitted_by, --提交人：仅显示，来源
               prmp.submit_date, --提交日期：仅显示。
               prmp.approved_by, --审批人：仅显示，来源
               prmp.approve_date, --审批日期：仅显示。
               prmp.comments, --备注：手工录入。
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
