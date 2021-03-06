package net.skhu.mentoring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import net.skhu.mentoring.dto.MentiList;

@Mapper
public interface MentiListMapper {
	List<MentiList> findAll();
	void insert(MentiList mentiList);
	List<MentiList> findByGroupId(@Param("groupId") int groupId);
	List<MentiList> findByUserId(@Param("userId") int userId);
	int findCount(@Param("groupId")int groupId);
	void delete(@Param("userId")int userId);
	void deleteWithUserId(@Param("groupId")int groupId, @Param("userId")int userId);
	List<MentiList> findByTimetable(int groupId);

	List<MentiList> findwithStudents(@Param("groupId")int groupId);

}
