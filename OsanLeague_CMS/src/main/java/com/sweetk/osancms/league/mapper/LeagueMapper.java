package com.sweetk.osancms.league.mapper;

import java.util.ArrayList;

import com.sweetk.osancms.league.vo.LeagueVo;

public interface LeagueMapper {
	
	public ArrayList<LeagueVo> league_list(LeagueVo lvo);

	public LeagueVo league_info(String league_seq);

	public ArrayList<LeagueVo> league_manage_team(String league_seq, String sports_seq);

}
