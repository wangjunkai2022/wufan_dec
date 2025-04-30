package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Field;
/* loaded from: classes3.dex */
public class RecyclerviewViewpager extends ViewPager {
    public RecyclerviewViewpager(@NonNull Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mFirstLayout");
            declaredField.setAccessible(true);
            declaredField.set(this, Boolean.FALSE);
            setCurrentItem(getCurrentItem());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        if (((Activity) getContext()).isFinishing()) {
            super.onDetachedFromWindow();
        }
    }

    public RecyclerviewViewpager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
