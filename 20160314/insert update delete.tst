PL/SQL Developer Test script 3.0
7
begin
  -- Call the procedure
  cux_plsql_autocreate.form_view_iud(p_block_name => :p_block_name,
                                     p_table_name => :p_table_name,
                                     p_owner => :p_owner,
                                     p_primary_key => :p_primary_key);
end;
4
p_block_name
1
﻿MATERIALS
5
p_table_name
1
﻿CUX_PO_RAW_MATERIALS_TL_9510
5
p_owner
1
﻿CUX
5
p_primary_key
1
﻿RAW_MTL_ID
5
0
