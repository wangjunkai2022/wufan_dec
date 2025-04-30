package com.tencent.stat;
/* loaded from: classes4.dex */
public class StatGameUser implements Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private String f59962a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f59963b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f59964c = "";

    /* renamed from: clone */
    public StatGameUser m16clone() {
        try {
            return (StatGameUser) super.clone();
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public String getAccount() {
        return this.f59963b;
    }

    public String getLevel() {
        return this.f59964c;
    }

    public String getWorldName() {
        return this.f59962a;
    }

    public void setAccount(String str) {
        this.f59963b = str;
    }

    public void setLevel(String str) {
        this.f59964c = str;
    }

    public void setWorldName(String str) {
        this.f59962a = str;
    }
}
