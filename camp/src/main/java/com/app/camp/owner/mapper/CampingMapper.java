package com.app.camp.owner.mapper;

import com.app.camp.owner.vo.CampingVo;
import com.app.camp.owner.vo.CampsiteImgVo;
import com.app.camp.owner.vo.dayoffVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface CampingMapper {

    @Select("SELECT * FROM CAMPSITE WHERE OWNER_NO = #{no}")
    CampingVo getCampByNo(String no);



    @Insert("INSERT INTO CAMPSITE\n" +
            "(NO,OWNER_NO,NAME, ADDRESS,TEL,INTRODUCTION,BASIC_INFO,ZONE_LAYOUT_IMG,AREA,CAMPSITE_CATEGORY)\n" +
            "VALUES\n" +
            "(SEQ_CAMPSITE_NO.NEXTVAL,#{ownerNo},#{name},#{address},#{tel},#{introduction},#{basicInfo},#{zoneLayoutImg},#{area},#{campsiteCategory} )")
    int insertCamp(CampingVo vo);

    @Update("UPDATE CAMPSITE SET TEL = #{tel} WHERE OWNER_NO = #{ownerNo}")
    int editCamp(String tel, String ownerNo);

    @Update("UPDATE CAMPSITE SET ${name} = 'Y' WHERE OWNER_NO = #{no} ")
    int updateFacility(String no, String name);

    @Select("SELECT NO FROM CAMPSITE WHERE NAME = #{campName}")
    CampingVo campByName(String campName);

    @Insert("INSERT INTO CAMP_IMG (NO ,CAMPSITE_NO ,FILE_PATH) " +
            "VALUES (SEQ_CAMP_IMG_NO.NEXTVAL,#{campsiteNo} ,#{filePath} )")
    int insertCampImg(CampsiteImgVo vo);

    @Insert("INSERT INTO DAYOFF " +
            "(NO , OWNER_NO, TITLE, START_DATE, END_DATE) " +
            "VALUES " +
            "(SEQ_DAYOFF_NO.NEXTVAL, #{ownerNo} ,#{title} ,#{startDate} , #{endDate}")
    int insertDay(dayoffVo vo);

    @Select("SELECT NO FROM CAMPSITE WHERE OWNER_NO = #{ownerNo}")
    String selectCampNo(String ownerNo);
}
