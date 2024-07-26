package com.app.camp.admin.controller;

import com.app.camp.admin.service.ManagementService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
@RequiredArgsConstructor
public class ManagementController {

    private final ManagementService service;

    @GetMapping("member")
    public String getMemberList(){

        return "admin/managementMem";
    }

    @GetMapping("owner")
    public String getOwnerList(){
        return "admin/managementOwner";
    }


}
