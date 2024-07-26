package com.app.camp.payment;

import com.app.camp.reservation.vo.ReservZoneVo;
import com.app.camp.reservation.vo.ReservationVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class OrderDao {
    private final OrderMapper mapper;

    public ReservationVo selectReserv(String zoneNo, String no) {
        return mapper.selectReserv(zoneNo,no);
    }

    public ReservZoneVo selectZoneDetail(String zoneNo) {
        return mapper.selectZoneDetail(zoneNo);
    }
}
