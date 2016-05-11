package com.business.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.business.service.ExerciseService;
import com.ibatis.mapper.ExerciseMapper;
import com.ibatis.model.Examination;
import com.ibatis.model.ExaminationList;
import com.ibatis.model.Exercise;
import com.ibatis.model.Exercisetem;
import com.ibatis.model.Games;
import com.ibatis.model.Material;
import com.ibatis.model.SubMessage;


@Service("ExerciseService")
public class ExerciseServiceImpl implements ExerciseService {
	@Autowired
	private ExerciseMapper exerciseMapper;

	@Override
	public void addexercise_data(Exercise exercise) {
		// TODO Auto-generated method stub
		exerciseMapper.addexercise_data(exercise);
	}

	@Override
	public List<Exercise> viewexercise_data(Exercise exercise) {
		// TODO Auto-generated method stub
		return exerciseMapper.viewexercise_data(exercise);
	}

	@Override
	public Exercise viewpng(String fid) {
		// TODO Auto-generated method stub
		return exerciseMapper.viewpng(fid);
	}

	@Override
	public List<SubMessage> getdy() {
		// TODO Auto-generated method stub
		return exerciseMapper.getdy();
	}

	@Override
	public List<SubMessage> getks() {
		// TODO Auto-generated method stub
		return exerciseMapper.getks();
	}

	@Override
	public void deldy(SubMessage subMessage) {
		// TODO Auto-generated method stub
		this.exerciseMapper.deldy(subMessage);
	}

	@Override
	public SubMessage dycheck(SubMessage subMessage) {
		// TODO Auto-generated method stub
		return exerciseMapper.dycheck(subMessage);
	}

	@Override
	public void changedy(String fid, String FNumber, String FName) {
		// TODO Auto-generated method stub
		this.exerciseMapper.changedy(fid, FNumber, FName);
	}

	@Override
	public void adddy(SubMessage subMessage) {
		// TODO Auto-generated method stub
		this.exerciseMapper.adddy(subMessage);
	}

	@Override
	public void addks(SubMessage subMessage) {
		// TODO Auto-generated method stub
		this.exerciseMapper.addks(subMessage);
	}

	@Override
	public SubMessage kscheck(SubMessage subMessage) {
		// TODO Auto-generated method stub
		return exerciseMapper.kscheck(subMessage);
	}

	/**
	 * 二维码查询，shine，2015-12-13
	 */
	@Override
	public List<Exercise> getExerciseByQRCode(String FQRCode) {
		// TODO Auto-generated method stub
		return exerciseMapper.getExerciseByQRCode(FQRCode);
	}

	@Override
	public List<Exercise> getExerciseByQRCodeUnit(String FUnitCode) {
		// TODO Auto-generated method stub
		return exerciseMapper.getExerciseByQRCodeUnit(FUnitCode);
	}

	@Override
	public List<Exercise> getExerciseByQRCodeHour(String FHourCode) {
		// TODO Auto-generated method stub
		return exerciseMapper.getExerciseByQRCodeHour(FHourCode);
	}

	@Override
	public List<Exercise> getExerciseByQRCodeWK(String FWKCode) {
		// TODO Auto-generated method stub
		return exerciseMapper.getExerciseByQRCodeWK(FWKCode);
	}

	@Override
	public Exercise getKSByQRCodeHour(String FHourCode) {
		// TODO Auto-generated method stub
		return exerciseMapper.getKSByQRCodeHour(FHourCode);
	}

	@Override
	public void addmaterial(Material material) {
		// TODO Auto-generated method stub
		exerciseMapper.addmaterial(material);
	}

	@Override
	public List<Material> getmaterial() {
		// TODO Auto-generated method stub
		return exerciseMapper.getmaterial();
	}

	@Override
	public void addexercise_data1(Exercise exercise) {
		// TODO Auto-generated method stub
		exerciseMapper.addexercise_data1(exercise);
	}

	@Override
	public void alter_exercise(Exercise exercise) {
		// TODO Auto-generated method stub
		exerciseMapper.alter_exercise(exercise);
	}

	@Override
	public void add_ksqr(Exercise exercise) {
		// TODO Auto-generated method stub
		exerciseMapper.add_ksqr(exercise);
	}

