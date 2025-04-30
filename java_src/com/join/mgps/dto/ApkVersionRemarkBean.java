package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class ApkVersionRemarkBean implements Serializable {
    private List<CheckFileBean> check_files;
    private int so_file_count;
    private String zip_md;

    public List<CheckFileBean> getCheck_files() {
        return this.check_files;
    }

    public int getSo_file_count() {
        return this.so_file_count;
    }

    public String getZip_md() {
        return this.zip_md;
    }

    public void setCheck_files(List<CheckFileBean> list) {
        this.check_files = list;
    }

    public void setSo_file_count(int i2) {
        this.so_file_count = i2;
    }

    public void setZip_md(String str) {
        this.zip_md = str;
    }
}
