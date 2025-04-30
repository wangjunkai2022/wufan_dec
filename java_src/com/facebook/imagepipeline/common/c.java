package com.facebook.imagepipeline.common;

import android.graphics.Bitmap;
import javax.annotation.Nullable;
/* compiled from: ImageDecodeOptionsBuilder.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private boolean f12561b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12562c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f12563d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f12564e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f12565f;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private com.facebook.imagepipeline.decoder.b f12567h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private s0.a f12568i;

    /* renamed from: a  reason: collision with root package name */
    private int f12560a = 100;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap.Config f12566g = Bitmap.Config.ARGB_8888;

    public b a() {
        return new b(this);
    }

    public Bitmap.Config b() {
        return this.f12566g;
    }

    @Nullable
    public s0.a c() {
        return this.f12568i;
    }

    @Nullable
    public com.facebook.imagepipeline.decoder.b d() {
        return this.f12567h;
    }

    public boolean e() {
        return this.f12563d;
    }

    public boolean f() {
        return this.f12561b;
    }

    public boolean g() {
        return this.f12564e;
    }

    public int h() {
        return this.f12560a;
    }

    public boolean i() {
        return this.f12565f;
    }

    public boolean j() {
        return this.f12562c;
    }

    public c k(Bitmap.Config config) {
        this.f12566g = config;
        return this;
    }

    public c l(@Nullable s0.a aVar) {
        this.f12568i = aVar;
        return this;
    }

    public c m(@Nullable com.facebook.imagepipeline.decoder.b bVar) {
        this.f12567h = bVar;
        return this;
    }

    public c n(boolean z3) {
        this.f12563d = z3;
        return this;
    }

    public c o(boolean z3) {
        this.f12561b = z3;
        return this;
    }

    public c p(boolean z3) {
        this.f12564e = z3;
        return this;
    }

    public c q(b bVar) {
        this.f12561b = bVar.f12552b;
        this.f12562c = bVar.f12553c;
        this.f12563d = bVar.f12554d;
        this.f12564e = bVar.f12555e;
        this.f12566g = bVar.f12557g;
        this.f12567h = bVar.f12558h;
        this.f12565f = bVar.f12556f;
        this.f12568i = bVar.f12559i;
        return this;
    }

    public c r(int i2) {
        this.f12560a = i2;
        return this;
    }

    public c s(boolean z3) {
        this.f12565f = z3;
        return this;
    }

    public c t(boolean z3) {
        this.f12562c = z3;
        return this;
    }
}
