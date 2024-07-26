package com.app.camp.owner.vo;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class ZoneVo {

    private String no;
    private String name;
    private String ownerNo;
    private MultipartFile imgPath;
    private String filePath;
    private String seasonNo;
    private String price;
    private String maxPeople;
}
