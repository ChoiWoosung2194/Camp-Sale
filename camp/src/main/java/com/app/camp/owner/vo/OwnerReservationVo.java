package com.app.camp.owner.vo;

import lombok.Data;

@Data
public class OwnerReservationVo {

    private String reservationNo;
    private String memberName;
    private String startDate;
    private String endDate;
    private String count;
    private String zoneName;
    private String totalPrice;
}
