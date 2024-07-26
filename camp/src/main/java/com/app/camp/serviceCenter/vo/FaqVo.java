package com.app.camp.serviceCenter.vo;

import lombok.Data;

@Data
public class FaqVo {

    private String no;
    private String writer;
    private String title;
    private String content;
    private String hit;
    private String createDate;
    private String delYn;

}
