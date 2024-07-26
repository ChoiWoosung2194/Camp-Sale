package com.app.camp.member.service;

import com.app.camp.member.dao.CheckMemberDao;
import com.app.camp.member.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CheckMemberService {

    private final CheckMemberDao dao;

    public String checkId(MemberVo vo) {

        return dao.checkId(vo);

    }
}
