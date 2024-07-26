package com.app.camp.owner.mapper;

import com.app.camp.owner.vo.OwnerVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface OwnerMapper {

    @Select("SELECT * FROM OWNER WHERE ID = #{id} AND PWD = #{pwd}")
    OwnerVo login(OwnerVo vo);

    @Insert("INSERT INTO OWNER " +
            "(NO,ID,PWD,NICK,NAME,PHONE,EMAIL,ADDRESS,DETAIL_ADDRESS,ZIP_CODE,BUSINESS_NUM) " +
            "VALUES " +
            "(SEQ_OWNER_NO.NEXTVAL, #{id}, #{pwd}, #{nick}, #{name}, #{phone}, #{email}, #{address},#{detailAddress}, #{zipCode}, #{businessNum} )")
    int join(OwnerVo vo);

    @Update("UPDATE OWNER SET PWD = #{pwd} WHERE NO = #{no}")
    int pwdEdit(OwnerVo vo);

    @Select("SELECT * FROM OWNER WHERE NO = #{no}")
    OwnerVo editOwner(String no);

    @Update("UPDATE OWNER SET PWD = #{pwd} WHERE NO = #{no}")
    int editPwd(OwnerVo vo);

    @Update("UPDATE OWNER SET NICK = #{nick} WHERE NO = #{no}")
    int editNick(OwnerVo vo);

    @Update("UPDATE OWNER SET PHONE = #{phone} WHERE NO = #{no}")
    int editPhone(OwnerVo vo);
}
