package com.app.camp.product.controller;

import com.app.camp.admin.vo.ProductVo;
import com.app.camp.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("product")
@RequiredArgsConstructor
public class ProductController {

    private final ProductService service;

    // 상품 리스트
    @GetMapping("list")
    public String prdList(){
        List<ProductVo> voList = service.prdList();

        return "prd/home";
    }

    // 상품 상세
    @GetMapping("detail")
    public void prdDetail(String no){
        ProductVo prdVo = service.prdDetail(no);
    }

}
