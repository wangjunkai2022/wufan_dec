package com.join.mgps.Util;

import com.join.mgps.dto.ExtBean;
import java.io.Serializable;
/* loaded from: classes3.dex */
public class IntentDateBean implements Serializable {
    private String crc_link_type_val;
    private String ext1;
    private String ext2;
    private String ext3;
    private String ext4;
    private ExtBean extBean;
    private String from = "normal";
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private Object object;
    private String tpl_type;

    public IntentDateBean() {
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

    public ExtBean getExtBean() {
        return this.extBean;
    }

    public String getFrom() {
        return this.from;
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

    public Object getObject() {
        return this.object;
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

    public void setExtBean(ExtBean extBean) {
        this.extBean = extBean;
    }

    public void setFrom(String str) {
        this.from = str;
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

    public void setObject(Object obj) {
        this.object = obj;
    }

    public void setTpl_type(String str) {
        this.tpl_type = str;
    }

    public String toString() {
        return "IntentDateBean{link_type=" + this.link_type + ", jump_type=" + this.jump_type + ", link_type_val='" + this.link_type_val + "', crc_link_type_val='" + this.crc_link_type_val + "', tpl_type='" + this.tpl_type + "', object=" + this.object + ", from=" + this.from + '}';
    }

    public IntentDateBean(int i2, int i4, String str, String str2, String str3, Object obj) {
        this.link_type = i2;
        this.jump_type = i4;
        this.link_type_val = str;
        this.crc_link_type_val = str2;
        this.tpl_type = str3;
        this.object = obj;
    }
}
