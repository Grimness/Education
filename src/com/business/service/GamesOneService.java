package com.business.service;

import java.util.List;

import com.ibatis.model.Games;
import com.ibatis.model.GamesOne;

public interface GamesOneService {
	public void insertGamesOne(Games games);
	public void deleteGamesOne(Games games);
	public List<GamesOne> selectGamesOne(GamesOne gamesOne);
	public List<Games> select_GamesOne(Games games);
	public void delete_GamesOne(Games games);
}
