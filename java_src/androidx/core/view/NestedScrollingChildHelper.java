package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class NestedScrollingChildHelper {

    /* renamed from: a  reason: collision with root package name */
    private ViewParent f4805a;

    /* renamed from: b  reason: collision with root package name */
    private ViewParent f4806b;

    /* renamed from: c  reason: collision with root package name */
    private final View f4807c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f4808d;

    /* renamed from: e  reason: collision with root package name */
    private int[] f4809e;

    public NestedScrollingChildHelper(@NonNull View view) {
        this.f4807c = view;
    }

    private boolean a(int i2, int i4, int i5, int i6, @Nullable int[] iArr, int i7, @Nullable int[] iArr2) {
        ViewParent b4;
        int i8;
        int i9;
        int[] iArr3;
        if (!isNestedScrollingEnabled() || (b4 = b(i7)) == null) {
            return false;
        }
        if (i2 == 0 && i4 == 0 && i5 == 0 && i6 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f4807c.getLocationInWindow(iArr);
            i8 = iArr[0];
            i9 = iArr[1];
        } else {
            i8 = 0;
            i9 = 0;
        }
        if (iArr2 == null) {
            int[] c4 = c();
            c4[0] = 0;
            c4[1] = 0;
            iArr3 = c4;
        } else {
            iArr3 = iArr2;
        }
        ViewParentCompat.onNestedScroll(b4, this.f4807c, i2, i4, i5, i6, i7, iArr3);
        if (iArr != null) {
            this.f4807c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i8;
            iArr[1] = iArr[1] - i9;
        }
        return true;
    }

    private ViewParent b(int i2) {
        if (i2 != 0) {
            if (i2 != 1) {
                return null;
            }
            return this.f4806b;
        }
        return this.f4805a;
    }

    private int[] c() {
        if (this.f4809e == null) {
            this.f4809e = new int[2];
        }
        return this.f4809e;
    }

    private void d(int i2, ViewParent viewParent) {
        if (i2 == 0) {
            this.f4805a = viewParent;
        } else if (i2 != 1) {
        } else {
            this.f4806b = viewParent;
        }
    }

    public boolean dispatchNestedFling(float f4, float f5, boolean z3) {
        ViewParent b4;
        if (!isNestedScrollingEnabled() || (b4 = b(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedFling(b4, this.f4807c, f4, f5, z3);
    }

    public boolean dispatchNestedPreFling(float f4, float f5) {
        ViewParent b4;
        if (!isNestedScrollingEnabled() || (b4 = b(0)) == null) {
            return false;
        }
        return ViewParentCompat.onNestedPreFling(b4, this.f4807c, f4, f5);
    }

    public boolean dispatchNestedPreScroll(int i2, int i4, @Nullable int[] iArr, @Nullable int[] iArr2) {
        return dispatchNestedPreScroll(i2, i4, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, @Nullable int[] iArr) {
        return a(i2, i4, i5, i6, iArr, 0, null);
    }

    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    public boolean isNestedScrollingEnabled() {
        return this.f4808d;
    }

    public void onDetachedFromWindow() {
        ViewCompat.stopNestedScroll(this.f4807c);
    }

    public void onStopNestedScroll(@NonNull View view) {
        ViewCompat.stopNestedScroll(this.f4807c);
    }

    public void setNestedScrollingEnabled(boolean z3) {
        if (this.f4808d) {
            ViewCompat.stopNestedScroll(this.f4807c);
        }
        this.f4808d = z3;
    }

    public boolean startNestedScroll(int i2) {
        return startNestedScroll(i2, 0);
    }

    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public boolean dispatchNestedPreScroll(int i2, int i4, @Nullable int[] iArr, @Nullable int[] iArr2, int i5) {
        ViewParent b4;
        int i6;
        int i7;
        if (!isNestedScrollingEnabled() || (b4 = b(i5)) == null) {
            return false;
        }
        if (i2 == 0 && i4 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                return false;
            }
            return false;
        }
        if (iArr2 != null) {
            this.f4807c.getLocationInWindow(iArr2);
            i6 = iArr2[0];
            i7 = iArr2[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr == null) {
            iArr = c();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        ViewParentCompat.onNestedPreScroll(b4, this.f4807c, i2, i4, iArr, i5);
        if (iArr2 != null) {
            this.f4807c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i6;
            iArr2[1] = iArr2[1] - i7;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, @Nullable int[] iArr, int i7) {
        return a(i2, i4, i5, i6, iArr, i7, null);
    }

    public boolean hasNestedScrollingParent(int i2) {
        return b(i2) != null;
    }

    public boolean startNestedScroll(int i2, int i4) {
        if (hasNestedScrollingParent(i4)) {
            return true;
        }
        if (isNestedScrollingEnabled()) {
            View view = this.f4807c;
            for (ViewParent parent = this.f4807c.getParent(); parent != null; parent = parent.getParent()) {
                if (ViewParentCompat.onStartNestedScroll(parent, view, this.f4807c, i2, i4)) {
                    d(i4, parent);
                    ViewParentCompat.onNestedScrollAccepted(parent, view, this.f4807c, i2, i4);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
            return false;
        }
        return false;
    }

    public void stopNestedScroll(int i2) {
        ViewParent b4 = b(i2);
        if (b4 != null) {
            ViewParentCompat.onStopNestedScroll(b4, this.f4807c, i2);
            d(i2, null);
        }
    }

    public void dispatchNestedScroll(int i2, int i4, int i5, int i6, @Nullable int[] iArr, int i7, @Nullable int[] iArr2) {
        a(i2, i4, i5, i6, iArr, i7, iArr2);
    }
}
