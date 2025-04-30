package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public class NestedScrollingParentHelper {

    /* renamed from: a  reason: collision with root package name */
    private int f4810a;

    /* renamed from: b  reason: collision with root package name */
    private int f4811b;

    public NestedScrollingParentHelper(@NonNull ViewGroup viewGroup) {
    }

    public int getNestedScrollAxes() {
        return this.f4810a | this.f4811b;
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2) {
        onNestedScrollAccepted(view, view2, i2, 0);
    }

    public void onStopNestedScroll(@NonNull View view) {
        onStopNestedScroll(view, 0);
    }

    public void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2, int i4) {
        if (i4 == 1) {
            this.f4811b = i2;
        } else {
            this.f4810a = i2;
        }
    }

    public void onStopNestedScroll(@NonNull View view, int i2) {
        if (i2 == 1) {
            this.f4811b = 0;
        } else {
            this.f4810a = 0;
        }
    }
}
