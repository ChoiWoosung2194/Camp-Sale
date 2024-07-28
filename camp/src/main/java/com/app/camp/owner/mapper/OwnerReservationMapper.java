package com.app.camp.owner.mapper;

import com.app.camp.owner.vo.OwnerReservationVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface OwnerReservationMapper {

    @Select("SELECT R.NO AS RESERVATION_NO, M.NAME AS MEMBER_NAME, R.START_DATE AS START_DATE, R.END_DATE AS END_DATE, R.COUNT AS COUNT, Z.NAME AS ZONE_NAME, R.TOTAL_PRICE AS TOTAL_PRICE\n" +
            "FROM RESERVATION R\n" +
            "JOIN ZONE Z\n" +
            "ON R.ZONE_NO = Z.NO\n" +
            "JOIN MEMBER M\n" +
            "ON R.MEM_NO = M.NO\n" +
            "JOIN OWNER O\n" +
            "ON Z.OWNER_NO = O.NO\n" +
            "WHERE OWNER_NO = #{no}")
    List<OwnerReservationVo> reservList(String no);
}
