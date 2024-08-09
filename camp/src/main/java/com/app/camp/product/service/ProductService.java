package com.app.camp.product.service;

import com.app.camp.admin.vo.ProductVo;
import com.app.camp.product.dao.ProductDao;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductDao dao;

    public List<ProductVo> prdList() {
        return dao.prdList();
    }


    public ProductVo prdDetail(String no) {
        return dao.prdDetail(no);
    }
}
