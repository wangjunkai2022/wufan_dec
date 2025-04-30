package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
/* compiled from: HarmonizedColorsOptions.java */
/* loaded from: classes2.dex */
public class k {
    @NonNull
    @ColorRes

    /* renamed from: a  reason: collision with root package name */
    private final int[] f14602a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final i f14603b;
    @AttrRes

    /* renamed from: c  reason: collision with root package name */
    private final int f14604c;

    /* compiled from: HarmonizedColorsOptions.java */
    /* loaded from: classes2.dex */
    public static class b {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private i f14606b;
        @NonNull
        @ColorRes

        /* renamed from: a  reason: collision with root package name */
        private int[] f14605a = new int[0];
        @AttrRes

        /* renamed from: c  reason: collision with root package name */
        private int f14607c = R.attr.colorPrimary;

        @NonNull
        public k d() {
            return new k(this);
        }

        @NonNull
        public b e(@AttrRes int i2) {
            this.f14607c = i2;
            return this;
        }

        @NonNull
        public b f(@Nullable i iVar) {
            this.f14606b = iVar;
            return this;
        }

        @NonNull
        public b g(@NonNull @ColorRes int[] iArr) {
            this.f14605a = iArr;
            return this;
        }
    }

    @NonNull
    public static k a() {
        return new b().f(i.c()).d();
    }

    @AttrRes
    public int b() {
        return this.f14604c;
    }

    @Nullable
    public i c() {
        return this.f14603b;
    }

    @NonNull
    @ColorRes
    public int[] d() {
        return this.f14602a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @StyleRes
    public int e(@StyleRes int i2) {
        i iVar = this.f14603b;
        return (iVar == null || iVar.e() == 0) ? i2 : this.f14603b.e();
    }

    private k(b bVar) {
        this.f14602a = bVar.f14605a;
        this.f14603b = bVar.f14606b;
        this.f14604c = bVar.f14607c;
    }
}
