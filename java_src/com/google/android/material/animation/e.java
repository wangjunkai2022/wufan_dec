package com.google.android.material.animation;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.WeakHashMap;
/* compiled from: DrawableAlphaProperty.java */
/* loaded from: classes2.dex */
public class e extends Property<Drawable, Integer> {

    /* renamed from: b  reason: collision with root package name */
    public static final Property<Drawable, Integer> f14011b = new e();

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap<Drawable, Integer> f14012a;

    private e() {
        super(Integer.class, "drawableAlphaCompat");
        this.f14012a = new WeakHashMap<>();
    }

    @Override // android.util.Property
    @Nullable
    /* renamed from: a */
    public Integer get(@NonNull Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.f14012a.containsKey(drawable)) {
            return this.f14012a.get(drawable);
        }
        return 255;
    }

    @Override // android.util.Property
    /* renamed from: b */
    public void set(@NonNull Drawable drawable, @NonNull Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.f14012a.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
