package com.app.camp.owner.mapper;

import com.app.camp.owner.vo.CampNoticeVo;
import com.app.camp.owner.vo.CampingVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface CampNoticeMapper {

    @Select("SELECT *\n" +
            "FROM CAMPSITE_NOTICE\n" +
            "WHERE OWNER_NO = #{no} " +
            "AND DEL_YN='N'")
    List<CampNoticeVo> getCampNotice(String no);

    @Insert("INSERT INTO CAMPSITE_NOTICE\n" +
            "(NO, OWNER_NO, TITLE, CONTENT)\n" +
            "VALUES\n" +
            "(SEQ_CAMPSITE_NOTICE_NO.NEXTVAL, #{ownerNo} , #{title} , #{content})")
    int insertNotice(CampNoticeVo vo);

    @Select("SELECT * FROM CAMPSITE_NOTICE WHERE NO = #{no} AND DEL_YN = 'N'")
    CampingVo noticeByNo(String no);

    @Update("UPDATE CAMPSITE_NOTICE SET TITLE = #{title}, CONTENT = #{content} WHERE NO = #{no}")
    int edit(CampNoticeVo vo);

    @Select("SELECT * FROM CAMPSITE_NOTICE WHERE NO = #{no}")
    CampNoticeVo noticeDetail(String no);

    @Update("UPDATE CAMPSITE_NOTICE SET HIT = HIT + 1 WHERE NO = #{no}")
    int updateHit(String no);

    @Update("UPDATE CAMPSITE_NOTICE SET DEL_YN = 'Y' WHERE NO = #{no}")
    int deleteNotice(String no);

    @Update("UPDATE CAMPSITE_NOTICE SET TITLE = #{title}, CONTENT = #{content} WHERE NO = #{no}")
    int updateAll(CampNoticeVo vo);
}
