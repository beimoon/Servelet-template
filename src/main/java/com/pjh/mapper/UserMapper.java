package com.pjh.mapper;

import com.pjh.pojo.User;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {

    @Select("select * from tb_brand")
    List<User> selectAll();
}
