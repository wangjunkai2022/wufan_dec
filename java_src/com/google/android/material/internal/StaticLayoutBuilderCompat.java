package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Constructor;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
final class StaticLayoutBuilderCompat {

    /* renamed from: n  reason: collision with root package name */
    static final int f15060n;

    /* renamed from: o  reason: collision with root package name */
    static final float f15061o = 0.0f;

    /* renamed from: p  reason: collision with root package name */
    static final float f15062p = 1.0f;

    /* renamed from: q  reason: collision with root package name */
    private static final String f15063q = "android.text.TextDirectionHeuristic";

    /* renamed from: r  reason: collision with root package name */
    private static final String f15064r = "android.text.TextDirectionHeuristics";

    /* renamed from: s  reason: collision with root package name */
    private static final String f15065s = "LTR";

    /* renamed from: t  reason: collision with root package name */
    private static final String f15066t = "RTL";

    /* renamed from: u  reason: collision with root package name */
    private static boolean f15067u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private static Constructor<StaticLayout> f15068v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private static Object f15069w;

    /* renamed from: a  reason: collision with root package name */
    private CharSequence f15070a;

    /* renamed from: b  reason: collision with root package name */
    private final TextPaint f15071b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15072c;

    /* renamed from: e  reason: collision with root package name */
    private int f15074e;

    /* renamed from: l  reason: collision with root package name */
    private boolean f15081l;

    /* renamed from: d  reason: collision with root package name */
    private int f15073d = 0;

    /* renamed from: f  reason: collision with root package name */
    private Layout.Alignment f15075f = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: g  reason: collision with root package name */
    private int f15076g = Integer.MAX_VALUE;

    /* renamed from: h  reason: collision with root package name */
    private float f15077h = 0.0f;

    /* renamed from: i  reason: collision with root package name */
    private float f15078i = 1.0f;

    /* renamed from: j  reason: collision with root package name */
    private int f15079j = f15060n;

    /* renamed from: k  reason: collision with root package name */
    private boolean f15080k = true;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private TextUtils.TruncateAt f15082m = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class StaticLayoutBuilderCompatException extends Exception {
        StaticLayoutBuilderCompatException(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    static {
        f15060n = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    private StaticLayoutBuilderCompat(CharSequence charSequence, TextPaint textPaint, int i2) {
        this.f15070a = charSequence;
        this.f15071b = textPaint;
        this.f15072c = i2;
        this.f15074e = charSequence.length();
    }

    private void b() throws StaticLayoutBuilderCompatException {
        Class<?> cls;
        if (f15067u) {
            return;
        }
        try {
            boolean z3 = this.f15081l && Build.VERSION.SDK_INT >= 23;
            if (Build.VERSION.SDK_INT >= 18) {
                cls = TextDirectionHeuristic.class;
                f15069w = z3 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                ClassLoader classLoader = StaticLayoutBuilderCompat.class.getClassLoader();
                String str = this.f15081l ? f15066t : f15065s;
                Class<?> loadClass = classLoader.loadClass(f15063q);
                Class<?> loadClass2 = classLoader.loadClass(f15064r);
                f15069w = loadClass2.getField(str).get(loadClass2);
                cls = loadClass;
            }
            Class cls2 = Integer.TYPE;
            Class cls3 = Float.TYPE;
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls2, cls2, TextPaint.class, cls2, Layout.Alignment.class, cls, cls3, cls3, Boolean.TYPE, TextUtils.TruncateAt.class, cls2, cls2);
            f15068v = declaredConstructor;
            declaredConstructor.setAccessible(true);
            f15067u = true;
        } catch (Exception e4) {
            throw new StaticLayoutBuilderCompatException(e4);
        }
    }

    @NonNull
    public static StaticLayoutBuilderCompat c(@NonNull CharSequence charSequence, @NonNull TextPaint textPaint, @IntRange(from = 0) int i2) {
        return new StaticLayoutBuilderCompat(charSequence, textPaint, i2);
    }

    public StaticLayout a() throws StaticLayoutBuilderCompatException {
        TextDirectionHeuristic textDirectionHeuristic;
        if (this.f15070a == null) {
            this.f15070a = "";
        }
        int max = Math.max(0, this.f15072c);
        CharSequence charSequence = this.f15070a;
        if (this.f15076g == 1) {
            charSequence = TextUtils.ellipsize(charSequence, this.f15071b, max, this.f15082m);
        }
        int min = Math.min(charSequence.length(), this.f15074e);
        this.f15074e = min;
        if (Build.VERSION.SDK_INT >= 23) {
            if (this.f15081l && this.f15076g == 1) {
                this.f15075f = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, this.f15073d, min, this.f15071b, max);
            obtain.setAlignment(this.f15075f);
            obtain.setIncludePad(this.f15080k);
            if (this.f15081l) {
                textDirectionHeuristic = TextDirectionHeuristics.RTL;
            } else {
                textDirectionHeuristic = TextDirectionHeuristics.LTR;
            }
            obtain.setTextDirection(textDirectionHeuristic);
            TextUtils.TruncateAt truncateAt = this.f15082m;
            if (truncateAt != null) {
                obtain.setEllipsize(truncateAt);
            }
            obtain.setMaxLines(this.f15076g);
            float f4 = this.f15077h;
            if (f4 != 0.0f || this.f15078i != 1.0f) {
                obtain.setLineSpacing(f4, this.f15078i);
            }
            if (this.f15076g > 1) {
                obtain.setHyphenationFrequency(this.f15079j);
            }
            return obtain.build();
        }
        b();
        try {
            return (StaticLayout) ((Constructor) Preconditions.checkNotNull(f15068v)).newInstance(charSequence, Integer.valueOf(this.f15073d), Integer.valueOf(this.f15074e), this.f15071b, Integer.valueOf(max), this.f15075f, Preconditions.checkNotNull(f15069w), Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f15080k), null, Integer.valueOf(max), Integer.valueOf(this.f15076g));
        } catch (Exception e4) {
            throw new StaticLayoutBuilderCompatException(e4);
        }
    }

    @NonNull
    public StaticLayoutBuilderCompat d(@NonNull Layout.Alignment alignment) {
        this.f15075f = alignment;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat e(@Nullable TextUtils.TruncateAt truncateAt) {
        this.f15082m = truncateAt;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat f(@IntRange(from = 0) int i2) {
        this.f15074e = i2;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat g(int i2) {
        this.f15079j = i2;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat h(boolean z3) {
        this.f15080k = z3;
        return this;
    }

    public StaticLayoutBuilderCompat i(boolean z3) {
        this.f15081l = z3;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat j(float f4, float f5) {
        this.f15077h = f4;
        this.f15078i = f5;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat k(@IntRange(from = 0) int i2) {
        this.f15076g = i2;
        return this;
    }

    @NonNull
    public StaticLayoutBuilderCompat l(@IntRange(from = 0) int i2) {
        this.f15073d = i2;
        return this;
    }
}
