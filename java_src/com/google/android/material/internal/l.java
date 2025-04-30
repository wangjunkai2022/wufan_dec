package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;
/* compiled from: TextDrawableHelper.java */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class l {

    /* renamed from: c  reason: collision with root package name */
    private float f15200c;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private com.google.android.material.resources.d f15203f;

    /* renamed from: a  reason: collision with root package name */
    private final TextPaint f15198a = new TextPaint(1);

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.material.resources.f f15199b = new a();

    /* renamed from: d  reason: collision with root package name */
    private boolean f15201d = true;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private WeakReference<b> f15202e = new WeakReference<>(null);

    /* compiled from: TextDrawableHelper.java */
    /* loaded from: classes2.dex */
    class a extends com.google.android.material.resources.f {
        a() {
        }

        @Override // com.google.android.material.resources.f
        public void a(int i2) {
            l.this.f15201d = true;
            b bVar = (b) l.this.f15202e.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // com.google.android.material.resources.f
        public void b(@NonNull Typeface typeface, boolean z3) {
            if (z3) {
                return;
            }
            l.this.f15201d = true;
            b bVar = (b) l.this.f15202e.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    /* compiled from: TextDrawableHelper.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a();

        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public l(@Nullable b bVar) {
        h(bVar);
    }

    private float c(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f15198a.measureText(charSequence, 0, charSequence.length());
    }

    @Nullable
    public com.google.android.material.resources.d d() {
        return this.f15203f;
    }

    @NonNull
    public TextPaint e() {
        return this.f15198a;
    }

    public float f(String str) {
        if (!this.f15201d) {
            return this.f15200c;
        }
        float c4 = c(str);
        this.f15200c = c4;
        this.f15201d = false;
        return c4;
    }

    public boolean g() {
        return this.f15201d;
    }

    public void h(@Nullable b bVar) {
        this.f15202e = new WeakReference<>(bVar);
    }

    public void i(@Nullable com.google.android.material.resources.d dVar, Context context) {
        if (this.f15203f != dVar) {
            this.f15203f = dVar;
            if (dVar != null) {
                dVar.o(context, this.f15198a, this.f15199b);
                b bVar = this.f15202e.get();
                if (bVar != null) {
                    this.f15198a.drawableState = bVar.getState();
                }
                dVar.n(context, this.f15198a, this.f15199b);
                this.f15201d = true;
            }
            b bVar2 = this.f15202e.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    public void j(boolean z3) {
        this.f15201d = z3;
    }

    public void k(Context context) {
        this.f15203f.n(context, this.f15198a, this.f15199b);
    }
}
