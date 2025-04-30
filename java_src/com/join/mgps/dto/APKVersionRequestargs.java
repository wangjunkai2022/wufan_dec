package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class APKVersionRequestargs {
    private int plugin;
    private int tag_id;
    private int target_version;
    private int type;
    private int uid;

    public APKVersionRequestargs() {
    }

    public int getPlugin() {
        return this.plugin;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public int getTarget_version() {
        return this.target_version;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public void setPlugin(int i2) {
        this.plugin = i2;
    }

    public void setTag_id(int i2) {
        this.tag_id = i2;
    }

    public void setTarget_version(int i2) {
        this.target_version = i2;
    }

    public void setType(int i2) {
        this.type = i2;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public APKVersionRequestargs(int i2, int i4, int i5, int i6) {
        this.type = i2;
        this.plugin = i4;
        this.tag_id = i5;
        this.target_version = i6;
    }

    public APKVersionRequestargs(int i2, int i4, int i5, int i6, int i7) {
        this.type = i2;
        this.plugin = i4;
        this.tag_id = i5;
        this.target_version = i6;
        this.uid = i7;
    }
}
