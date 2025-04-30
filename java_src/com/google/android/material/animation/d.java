package com.google.android.material.animation;

import android.util.Property;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.google.android.material.R;
/* compiled from: ChildrenAlphaProperty.java */
/* loaded from: classes2.dex */
public class d extends Property<ViewGroup, Float> {

    /* renamed from: a  reason: collision with root package name */
    public static final Property<ViewGroup, Float> f14010a = new d("childrenAlpha");

    private d(String str) {
        super(Float.class, str);
    }

    @Override // android.util.Property
    @NonNull
    /* renamed from: a */
    public Float get(@NonNull ViewGroup viewGroup) {
        Float f4 = (Float) viewGroup.getTag(R.id.mtrl_internal_children_alpha_tag);
        return f4 != null ? f4 : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    /* renamed from: b */
    public void set(@NonNull ViewGroup viewGroup, @NonNull Float f4) {
        float floatValue = f4.floatValue();
        viewGroup.setTag(R.id.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            viewGroup.getChildAt(i2).setAlpha(floatValue);
        }
    }
}
