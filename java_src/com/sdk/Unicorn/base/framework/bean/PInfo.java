package com.sdk.Unicorn.base.framework.bean;

import com.sdk.l.a;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public class PInfo {

    /* renamed from: c  reason: collision with root package name */
    public String f56499c;
    public ArrayList<String> imei;
    public String mac;

    /* renamed from: n  reason: collision with root package name */
    public String f56500n;
    public String os;

    public String getC() {
        return this.f56499c;
    }

    public ArrayList<String> getImei() {
        return this.imei;
    }

    public String getMac() {
        return this.mac;
    }

    public String getN() {
        return this.f56500n;
    }

    public String getOs() {
        return this.os;
    }

    public void setC(String str) {
        this.f56499c = str;
    }

    public void setImei(ArrayList<String> arrayList) {
        this.imei = arrayList;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setN(String str) {
        this.f56500n = str;
    }

    public void setOs(String str) {
        this.os = str;
    }

    public String toString() {
        return a.a(this);
    }
}
