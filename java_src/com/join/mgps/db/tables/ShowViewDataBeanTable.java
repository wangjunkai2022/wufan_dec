package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.dto.ShowViewDataBean;
import com.join.mgps.dto.SplashIntentBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ShowViewDataBeanTable {
    @DatabaseField
    private String begin_times;
    @DatabaseField
    private String end_times;
    @DatabaseField(generatedId = true)
    private int id;
    @DatabaseField
    private String imagePath;
    private boolean isNeedDelt;
    @DatabaseField
    private String is_default;
    @DatabaseField
    private String jump_info;
    @DatabaseField
    private String pic_addr;
    @DatabaseField
    private long show_time;
    @DatabaseField
    private String strategy_id;
    @DatabaseField
    private String strategy_name;
    @DatabaseField
    private int tag_show;
    @DatabaseField
    private String up_times;

    public ShowViewDataBeanTable() {
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

    public String getIs_default() {
        return this.is_default;
    }

    public String getJump_info() {
        return this.jump_info;
    }

    public String getPic_addr() {
        return this.pic_addr;
    }

    public ShowViewDataBean getShowVieDatabean() {
        JsonMapper jsonMapper = JsonMapper.getInstance();
        return new ShowViewDataBean(this.id, this.strategy_id, this.strategy_name, this.up_times, new String[0], this.begin_times, this.end_times, this.is_default, this.imagePath, this.tag_show, this.isNeedDelt, (List) jsonMapper.fromJson(this.jump_info, jsonMapper.createCollectionType(ArrayList.class, SplashIntentBean.class)), this.show_time);
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

    public int isTag_show() {
        return this.tag_show;
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

    public void setIs_default(String str) {
        this.is_default = str;
    }

    public void setJump_info(String str) {
        this.jump_info = str;
    }

    public void setNeedDelt(boolean z3) {
        this.isNeedDelt = z3;
    }

    public void setPic_addr(String str) {
        this.pic_addr = str;
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

    public ShowViewDataBeanTable(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i4, boolean z3, String str9, long j4) {
        this.isNeedDelt = true;
        this.id = i2;
        this.strategy_id = str;
        this.strategy_name = str2;
        this.up_times = str3;
        this.pic_addr = str4;
        this.begin_times = str5;
        this.end_times = str6;
        this.is_default = str7;
        this.imagePath = str8;
        this.tag_show = i4;
        this.isNeedDelt = z3;
        this.jump_info = str9;
        this.show_time = j4;
    }
}
