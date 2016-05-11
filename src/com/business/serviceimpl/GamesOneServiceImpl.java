package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.GamesOneService;
import com.ibatis.mapper.GamesOneMapper;
import com.ibatis.model.Games;
import com.ibatis.model.GamesOne;
@Service("GamesOne")
public class GamesOneServiceImpl implements GamesOneService {
	@Autowired
	private GamesOneMapper gamesOneMapper;
	@Override
	public void insertGamesOne(Games games) {
		// TODO Auto-generated method stub
		gamesOneMapper.insertGamesOne(games);
	}

	@Override
	public void deleteGamesOne(Games games) {
		// TODO Auto-generated method stub
		gamesOneMapper.deleteGamesOne(games);
	}

	@Override
	public List<GamesOne> selectGamesOne(GamesOne gamesOne) {
		// TODO Auto-generated method stub selsctGamesOne
		return gamesOneMapper.selsctGamesOne(gamesOne);
	}

	@Override
	public List<Games> select_GamesOne(Games games) {
		// TODO Auto-generated method stub
		return gamesOneMapper.select_GamesOne(games);
	}

	@Override
	public void delete_GamesOne(Games games) {
		// TODO Auto-generated method stub
		gamesOneMapper.delete_GamesOne(games);
	}

}
