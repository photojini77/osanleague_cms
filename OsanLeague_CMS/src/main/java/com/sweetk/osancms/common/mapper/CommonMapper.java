package com.sweetk.osancms.common.mapper;

import java.util.ArrayList;
import com.sweetk.osancms.common.vo.CommonVo;

public interface CommonMapper {
	public ArrayList<CommonVo> sports_list();
	
	public int login_check(String id, String password);
	
	public CommonVo login_info(String id);
}
