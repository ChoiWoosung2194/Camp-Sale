package com.app.camp.serviceCenter.mapper;

import com.app.camp.serviceCenter.vo.FaqVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface FaqMapper {

    @Select("SELECT * FROM FAQ WHERE DEL_YN = 'N'")
    List<FaqVo> faqList();

    @Select("SELECT * FROM FAQ WHERE NO = #{no} AND DEL_YN = 'N'")
    FaqVo faqDetail(String no);

    @Update("UPDATE FAQ SET HIT = HIT + 1 WHERE NO = #{no}")
    int updateHit(String no);
}
