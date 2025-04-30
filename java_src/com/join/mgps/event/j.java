package com.join.mgps.event;
/* compiled from: DownloadRuntimeEvent.java */
/* loaded from: classes4.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private String f48178a;

    /* renamed from: b  reason: collision with root package name */
    private int f48179b;

    public j(String str, int i2) {
        this.f48178a = str;
        this.f48179b = i2;
    }

    public String a() {
        return this.f48178a;
    }

    public void b(String str) {
        this.f48178a = str;
    }

    public void c(int i2) {
        this.f48179b = i2;
    }

    public int getType() {
        return this.f48179b;
    }
}
