package com.app.camp.owner.mapper;

import com.app.camp.owner.vo.ZoneImgVo;
import com.app.camp.owner.vo.ZoneVo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface OwnerZoneMapper {

    @Insert("INSERT INTO ZONE\n" +
            "(NO, OWNER_NO, SEASON_NO, NAME,FILE_PATH, MAX_PEOPLE ,PRICE)\n" +
            "VALUES\n" +
            "(SEQ_ZONE_NO.NEXTVAL, #{ownerNo}, '1', #{name},#{filePath}, #{maxPeople}, #{price} )")
    int zoneInsert(ZoneVo vo);

    @Select("SELECT  Z.SEASON_NO, Z.MAX_PEOPLE, Z.PRICE, Z.NAME \n" +
            "FROM ZONE Z \n" +
            "JOIN SEASON S ON Z.SEASON_NO = S.NO \n" +
            "JOIN OWNER O ON Z.OWNER_NO = O.NO \n" +
            "WHERE O.NO = #{no}")
    List<ZoneVo> selectZone(String no);

    @Update(" UPDATE ZONE\n" +
            "        <set>\n" +
            "            <if test=\"name != null\">\n" +
            "                NAME = #{name},\n" +
            "            </if>\n" +
            "            <if test=\"price != null\">\n" +
            "                PRICE = #{price},\n" +
            "            </if>\n" +
            "        </set>\n" +
            "        WHERE CAMPSITE_NO = #{campsiteNo}")
    int updateZone(ZoneVo vo);

    @Select("SELECT NO FROM ZONE WHERE NAME = #{zoneName}")
    ZoneVo zoneNoByName(String zoneName);

    @Insert("INSERT INTO ZONE_IMG " +
            "(NO, ZONE_NO , FILE_PATH) " +
            "VALUES " +
            "(SEQ_ZONE_IMG_NO.NEXTVAL , #{zoneNo} , #{filePath}")//TODO filepath를 for 돌려서 값을 넣어야함
    int uploadImg(ZoneImgVo vo);

    @Select("SELECT NO FROM ZONE WHERE NAME = #{zoneName} and OWNER_NO = #{ownerNo}")
    String selectZoneNo(ZoneImgVo vo);
}
