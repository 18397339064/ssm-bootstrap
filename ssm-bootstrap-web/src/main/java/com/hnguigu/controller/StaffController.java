package com.hnguigu.controller;

import com.hnguigu.service.StaffService;
import com.hnguigu.vo.Staff;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StaffController {

    @Autowired
    StaffService staffService;

    //通过条件查询所有
    @RequestMapping("/querystaff.action")
    @ResponseBody
    public List<Staff> queryStaff(Staff staff){
        return staffService.queryStaff(staff);
    }
}
