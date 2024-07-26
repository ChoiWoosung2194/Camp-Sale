package com.app.camp.owner.controller;

import com.app.camp.owner.service.OwnerZoneService;
import com.app.camp.owner.vo.OwnerVo;
import com.app.camp.owner.vo.ZoneVo;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Controller
@RequestMapping("owner")
@RequiredArgsConstructor
public class OwnerZoneController {

    private final OwnerZoneService service;

    //캠핑존 리스트(화면)
    @GetMapping("zone/list")
    public String zoneList(){
        return "owner/zoneList";
    }

    //캠핑존 등록(화면)
    @GetMapping("zone/insert")
    public String zoneInsert(){
        return "owner/zoneInsert";
    }

    //캠핑존 등록(처리)
    @PostMapping("zone/insert")
    public String zoneInsert(HttpSession session , ZoneVo vo) throws Exception {
        OwnerVo ownerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String ownerNo = ownerVo.getNo();
        vo.setOwnerNo(ownerNo);

        MultipartFile imgPath = vo.getImgPath();
        String originName = imgPath.getOriginalFilename();
        File targetFile = new File("D:/campot/src/main/webapp/resources/images/zoneImg/" + originName);
        imgPath.transferTo(targetFile);

        vo.setFilePath(originName);

        int result = service.zoneInsert(vo);

        if(result != 1){
            throw new Exception("등록에 실패하였습니다.");
        }
        session.setAttribute("msg" , "등록되었습니다.");
        return "redirect:/owner/main";
    }

    //캠핑존 수정(화면)
    @GetMapping("zone/edit")
    public String editZone(HttpServletRequest req , Model model){
        return "";
    }

    //캠핑존 수정(처리)
    @PostMapping("zone/edit")
    public String editZone(ZoneVo vo) throws Exception {
        int result = service.updateZone(vo);

        if(result != 1){
            throw new Exception("업데이트 불가...");
        }
        return "owner/zone/list";
    }



}
