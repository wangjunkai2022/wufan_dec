package androidx.core.view.accessibility;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
/* loaded from: classes.dex */
public final class AccessibilityClickableSpanCompat extends ClickableSpan {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final String SPAN_ID = "ACCESSIBILITY_CLICKABLE_SPAN_ID";

    /* renamed from: a  reason: collision with root package name */
    private final int f4960a;

    /* renamed from: b  reason: collision with root package name */
    private final AccessibilityNodeInfoCompat f4961b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4962c;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public AccessibilityClickableSpanCompat(int i2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, int i4) {
        this.f4960a = i2;
        this.f4961b = accessibilityNodeInfoCompat;
        this.f4962c = i4;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(@NonNull View view) {
        Bundle bundle = new Bundle();
        bundle.putInt(SPAN_ID, this.f4960a);
        this.f4961b.performAction(this.f4962c, bundle);
    }
}
