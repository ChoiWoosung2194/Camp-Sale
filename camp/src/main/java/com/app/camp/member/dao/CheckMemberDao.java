package com.app.camp.member.dao;


import com.app.camp.member.mapper.CheckMemberMapper;
import com.app.camp.member.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class CheckMemberDao {

    private final CheckMemberMapper chMapper;

    public String checkId(MemberVo vo) {

        return chMapper.checkId(vo);
    }
}