	@Override
	public void add_wkqr(Exercise exercise) {
		// TODO Auto-generated method stub
		exerciseMapper.add_wkqr(exercise);
	}

	@Override
	public void add_tx(ExaminationList examinationList) {
		// TODO Auto-generated method stub
		exerciseMapper.add_tx(examinationList);
	}

	@Override
	public List<ExaminationList> check_tx(ExaminationList examinationList) {
		// TODO Auto-generated method stub
		return exerciseMapper.check_tx(examinationList);
	}

	@Override
	public void delete_tx(ExaminationList examinationList) {
		// TODO Auto-generated method stub
		exerciseMapper.delete_tx(examinationList);
	}

	@Override
	public ExaminationList get_tx(ExaminationList examinationList) {
		// TODO Auto-generated method stub
		return exerciseMapper.get_tx(examinationList);
	}

	@Override
	public List<Exercise> viewexercise_data1(Exercise exercise) {
		// TODO Auto-generated method stub
		return exerciseMapper.viewexercise_data1(exercise);
	}

	@Override
	public void add_testpaper(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		exerciseMapper.add_testpaper(exercisetem);
	}

	@Override
	public List<Exercisetem> check_testpaper(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		return exerciseMapper.check_testpaper(exercisetem);
	}

	@Override
	public void delete_testpaper(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		exerciseMapper.delete_testpaper(exercisetem);
	}

	@Override
	public Exercisetem view_testpaper(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		return exerciseMapper.view_testpaper(exercisetem);
	}

	@Override
	public void alter_tsex(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		exerciseMapper.alter_tsex(exercisetem);
	}

	@Override
	public void delete_testpaper1(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		exerciseMapper.delete_testpaper1(exercisetem);
	}

	@Override
	public void delete_testpaper2(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		exerciseMapper.delete_testpaper2(exercisetem);
	}

	@Override
	public void delete_tx1(ExaminationList examinationList) {
		// TODO Auto-generated method stub
		exerciseMapper.delete_tx1(examinationList);
	}

	@Override
	public void add_examination(Examination examination) {
		// TODO Auto-generated method stub
		exerciseMapper.add_examination(examination);
	}

	@Override
	public List<Examination> getexamination() {
		// TODO Auto-generated method stub
		return exerciseMapper.getexamination();
	}

	@Override
	public void delete_examination(Examination examination) {
		// TODO Auto-generated method stub
		exerciseMapper.delete_examination(examination);
	}

	@Override
	public Examination alter_examination(Examination examination) {
		// TODO Auto-generated method stub
		return exerciseMapper.alter_examination(examination);
	}

	@Override
	public void alter_examination_fin(Examination examination) {
		// TODO Auto-generated method stub
		exerciseMapper.alter_examination_fin(examination);
	}

	@Override
	public List<Exercisetem> view_examination(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		return exerciseMapper.view_examination(exercisetem);
	}

	@Override
	public void add_games(Games games) {
		// TODO Auto-generated method stub
		exerciseMapper.add_games(games);
	}

	@Override
	public List<Exercisetem> check_testpaperall(Exercisetem exercisetem) {
		// TODO Auto-generated method stub
		return exerciseMapper.check_testpaperall(exercisetem);
	}

	@Override
	public void del_exercise(Exercise exercise) {
		// TODO Auto-generated method stub
		exerciseMapper.del_exercise(exercise);
	}

	@Override
	public Exercise getExerciseByID(int fid) {
		// TODO Auto-generated method stub
		return exerciseMapper.getExerciseByID(fid);
	}

	@Override
	public List<Games> selectGames(Games games) {
		// TODO Auto-generated method stub
		return exerciseMapper.selectGames(games);
	}

	@Override
	public void updateGames(Games games) {
		// TODO Auto-generated method stub
		exerciseMapper.updateGames(games);
	}

	@Override
	public void delectGames(int fid) {
		// TODO Auto-generated method stub
		exerciseMapper.delectGames(fid);
	}

	@Override
	public Games select_Games(int fid) {
		// TODO Auto-generated method stub
		return exerciseMapper.select_Games(fid);
	}

	@Override
	public void add_dyqrm(Exercise exercise) {
		// TODO Auto-generated method stub
		exerciseMapper.add_dyqrm(exercise);
	}

	

	
}
