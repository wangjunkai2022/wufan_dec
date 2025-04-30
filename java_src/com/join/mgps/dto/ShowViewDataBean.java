package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.db.tables.ShowViewDataBeanTable;
import java.util.List;
/* loaded from: classes4.dex */
public class ShowViewDataBean {
    private String begin_times;
    private String end_times;
    private int id;
    private String imagePath;
    private boolean isNeedDelt;
    private String is_force;
    private List<SplashIntentBean> jump_info;
    private long show_time;
    private String strategy_id;
    private String strategy_name;
    private int tag_show;
    private String up_times;

    public ShowViewDataBean() {
        this.isNeedDelt = true;
    }

    public String getBegin_times() {
        return this.begin_times;
    }

    public String getEnd_times() {
        return this.end_times;
    }

    public int getId() {
        return this.id;
    }

    public String getImagePath() {
        return this.imagePath;
    }

    public String getIs_force() {
        return this.is_force;
    }

    public List<SplashIntentBean> getJump_info() {
        return this.jump_info;
    }

    public ShowViewDataBeanTable getShowVieDatabeanTable() {
        return new ShowViewDataBeanTable(this.id, this.strategy_id, this.strategy_name, this.up_times, "", this.begin_times, this.end_times, this.is_force, this.imagePath, this.tag_show, this.isNeedDelt, JsonMapper.getInstance().toJson(this.jump_info), this.show_time);
    }

    public long getShow_time() {
        return this.show_time;
    }

    public String getStrategy_id() {
        return this.strategy_id;
    }

    public String getStrategy_name() {
        return this.strategy_name;
    }

    public int getTag_show() {
        return this.tag_show;
    }

    public String getUp_times() {
        return this.up_times;
    }

    public boolean isNeedDelt() {
        return this.isNeedDelt;
    }

    public void setBegin_times(String str) {
        this.begin_times = str;
    }

    public void setEnd_times(String str) {
        this.end_times = str;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setImagePath(String str) {
        this.imagePath = str;
    }

    public void setIs_force(String str) {
        this.is_force = str;
    }

    public void setJump_info(List<SplashIntentBean> list) {
        this.jump_info = list;
    }

    public void setNeedDelt(boolean z3) {
        this.isNeedDelt = z3;
    }

    public void setShow_time(long j4) {
        this.show_time = j4;
    }

    public void setStrategy_id(String str) {
        this.strategy_id = str;
    }

    public void setStrategy_name(String str) {
        this.strategy_name = str;
    }

    public void setTag_show(int i2) {
        this.tag_show = i2;
    }

    public void setUp_times(String str) {
        this.up_times = str;
    }

    public ShowViewDataBean(int i2, String str, String str2, String str3, String[] strArr, String str4, String str5, String str6, String str7, int i4, boolean z3, List<SplashIntentBean> list, long j4) {
        this.isNeedDelt = true;
        this.id = i2;
        this.strategy_id = str;
        this.strategy_name = str2;
        this.up_times = str3;
        this.begin_times = str4;
        this.end_times = str5;
        this.is_force = str6;
        this.imagePath = str7;
        this.tag_show = i4;
        this.isNeedDelt = z3;
        this.jump_info = list;
        this.show_time = j4;
    }

    public ShowViewDataBean(int i2, String str, String str2, String str3, String[] strArr, String str4, String str5, String str6, String str7, int i4, boolean z3, List<SplashIntentBean> list, long j4, String str8) {
        this.isNeedDelt = true;
        this.id = i2;
        this.strategy_id = str;
        this.strategy_name = str2;
        this.up_times = str3;
        this.begin_times = str4;
        this.end_times = str5;
        this.is_force = str6;
        this.imagePath = str7;
        this.tag_show = i4;
        this.isNeedDelt = z3;
        this.jump_info = list;
        this.show_time = j4;
    }
}
