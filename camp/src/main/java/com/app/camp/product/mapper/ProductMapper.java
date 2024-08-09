package com.app.camp.product.mapper;

import com.app.camp.admin.vo.ProductVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ProductMapper {

    @Select("SELECT P.*, PI.*, PC.*\n" +
            "FROM PRODUCT P\n" +
            "JOIN PRD_IMG PI ON P.NO = PI.PRD_NO\n" +
            "JOIN PROD_CATEGORY PC ON P.CATEGORY_NO = PC.NO\n" +
            "WHERE P.DEL_YN = 'N'")
    List<ProductVo> prdList();


    @Select("SELECT P.*, PI.*, PC.*\n" +
            "FROM PRODUCT P\n" +
            "JOIN PRD_IMG PI ON P.NO = PI.PRD_NO\n" +
            "JOIN PROD_CATEGORY PC ON P.CATEGORY_NO = PC.NO\n" +
            "WHERE P.DEL_YN = 'N' AND P.NO = #{no}")
    ProductVo prdDetail(String no);
}
