package com.app.camp.admin.mapper;

import com.app.camp.admin.vo.AdminFaqVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface AdminFaqMapper {

    @Select("SELECT * FROM FAQ WHERE NO = #{no}")
    AdminFaqVo detailFaq(String no);

    @Select("SELECT * FROM FAQ")
    List<AdminFaqVo> faqList();

    @Insert("INSERT INTO FAQ (NO, WRITER, TITLE, CONTENT) VALUES (SEQ_FAQ_NO.NEXTVAL, #{writer}, #{title}, #{content} )")
    int faqInsert(AdminFaqVo vo);

    @Update("UPDATE FAQ SET HIT = HIT + 1 WHERE NO = #{no}")
    int updateHit(String no);
}
