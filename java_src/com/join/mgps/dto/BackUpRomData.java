package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class BackUpRomData {
    private String gameZipPath;
    private String packageName;

    public BackUpRomData() {
    }

    public String getGameZipPath() {
        return this.gameZipPath;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setGameZipPath(String str) {
        this.gameZipPath = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public BackUpRomData(String str, String str2) {
        this.packageName = str;
        this.gameZipPath = str2;
    }
}
