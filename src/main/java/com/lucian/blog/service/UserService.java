package com.lucian.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lucian.blog.core.dal.entity.User;
import com.lucian.blog.core.dal.mapper.BaseMapper;
import com.lucian.blog.core.dal.mapper.UserMapper;
import com.lucian.blog.core.plugin.PageModel;

@Service
public class UserService extends BaseService{
  @Autowired
  private UserMapper userMapper;

  public PageModel<User> list(int pageIndex, int pageSize){
    PageModel<User> page = new PageModel<>(pageIndex, pageSize);
    super.list(page);
    return page;
  }
  
  public User login(String username,String password){
    return userMapper.loadByNameAndPass(username, password);
  }

  @Override
  protected BaseMapper getMapper(){
    return userMapper;
  }

}
