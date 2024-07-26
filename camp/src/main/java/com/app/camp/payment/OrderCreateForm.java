package com.app.camp.payment;

import lombok.Data;

@Data

public class OrderCreateForm {

    private String name;
    private String partner_user_id;
    private int quantity;
    private int totalPrice;
}
