package com.hnguigu.vo;

public class Staff {
    private Integer staid;
    private String staname;
    private String stazhanghao;
    private String stapwd;
    private Integer stasex;
    private String staidentity;
    private Integer doorid;

    public Integer getStaid() {
        return staid;
    }

    public void setStaid(Integer staid) {
        this.staid = staid;
    }

    public String getStaname() {
        return staname;
    }

    public void setStaname(String staname) {
        this.staname = staname;
    }

    public String getStazhanghao() {
        return stazhanghao;
    }

    public void setStazhanghao(String stazhanghao) {
        this.stazhanghao = stazhanghao;
    }

    public String getStapwd() {
        return stapwd;
    }

    public void setStapwd(String stapwd) {
        this.stapwd = stapwd;
    }

    public Integer getStasex() {
        return stasex;
    }

    public void setStasex(Integer stasex) {
        this.stasex = stasex;
    }

    public String getStaidentity() {
        return staidentity;
    }

    public void setStaidentity(String staidentity) {
        this.staidentity = staidentity;
    }

    public Integer getDoorid() {
        return doorid;
    }

    public void setDoorid(Integer doorid) {
        this.doorid = doorid;
    }

    public Staff() {
    }

    public Staff(Integer staid, String staname, String stazhanghao, String stapwd, Integer stasex, String staidentity, Integer doorid) {
        this.staid = staid;
        this.staname = staname;
        this.stazhanghao = stazhanghao;
        this.stapwd = stapwd;
        this.stasex = stasex;
        this.staidentity = staidentity;
        this.doorid = doorid;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "staid=" + staid +
                ", staname='" + staname + '\'' +
                ", stazhanghao='" + stazhanghao + '\'' +
                ", stapwd='" + stapwd + '\'' +
                ", stasex=" + stasex +
                ", staidentity='" + staidentity + '\'' +
                ", doorid=" + doorid +
                '}';
    }
}
