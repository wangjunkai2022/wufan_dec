package com.join.mgps.pulltorefresh.library;

import android.annotation.TargetApi;
import android.view.View;
import com.join.mgps.pulltorefresh.library.PullToRefreshBase;
/* compiled from: OverscrollHelper.java */
@TargetApi(9)
/* loaded from: classes4.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final String f51414a = "OverscrollHelper";

    /* renamed from: b  reason: collision with root package name */
    static final float f51415b = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OverscrollHelper.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51416a;

        static {
            int[] iArr = new int[PullToRefreshBase.Orientation.values().length];
            f51416a = iArr;
            try {
                iArr[PullToRefreshBase.Orientation.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51416a[PullToRefreshBase.Orientation.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(View view) {
        return view.getOverScrollMode() != 2;
    }

    public static void b(PullToRefreshBase<?> pullToRefreshBase, int i2, int i4, int i5, int i6, int i7, int i8, float f4, boolean z3) {
        int scrollX;
        int i9;
        int i10;
        if (a.f51416a[pullToRefreshBase.getPullToRefreshScrollDirection().ordinal()] != 1) {
            scrollX = pullToRefreshBase.getScrollY();
            i9 = i5;
            i10 = i6;
        } else {
            scrollX = pullToRefreshBase.getScrollX();
            i9 = i2;
            i10 = i4;
        }
        if (!pullToRefreshBase.g() || pullToRefreshBase.c()) {
            return;
        }
        PullToRefreshBase.Mode mode = pullToRefreshBase.getMode();
        if (mode.permitsPullToRefresh() && !z3 && i9 != 0) {
            int i11 = i9 + i10;
            StringBuilder sb = new StringBuilder();
            sb.append("OverScroll. DeltaX: ");
            sb.append(i2);
            sb.append(", ScrollX: ");
            sb.append(i4);
            sb.append(", DeltaY: ");
            sb.append(i5);
            sb.append(", ScrollY: ");
            sb.append(i6);
            sb.append(", NewY: ");
            sb.append(i11);
            sb.append(", ScrollRange: ");
            sb.append(i7);
            sb.append(", CurrentScroll: ");
            sb.append(scrollX);
            if (i11 < 0 - i8) {
                if (mode.showHeaderLoadingLayout()) {
                    if (scrollX == 0) {
                        pullToRefreshBase.H(PullToRefreshBase.State.OVERSCROLLING, new boolean[0]);
                    }
                    pullToRefreshBase.setHeaderScroll((int) (f4 * (scrollX + i11)));
                }
            } else if (i11 > i7 + i8) {
                if (mode.showFooterLoadingLayout()) {
                    if (scrollX == 0) {
                        pullToRefreshBase.H(PullToRefreshBase.State.OVERSCROLLING, new boolean[0]);
                    }
                    pullToRefreshBase.setHeaderScroll((int) (f4 * ((scrollX + i11) - i7)));
                }
            } else if (Math.abs(i11) <= i8 || Math.abs(i11 - i7) <= i8) {
                pullToRefreshBase.H(PullToRefreshBase.State.RESET, new boolean[0]);
            }
        } else if (z3 && PullToRefreshBase.State.OVERSCROLLING == pullToRefreshBase.getState()) {
            pullToRefreshBase.H(PullToRefreshBase.State.RESET, new boolean[0]);
        }
    }

    public static void c(PullToRefreshBase<?> pullToRefreshBase, int i2, int i4, int i5, int i6, int i7, boolean z3) {
        b(pullToRefreshBase, i2, i4, i5, i6, i7, 0, 1.0f, z3);
    }

    public static void d(PullToRefreshBase<?> pullToRefreshBase, int i2, int i4, int i5, int i6, boolean z3) {
        c(pullToRefreshBase, i2, i4, i5, i6, 0, z3);
    }
}
