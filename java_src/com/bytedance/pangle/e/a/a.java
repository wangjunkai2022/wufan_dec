package com.bytedance.pangle.e.a;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    int f10192a;

    /* renamed from: b  reason: collision with root package name */
    b f10193b;

    /* renamed from: c  reason: collision with root package name */
    int[] f10194c;

    /* renamed from: i  reason: collision with root package name */
    private boolean f10200i;

    /* renamed from: k  reason: collision with root package name */
    private f f10202k;

    /* renamed from: j  reason: collision with root package name */
    private boolean f10201j = false;

    /* renamed from: l  reason: collision with root package name */
    private final c f10203l = new c();

    /* renamed from: d  reason: collision with root package name */
    int f10195d = 0;

    /* renamed from: e  reason: collision with root package name */
    int f10196e = 1;

    /* renamed from: f  reason: collision with root package name */
    int f10197f = 2;

    /* renamed from: g  reason: collision with root package name */
    int f10198g = 3;

    /* renamed from: h  reason: collision with root package name */
    int f10199h = 4;

    public a() {
        c();
    }

    private int e(int i2) {
        if (this.f10192a == 2) {
            int i4 = i2 * 5;
            if (i4 < this.f10194c.length) {
                return i4;
            }
            throw new IndexOutOfBoundsException("Invalid attribute index (" + i2 + ").");
        }
        throw new IndexOutOfBoundsException("Current event is not START_TAG.");
    }

    public final void a() {
        if (this.f10201j) {
            this.f10201j = false;
            b bVar = this.f10193b;
            InputStream inputStream = bVar.f10204a;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
                bVar.a((InputStream) null);
            }
            this.f10202k = null;
            this.f10193b = null;
            c cVar = this.f10203l;
            cVar.f10207b = 0;
            cVar.f10208c = 0;
            c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0108, code lost:
        throw new java.io.IOException("Invalid resource ids size (" + r1 + ").");
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0221, code lost:
        throw new java.io.IOException("Invalid chunk type (" + r1 + ").");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int b() {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.e.a.a.b():int");
    }

    public final int c(int i2) {
        return this.f10194c[e(i2) + 4];
    }

    public final String d(int i2) {
        int e4 = e(i2);
        int[] iArr = this.f10194c;
        if (iArr[e4 + 3] == 3) {
            return this.f10202k.a(iArr[e4 + 2]);
        }
        return "";
    }

    private void c() {
        this.f10194c = null;
        this.f10192a = -1;
    }

    public final String a(int i2) {
        int i4 = this.f10194c[e(i2) + 1];
        return i4 == -1 ? "" : this.f10202k.a(i4);
    }

    public final int b(int i2) {
        return this.f10194c[e(i2) + 3];
    }
}
