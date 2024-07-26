package com.app.camp.camplist.mapper;

import com.app.camp.camplist.vo.CamplistVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CamplistMapper {

    @Select("SELECT * FROM CAMPSITE WHERE DEL_YN = 'N'")
    List<CamplistVo> campList();
}
