package androidx.core.view;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public interface NestedScrollingChild2 extends NestedScrollingChild {
    boolean dispatchNestedPreScroll(int i2, int i4, @Nullable int[] iArr, @Nullable int[] iArr2, int i5);

    boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, @Nullable int[] iArr, int i7);

    boolean hasNestedScrollingParent(int i2);

    boolean startNestedScroll(int i2, int i4);

    void stopNestedScroll(int i2);
}
