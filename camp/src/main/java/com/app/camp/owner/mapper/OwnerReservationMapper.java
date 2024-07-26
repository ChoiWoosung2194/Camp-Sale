package com.app.camp.owner.mapper;

import com.app.camp.owner.vo.OwnerReservationVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface OwnerReservationMapper {

    @Select("SELECT RD.NO AS RESERVATION_NO, M.NAME AS MEMBER_NAME ,R.START_DATE AS START_DATE , R.END_DATE AS END_DATE, R.COUNT AS COUNT ,Z.NAME AS ZONE_NAME, Z.PRICE AS PRICE \n" +
            "FROM RESERVATION_DETAIL RD\n" +
            "JOIN PAYMENT P\n" +
            "ON RD.PAY_NO = P.NO\n" +
            "JOIN RESERVATION R\n" +
            "ON RD.RESERVATION_NO = R.NO\n" +
            "JOIN ZONE Z\n" +
            "ON R.ZONE_NO = Z.NO\n" +
            "JOIN MEMBER M\n" +
            "ON R.MEM_NO = M.NO\n" +
            "JOIN OWNER O\n" +
            "ON Z.OWNER_NO = O.NO\n" +
            "WHERE P.PAY_YN = 'Y'\n" +
            "AND OWNER_NO = #{no}")
    List<OwnerReservationVo> reservList(String no);
}
