package com.papa.gsyvideoplayer.utils;

import android.view.View;
import java.lang.ref.WeakReference;
/* compiled from: MeasureHelper.java */
/* loaded from: classes4.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<View> f55234a;

    /* renamed from: b  reason: collision with root package name */
    private int f55235b;

    /* renamed from: c  reason: collision with root package name */
    private int f55236c;

    /* renamed from: d  reason: collision with root package name */
    private int f55237d;

    /* renamed from: e  reason: collision with root package name */
    private int f55238e;

    /* renamed from: f  reason: collision with root package name */
    private int f55239f;

    /* renamed from: g  reason: collision with root package name */
    private int f55240g;

    /* renamed from: h  reason: collision with root package name */
    private int f55241h;

    /* renamed from: i  reason: collision with root package name */
    private int f55242i = 0;

    /* renamed from: j  reason: collision with root package name */
    private final a f55243j;

    /* compiled from: MeasureHelper.java */
    /* loaded from: classes4.dex */
    public interface a {
        int getCurrentVideoHeight();

        int getCurrentVideoWidth();

        int getVideoSarDen();

        int getVideoSarNum();
    }

    public j(View view, a aVar) {
        this.f55243j = aVar;
        this.f55234a = new WeakReference<>(view);
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x00fb, code lost:
        if (r4 != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00fe, code lost:
        if (r4 != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0100, code lost:
        r15 = (int) (r2 / r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0104, code lost:
        r14 = (int) (r5 * r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.papa.gsyvideoplayer.utils.j.a(int, int):void");
    }

    public int b() {
        return this.f55241h;
    }

    public int c() {
        return this.f55240g;
    }

    public View d() {
        WeakReference<View> weakReference = this.f55234a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void e(int i2, int i4, int i5) {
        a aVar = this.f55243j;
        if (aVar != null) {
            try {
                int currentVideoWidth = aVar.getCurrentVideoWidth();
                int currentVideoHeight = this.f55243j.getCurrentVideoHeight();
                c.h("videoWidth: " + currentVideoWidth + " videoHeight: " + currentVideoHeight);
                int videoSarNum = this.f55243j.getVideoSarNum();
                int videoSarDen = this.f55243j.getVideoSarDen();
                if (currentVideoWidth > 0 && currentVideoHeight > 0) {
                    h(videoSarNum, videoSarDen);
                    i(currentVideoWidth, currentVideoHeight);
                }
                g(i5);
                a(i2, i4);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public void f(int i2) {
        this.f55242i = i2;
    }

    public void g(int i2) {
        this.f55239f = i2;
    }

    public void h(int i2, int i4) {
        this.f55237d = i2;
        this.f55238e = i4;
    }

    public void i(int i2, int i4) {
        this.f55235b = i2;
        this.f55236c = i4;
    }
}
