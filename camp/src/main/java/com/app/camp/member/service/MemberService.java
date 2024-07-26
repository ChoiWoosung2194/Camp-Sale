package com.app.camp.member.service;

import com.app.camp.member.dao.MemberDao;
import com.app.camp.member.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {

  private final MemberDao dao;

  public int join(MemberVo vo) throws Exception {

    // 유효성 검사를 통과하면 DAO 호출
    System.out.println("service = " + vo);

    return dao.join(vo);
  }

  public MemberVo login(MemberVo vo) {
    System.out.println("MemberService.login");
    return dao.login(vo);
  }

}
