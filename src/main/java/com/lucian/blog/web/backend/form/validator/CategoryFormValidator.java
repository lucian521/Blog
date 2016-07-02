package com.lucian.blog.web.backend.form.validator;

import com.lucian.blog.core.dal.entity.Category;
import com.lucian.blog.core.plugin.MapContainer;
import com.lucian.blog.core.util.StringUtils;

public class CategoryFormValidator{

  public static MapContainer validateInsert(Category category){
    MapContainer form = new MapContainer();
    if(StringUtils.isBlank(category.getName())){
      form.put("msg", "分类名称不能为空");
    }

    return form;
  }

}
