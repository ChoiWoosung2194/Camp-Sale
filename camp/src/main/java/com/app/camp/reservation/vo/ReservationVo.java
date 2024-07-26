package com.app.camp.reservation.vo;

import lombok.Data;

@Data
public class ReservationVo {
    private String no;
    private String zoneNo;
    private String memNo;
    private String startDate;
    private String endDate;
    private String count;
    private String totalPrice;


}