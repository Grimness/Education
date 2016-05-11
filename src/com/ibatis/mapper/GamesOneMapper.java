package com.ibatis.mapper;

import java.util.List;

import com.ibatis.model.Games;
import com.ibatis.model.GamesOne;

public interface GamesOneMapper {
	public void insertGamesOne(Games games);
	public void deleteGamesOne(Games games);
	public List<GamesOne> selsctGamesOne(GamesOne gamesOne);
	public List<Games> select_GamesOne(Games games);
	public void delete_GamesOne(Games games);
}
