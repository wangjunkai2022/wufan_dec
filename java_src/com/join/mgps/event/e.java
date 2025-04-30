package com.join.mgps.event;

import com.join.mgps.dto.CloudListDataBean;
/* compiled from: CloudEvent.java */
/* loaded from: classes4.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private CloudListDataBean f48162a;

    /* renamed from: b  reason: collision with root package name */
    private int f48163b;

    /* renamed from: c  reason: collision with root package name */
    private String f48164c;

    /* renamed from: d  reason: collision with root package name */
    private int f48165d;

    /* renamed from: e  reason: collision with root package name */
    private String f48166e;

    public e() {
        this.f48163b = 0;
    }

    public CloudListDataBean a() {
        return this.f48162a;
    }

    public String b() {
        return this.f48166e;
    }

    public String c() {
        return this.f48164c;
    }

    public int d() {
        return this.f48165d;
    }

    public int e() {
        return this.f48163b;
    }

    public void f(CloudListDataBean cloudListDataBean) {
        this.f48162a = cloudListDataBean;
    }

    public void g(String str) {
        this.f48166e = str;
    }

    public void h(String str) {
        this.f48164c = str;
    }

    public void i(int i2) {
        this.f48165d = i2;
    }

    public void j(int i2) {
        this.f48163b = i2;
    }

    public e(CloudListDataBean cloudListDataBean, int i2) {
        this.f48163b = 0;
        this.f48162a = cloudListDataBean;
        this.f48163b = i2;
    }

    public e(CloudListDataBean cloudListDataBean, int i2, String str, int i4, String str2) {
        this.f48163b = 0;
        this.f48162a = cloudListDataBean;
        this.f48163b = i2;
        this.f48164c = str;
        this.f48165d = i4;
        this.f48166e = str2;
    }
}
