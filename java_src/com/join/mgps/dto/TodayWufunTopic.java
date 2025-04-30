package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class TodayWufunTopic {
    private String auth;
    private int bespeak_switch;
    private int down_status;
    private String game_ico;
    private String game_id;
    private String game_name;
    private int game_open_switch;
    private int game_open_time;
    private String id;
    private String pic;
    private TipNew sp_tag_info;
    private int sp_tpl_two_position;
    private int tag_type;
    private String title;
    private String tpl_type;

    public String getAuth() {
        return this.auth;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public int getDown_status() {
        int i2 = this.down_status;
        if (i2 == 2 && this.bespeak_switch == 1) {
            return 6;
        }
        return i2;
    }

    public String getGame_ico() {
        return this.game_ico;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGame_open_switch() {
        return this.game_open_switch;
    }

    public int getGame_open_time() {
        return this.game_open_time;
    }

    public String getId() {
        return this.id;
    }

    public String getPic() {
        return this.pic;
    }

    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public int getTag_type() {
        return this.tag_type;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setAuth(String str) {
        this.auth = str;
    }

    public void setBespeak_switch(int i2) {
        this.bespeak_switch = i2;
    }

    public void setDown_status(int i2) {
        this.down_status = i2;
    }

    public void setGame_ico(String str) {
        this.game_ico = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGame_open_switch(int i2) {
        this.game_open_switch = i2;
    }

    public void setGame_open_time(int i2) {
        this.game_open_time = i2;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setPic(String str) {
        this.pic = str;
    }

    public void setSp_tag_info(TipNew tipNew) {
        this.sp_tag_info = tipNew;
    }

    public void setSp_tpl_two_position(int i2) {
        this.sp_tpl_two_position = i2;
    }

    public void setTag_type(int i2) {
        this.tag_type = i2;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }
}
