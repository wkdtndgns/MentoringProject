package net.skhu.mentoring.mapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.skhu.mentoring.dto.MentoAdvertise;
@Mapper
public interface MentoAdvertiseMapper {
	void insert(MentoAdvertise mentoAdvertise);
	MentoAdvertise findOne(int id);
	MentoAdvertise findByMentoId(@Param("mentoId") int mentoId);
	void delete(int id);
	void deleteByMentoId(@Param("mentoId") int mentoId);
}
