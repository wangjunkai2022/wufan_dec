package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
/* loaded from: classes2.dex */
public class TabItem extends View {

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f15869a;

    /* renamed from: b  reason: collision with root package name */
    public final Drawable f15870b;

    /* renamed from: c  reason: collision with root package name */
    public final int f15871c;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TabItem);
        this.f15869a = obtainStyledAttributes.getText(R.styleable.TabItem_android_text);
        this.f15870b = obtainStyledAttributes.getDrawable(R.styleable.TabItem_android_icon);
        this.f15871c = obtainStyledAttributes.getResourceId(R.styleable.TabItem_android_layout, 0);
        obtainStyledAttributes.recycle();
    }
}
