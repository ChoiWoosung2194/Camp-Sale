package com.app.camp.admin.mapper;

import com.app.camp.admin.vo.AdminNoticeVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface AdminNoticeMapper {

    @Select("SELECT * FROM NOTICE WHERE DEL_YN = 'N'")
    List<AdminNoticeVo> noticeList();

    @Insert("INSERT INTO NOTICE (NO, WRITER, TITLE, CONTENT) VALUES (SEQ_NOTICE_NO.NEXTVAL , #{writer} ,#{title} ,#{content})")
    int noticeInsert(AdminNoticeVo vo);

    @Select("SELECT * FROM NOTICE WHERE NO = #{no}")
    AdminNoticeVo detailNotice(String no);

    @Update("UPDATE NOTICE SET HIT = HIT + 1 WHERE NO = #{no}")
    int updateHit(String no);
}
