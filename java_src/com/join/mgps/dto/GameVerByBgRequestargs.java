package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameVerByBgRequestargs {
    private String package_name;
    private String version_code;
    private int version_name;

    public GameVerByBgRequestargs() {
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getVersion_code() {
        return this.version_code;
    }

    public int getVersion_name() {
        return this.version_name;
    }

    public void setPackage_name(String str) {
        this.package_name = str;
    }

    public void setVersion_code(String str) {
        this.version_code = str;
    }

    public void setVersion_name(int i2) {
        this.version_name = i2;
    }

    public GameVerByBgRequestargs(String str, int i2, String str2) {
        this.package_name = str;
        this.version_name = i2;
        this.version_code = str2;
    }
}
