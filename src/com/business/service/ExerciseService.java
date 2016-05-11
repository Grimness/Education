package com.business.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ibatis.model.Examination;
import com.ibatis.model.ExaminationList;
import com.ibatis.model.Exercise;
import com.ibatis.model.Exercisetem;
import com.ibatis.model.Games;
import com.ibatis.model.Material;
import com.ibatis.model.SubMessage;

public interface ExerciseService {
	public void addexercise_data(Exercise exercise);
	public List<Exercise> viewexercise_data(Exercise exercise);
	public Exercise viewpng(@Param("fid") String fid);
	public List<SubMessage> getdy();
	public List<SubMessage> getks();
	public void deldy(SubMessage subMessage);
	public SubMessage dycheck(SubMessage subMessage);
	public SubMessage kscheck(SubMessage subMessage);
	public void changedy(@Param(value = "fid")String fid,@Param(value = "FNumber")String FNumber,@Param(value = "FName")String FName);
	public void adddy(SubMessage subMessage);
	public void addks(SubMessage subMessage);
	public List<Exercise> getExerciseByQRCode(String FQRCode);
	public List<Exercise> getExerciseByQRCodeUnit(String FUnitCode);	
	public List<Exercise> getExerciseByQRCodeHour(String FHourCode);
	public List<Exercise> getExerciseByQRCodeWK(String FWKCode);
	public Exercise getKSByQRCodeHour( String FHourCode);
	public void addmaterial(Material material);
	public List<Material> getmaterial();
	public void addexercise_data1(Exercise exercise);
	public void alter_exercise(Exercise exercise);
	public void add_ksqr(Exercise exercise);
	public void add_wkqr(Exercise exercise);
	public void add_tx(ExaminationList examinationList);
	public List<ExaminationList> check_tx(ExaminationList examinationList);
	public void delete_tx(ExaminationList examinationList);
	public ExaminationList get_tx(ExaminationList examinationList);
	public List<Exercise> viewexercise_data1(Exercise exercise);
	public void add_testpaper(Exercisetem exercisetem);
	public List<Exercisetem> check_testpaper(Exercisetem exercisetem);
	public List<Exercisetem> check_testpaperall(Exercisetem exercisetem);
	public void delete_testpaper(Exercisetem exercisetem);
	public Exercisetem view_testpaper(Exercisetem exercisetem);
	public void alter_tsex(Exercisetem exercisetem);
	public void delete_testpaper1(Exercisetem exercisetem);
	public void delete_testpaper2(Exercisetem exercisetem);
	public void delete_tx1(ExaminationList examinationList);
	public void add_examination(Examination examination);
	public void delete_examination(Examination examination);
	public List<Examination> getexamination();
	public Examination alter_examination(Examination examination);
	public void alter_examination_fin(Examination examination);
	public List<Exercisetem> view_examination(Exercisetem exercisetem);
	public void add_games(Games games);
	public void del_exercise(Exercise exercise);
	public Exercise getExerciseByID(@Param("fid")int fid);
	public List<Games> selectGames(Games games);
	public void updateGames(Games games);
	public void delectGames(@Param("fid")int fid);
	public Games select_Games(@Param("fid")int fid);
	public void add_dyqrm(Exercise exercise);
	
}
