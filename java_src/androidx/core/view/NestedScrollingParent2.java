package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public interface NestedScrollingParent2 extends NestedScrollingParent {
    void onNestedPreScroll(@NonNull View view, int i2, int i4, @NonNull int[] iArr, int i5);

    void onNestedScroll(@NonNull View view, int i2, int i4, int i5, int i6, int i7);

    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i2, int i4);

    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i2, int i4);

    void onStopNestedScroll(@NonNull View view, int i2);
}
