package com.lucian.blog.service;

import com.lucian.blog.core.dal.entity.Tag;
import com.lucian.blog.core.dal.mapper.BaseMapper;
import com.lucian.blog.core.dal.mapper.TagMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagService extends BaseService{
  @Autowired
  private TagMapper tagMapper;

  public List<String> listTagsByPost(String postid){
    return tagMapper.getTagsByPost(postid);
  }

  /**
   * 插入文章标签记录
   * 
   * @param tag
   * @return
   */
  public int insertBatch(List<Tag> tags){
    return tagMapper.insertBatch(tags);
  }

  public int deleteByPostid(String postid){
    return tagMapper.deleteByPostid(postid);
  }

  @Override
  protected BaseMapper getMapper(){
    return tagMapper;
  }

}
