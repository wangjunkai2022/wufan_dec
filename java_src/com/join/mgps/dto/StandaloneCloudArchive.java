package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class StandaloneCloudArchive implements Serializable {
    private long last_enter_main_page_time;
    private Integer location_at;
    private List<ModGameArchiveTagBean> tag_list;

    public long getLast_enter_main_page_time() {
        return this.last_enter_main_page_time;
    }

    public Integer getLocation_at() {
        return this.location_at;
    }

    public List<ModGameArchiveTagBean> getTag_list() {
        return this.tag_list;
    }

    public void setLast_enter_main_page_time(long j4) {
        this.last_enter_main_page_time = j4;
    }

    public void setLocation_at(Integer num) {
        this.location_at = num;
    }

    public void setTag_list(List<ModGameArchiveTagBean> list) {
        this.tag_list = list;
    }
}
