package com.app.camp.home.mapper;

import com.app.camp.home.vo.HomeVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface HomeMapper {

    @Select("SELECT NO, NAME , CAMPSITE_CATEGORY , AREA, ZONE_LAYOUT_IMG FROM CAMPSITE WHERE DEL_YN = 'N'")
    List<HomeVo> selectCamp();
}
