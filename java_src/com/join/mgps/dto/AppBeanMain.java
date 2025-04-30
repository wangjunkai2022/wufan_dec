package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.UtilsMy;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class AppBeanMain implements Serializable {
    private int butnShowTypr;
    private String crc_link_type_val;
    private String ext1;
    private String ext2;
    private String ext3;
    private String ext4;
    private AppBean game_info;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public AppBeanMain() {
    }

    public int getButnShowTypr() {
        return this.butnShowTypr;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public String getExt1() {
        return this.ext1;
    }

    public String getExt2() {
        return this.ext2;
    }

    public String getExt3() {
        return this.ext3;
    }

    public String getExt4() {
        return this.ext4;
    }

    public AppBean getGame_info() {
        return this.game_info;
    }

    public IntentDateBean getIntentDataBean() {
        AppBean appBean;
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(this.jump_type);
        intentDateBean.setLink_type(this.link_type);
        intentDateBean.setLink_type_val(this.link_type_val);
        boolean z3 = true;
        if (this.link_type == 1 && (appBean = this.game_info) != null) {
            intentDateBean.setTpl_type(appBean.getGame_info_tpl_type());
            ExtBean volcanoOther = new ExtBean(this.game_info.get_from_type()).setRecPosition(this.game_info.getRecPosition()).setReMarks(this.game_info.getReMarks()).setVolcanoOther(this.game_info.getPosition_path() != null ? JsonMapper.toJsonString(this.game_info.getPosition_path()) : "");
            AppBean appBean2 = this.game_info;
            intentDateBean.setExtBean(volcanoOther.setOnlineGame((appBean2 == null || !UtilsMy.F1(appBean2.getTag_info())) ? false : false));
        } else {
            intentDateBean.setTpl_type(this.tpl_type);
        }
        intentDateBean.setExt1(this.ext1);
        intentDateBean.setExt2(this.ext2);
        intentDateBean.setExt3(this.ext3);
        intentDateBean.setExt4(this.ext4);
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        return intentDateBean;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String str) {
        this.crc_link_type_val = str;
    }

    public void setExt1(String str) {
        this.ext1 = str;
    }

    public void setExt2(String str) {
        this.ext2 = str;
    }

    public void setExt3(String str) {
        this.ext3 = str;
    }

    public void setExt4(String str) {
        this.ext4 = str;
    }

    public void setGame_info(AppBean appBean) {
        this.game_info = appBean;
    }

    public void setJump_type(int i2) {
        this.jump_type = i2;
    }

    public void setLink_type(int i2) {
        this.link_type = i2;
    }

    public void setLink_type_val(String str) {
        this.link_type_val = str;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public AppBeanMain(int i2, String str, String str2, int i4, AppBean appBean, String str3, int i5) {
        this.link_type = i2;
        this.link_type_val = str;
        this.crc_link_type_val = str2;
        this.jump_type = i4;
        this.game_info = appBean;
        this.tpl_type = str3;
        this.butnShowTypr = i5;
    }

    public AppBeanMain(int i2, String str, String str2, int i4, String str3, int i5) {
        this.link_type = i2;
        this.link_type_val = str;
        this.crc_link_type_val = str2;
        this.jump_type = i4;
        this.tpl_type = str3;
        this.butnShowTypr = i5;
    }
}
