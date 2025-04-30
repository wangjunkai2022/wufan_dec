package com.zhy.view.flowlayout;

import android.content.Context;
import android.view.View;
import android.widget.Checkable;
import android.widget.FrameLayout;
/* loaded from: classes3.dex */
public class TagView extends FrameLayout implements Checkable {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f64958b = {16842912};

    /* renamed from: a  reason: collision with root package name */
    private boolean f64959a;

    public TagView(Context context) {
        super(context);
    }

    public View getTagView() {
        return getChildAt(0);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f64959a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f64958b);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z3) {
        if (this.f64959a != z3) {
            this.f64959a = z3;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f64959a);
    }
}
