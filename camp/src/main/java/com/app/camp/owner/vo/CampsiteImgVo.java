package com.app.camp.owner.vo;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class CampsiteImgVo {

    private String no;
    private String campsiteNo;
    private MultipartFile imgPath;
    private String filePath;

}
