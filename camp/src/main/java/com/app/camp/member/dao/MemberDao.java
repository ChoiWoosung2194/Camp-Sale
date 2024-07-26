package com.app.camp.member.dao;

import com.app.camp.member.mapper.MemberMapper;
import com.app.camp.member.vo.MemberVo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class MemberDao {

  private final MemberMapper mapper;

  public int join(MemberVo vo) {
    return mapper.join(vo);
  }

  public MemberVo login(MemberVo vo) {
    System.out.println("MemberDao.login");
    return mapper.login(vo);
  }

}
