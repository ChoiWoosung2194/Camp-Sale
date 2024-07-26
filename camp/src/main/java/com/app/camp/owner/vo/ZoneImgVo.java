package com.app.camp.owner.vo;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class ZoneImgVo {

    private String no;
    private String ownerNo;
    private String zoneName;
    private String zoneNo;
    private String filePath;
    private MultipartFile imgPath;
}
