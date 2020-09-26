package com.hnguigu.dao;

import com.hnguigu.vo.Staff;

import java.util.List;

public interface StaffDao {

    //登录
    public Staff staffLogin(Staff staff);

    //注册
    public int addStaff(Staff staff);

    //通过条件查询
    public List<Staff> queryStaff(Staff staff);

    //批量删除
    public int deletePLStaff(int[] staid);

    //删除
    public int deleteStaff(int staid);

    //通过id查询数据
    public Staff queryByStaid(int staid);

    //修改
    public int updateStaff(Staff staff);
}
