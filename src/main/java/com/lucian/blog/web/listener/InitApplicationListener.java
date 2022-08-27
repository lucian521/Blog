package com.lucian.blog.web.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.lucian.blog.core.WebConstants;

public class InitApplicationListener implements ServletContextListener{
  
  @Override
  public void contextInitialized(ServletContextEvent sce){
    WebConstants.APPLICATION_PATH = sce.getServletContext().getRealPath("/");
    /* 给log4j设置环境变量，必须要在jvm加载log4j.properties前设置 */
    System.setProperty("log4jHome", WebConstants.APPLICATION_PATH);

    //todo mastter
    // master 2022  提交 冲突 测试


    // dev 提交 冲突 测试
  }

  @Override
  public void contextDestroyed(ServletContextEvent sce){

  }

}
