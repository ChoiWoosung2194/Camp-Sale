package com.app.camp.product.dao;

import com.app.camp.admin.vo.ProductVo;
import com.app.camp.product.mapper.ProductMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ProductDao {

    private final ProductMapper mapper;

    public List<ProductVo> prdList() {
        return mapper.prdList();
    }


    public ProductVo prdDetail(String no) {
        return mapper.prdDetail(no);
    }
}
