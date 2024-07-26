package com.app.camp.member.mapper;


import com.app.camp.member.vo.MemberVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CheckMemberMapper {

    @Select("SELECT ID FORM MEMBER WHERE ID = #{id}")
    String checkId(MemberVo vo);


}
