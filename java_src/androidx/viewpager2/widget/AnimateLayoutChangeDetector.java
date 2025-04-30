package androidx.viewpager2.widget;

import android.animation.LayoutTransition;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class AnimateLayoutChangeDetector {

    /* renamed from: b  reason: collision with root package name */
    private static final ViewGroup.MarginLayoutParams f8113b;

    /* renamed from: a  reason: collision with root package name */
    private LinearLayoutManager f8114a;

    static {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        f8113b = marginLayoutParams;
        marginLayoutParams.setMargins(0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AnimateLayoutChangeDetector(@NonNull LinearLayoutManager linearLayoutManager) {
        this.f8114a = linearLayoutManager;
    }

    private boolean a() {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        int top;
        int i2;
        int bottom;
        int i4;
        int childCount = this.f8114a.getChildCount();
        if (childCount == 0) {
            return true;
        }
        boolean z3 = this.f8114a.getOrientation() == 0;
        int[][] iArr = (int[][]) Array.newInstance(int.class, childCount, 2);
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = this.f8114a.getChildAt(i5);
            if (childAt != null) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                } else {
                    marginLayoutParams = f8113b;
                }
                int[] iArr2 = iArr[i5];
                if (z3) {
                    top = childAt.getLeft();
                    i2 = marginLayoutParams.leftMargin;
                } else {
                    top = childAt.getTop();
                    i2 = marginLayoutParams.topMargin;
                }
                iArr2[0] = top - i2;
                int[] iArr3 = iArr[i5];
                if (z3) {
                    bottom = childAt.getRight();
                    i4 = marginLayoutParams.rightMargin;
                } else {
                    bottom = childAt.getBottom();
                    i4 = marginLayoutParams.bottomMargin;
                }
                iArr3[1] = bottom + i4;
            } else {
                throw new IllegalStateException("null view contained in the view hierarchy");
            }
        }
        Arrays.sort(iArr, new Comparator<int[]>() { // from class: androidx.viewpager2.widget.AnimateLayoutChangeDetector.1
            @Override // java.util.Comparator
            public int compare(int[] iArr4, int[] iArr5) {
                return iArr4[0] - iArr5[0];
            }
        });
        for (int i6 = 1; i6 < childCount; i6++) {
            if (iArr[i6 - 1][1] != iArr[i6][0]) {
                return false;
            }
        }
        return iArr[0][0] <= 0 && iArr[childCount - 1][1] >= iArr[0][1] - iArr[0][0];
    }

    private boolean b() {
        int childCount = this.f8114a.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (c(this.f8114a.getChildAt(i2))) {
                return true;
            }
        }
        return false;
    }

    private static boolean c(View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null && layoutTransition.isChangingLayout()) {
                return true;
            }
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (c(viewGroup.getChildAt(i2))) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return (!a() || this.f8114a.getChildCount() <= 1) && b();
    }
}
