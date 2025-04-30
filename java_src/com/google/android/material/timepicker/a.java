package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
/* compiled from: ClickActionDelegate.java */
/* loaded from: classes2.dex */
class a extends AccessibilityDelegateCompat {

    /* renamed from: a  reason: collision with root package name */
    private final AccessibilityNodeInfoCompat.AccessibilityActionCompat f16222a;

    public a(Context context, int i2) {
        this.f16222a = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, context.getString(i2));
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.addAction(this.f16222a);
    }
}
