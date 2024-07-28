package com.app.camp.owner.controller;


import com.app.camp.owner.service.CampingService;
import com.app.camp.owner.vo.CampingVo;
import com.app.camp.owner.vo.CampsiteImgVo;
import com.app.camp.owner.vo.OwnerVo;
import com.app.camp.owner.vo.dayoffVo;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;

@Controller
@RequestMapping("owner")
@RequiredArgsConstructor
@MultipartConfig
public class CampingController {

    private final CampingService service;

    //내 캠핑장 등록하기 (화면)
    @GetMapping("camp/insert")
    public String insertCamp(){
        return "owner/campInsert";
    }

    //내 캠핑장 등록하기
    @PostMapping("camp/insert")
    public String insertCamp(HttpSession session, CampingVo vo) throws Exception {
        OwnerVo ownerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String ownerNo = ownerVo.getNo();
        vo.setOwnerNo(ownerNo);

        MultipartFile imgPath = vo.getImgPath();
        String originName = imgPath.getOriginalFilename();
        File targetFile = new File("D:/campot/src/main/webapp/resources/images/campsiteImg/" + originName);
        imgPath.transferTo(targetFile);

        vo.setZoneLayoutImg(originName);

        int result = service.insertCamp(vo);

        if(result != 1){
            throw new Exception("등록에 실패하였습니다.");
        }
        return "redirect:/owner/main";
    }



    //내 캠핑장 정보(화면)
    @GetMapping("camping")
    public String getCampListByNo(HttpServletRequest req , Model model){
        HttpSession session = req.getSession();
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String no = loginOwnerVo.getNo();
        CampingVo voList = service.getCampByNo(no);

        model.addAttribute("voList" , voList);
        return "owner/camping";
    }

    //캠핑장 정보 수정
    @PostMapping("camping")
    public String editCamp(HttpServletRequest req , CampingVo vo) throws Exception {
        HttpSession session = req.getSession();
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String ownerNo = loginOwnerVo.getNo();
        String tel = req.getParameter("tel");
        int result = service.editCamp(tel , ownerNo);

        if(result != 1){
            throw new Exception("정보수정에 실패하였습니다.");
        }
        return "redirect:/owner/ownerMain";

    }

    //주요시설 정보 업데이트(화면)
    @GetMapping("facility")
    public String getFacility(){
        return "owner/facilityList";
    }

    //주요시설 정보 업데이트(처리)
    @PostMapping("facility")
    public ResponseEntity<String> updateFacility(HttpSession session, String name){
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String no = loginOwnerVo.getNo();


        int result = service.updateFacility(no,name);


        if(result != 1){
            return ResponseEntity.internalServerError().body("등록에 실패하였습니다.");
        }else {
            return ResponseEntity.ok("등록 되었습니다.");
        }
    }

    //캠핑장 일정 관리(캘린더api)
    @GetMapping("calender")
    public String calender(){
        return "/owner/calender";
    }

    //일정관리(캘린더)
    @PostMapping("calender")
    @ResponseBody
    public int insertDay(dayoffVo vo , HttpSession session) {
        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String no = loginOwnerVo.getNo();
        vo.setOwnerNo(no);
        int result = service.insertDay(vo);

        if (result != 1) {
            return 0;
        } else {
            return 1;
        }
    }


//    //캠핑장 사진 업로드
    @PostMapping("campImg")
    public String insertCampImg(CampsiteImgVo vo , HttpSession session) throws Exception {

        OwnerVo loginOwnerVo = (OwnerVo) session.getAttribute("loginOwnerVo");
        String ownerNo = loginOwnerVo.getNo();
        String campNo = service.selectCampNO(ownerNo);
        vo.setCampsiteNo(campNo);


        MultipartFile imgPath = vo.getImgPath();
        String originName = imgPath.getOriginalFilename();
        File targetFile = new File("D:/campot/src/main/webapp/resources/images/" + originName);
        imgPath.transferTo(targetFile);
        vo.setFilePath(originName);

        int result = service.insertCampImg(vo);

        if(result != 1){
            throw new Exception("등록에 실패하였습니다.");
        }
        session.setAttribute("msg" , "등록되었습니다");
        return "redirect:/owner/camp/insert";


    }

    }




