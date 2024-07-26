package com.app.camp.serviceCenter.mapper;

import com.app.camp.serviceCenter.vo.NoticeVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface NoticeMapper {

    @Select("SELECT * FROM NOTICE WHERE DEL_YN = 'N'")
    List<NoticeVo> noticeList();

    @Select("SELECT * FROM NOTICE WHERE NO = #{no} AND DEL_YN = 'N'")
    NoticeVo noticeDetail(String no);

    @Update("UPDATE NOTICE SET HIT = HIT + 1 WHERE NO = #{no}")
    int updateHit(String no);
}
