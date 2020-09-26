package com.hnguigu.service.impl;

import com.hnguigu.dao.StaffDao;
import com.hnguigu.service.StaffService;
import com.hnguigu.vo.Staff;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {

    @Autowired
    StaffDao staffDao;


    //登录
    @Override
    public Staff staffLogin(Staff staff) {
        return null;
    }

    //注册
    @Override
    public int addStaff(Staff staff) {
        return 0;
    }

    //通过条件查询
    @Override
    public List<Staff> queryStaff(Staff staff) {
        return null;
    }

    //批量删除
    @Override
    public int deletePLStaff(int[] staid) {
        return 0;
    }

    //删除
    @Override
    public int deleteStaff(int staid) {
        return 0;
    }

    //通过id查询
    @Override
    public Staff queryByStaid(int staid) {
        return null;
    }

    //修改
    @Override
    public int updateStaff(Staff staff) {
        return 0;
    }
}
