package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public interface NestedScrollingParent {
    int getNestedScrollAxes();

    boolean onNestedFling(@NonNull View view, float f4, float f5, boolean z3);

    boolean onNestedPreFling(@NonNull View view, float f4, float f5);

    void onNestedPreScroll(@NonNull View view, int i2, int i4, @NonNull int[] iArr);

    void onNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6);

    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2);

    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2);

    void onStopNestedScroll(@NonNull View view);
}
