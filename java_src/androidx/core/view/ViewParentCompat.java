package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.NonNull;
/* loaded from: classes.dex */
public final class ViewParentCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4849a = "ViewParentCompat";

    /* renamed from: b  reason: collision with root package name */
    private static int[] f4850b;

    private ViewParentCompat() {
    }

    private static int[] a() {
        int[] iArr = f4850b;
        if (iArr == null) {
            f4850b = new int[2];
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
        }
        return f4850b;
    }

    public static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i2) {
        if (Build.VERSION.SDK_INT >= 19) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i2);
        }
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f4, float f5, boolean z3) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedFling(view, f4, f5, z3);
            } catch (AbstractMethodError unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("ViewParent ");
                sb.append(viewParent);
                sb.append(" does not implement interface method onNestedFling");
                return false;
            }
        } else if (viewParent instanceof NestedScrollingParent) {
            return ((NestedScrollingParent) viewParent).onNestedFling(view, f4, f5, z3);
        } else {
            return false;
        }
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f4, float f5) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedPreFling(view, f4, f5);
            } catch (AbstractMethodError unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("ViewParent ");
                sb.append(viewParent);
                sb.append(" does not implement interface method onNestedPreFling");
                return false;
            }
        } else if (viewParent instanceof NestedScrollingParent) {
            return ((NestedScrollingParent) viewParent).onNestedPreFling(view, f4, f5);
        } else {
            return false;
        }
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i2, int i4, int[] iArr) {
        onNestedPreScroll(viewParent, view, i2, i4, iArr, 0);
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i2, int i4, int i5, int i6) {
        onNestedScroll(viewParent, view, i2, i4, i5, i6, 0, a());
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i2) {
        onNestedScrollAccepted(viewParent, view, view2, i2, 0);
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i2) {
        return onStartNestedScroll(viewParent, view, view2, i2, 0);
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        onStopNestedScroll(viewParent, view, 0);
    }

    @Deprecated
    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i2, int i4, int[] iArr, int i5) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, i2, i4, iArr, i5);
        } else if (i5 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedPreScroll(view, i2, i4, iArr);
                } catch (AbstractMethodError unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("ViewParent ");
                    sb.append(viewParent);
                    sb.append(" does not implement interface method onNestedPreScroll");
                }
            } else if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedPreScroll(view, i2, i4, iArr);
            }
        }
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i2, int i4) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, i2, i4);
        } else if (i4 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScrollAccepted(view, view2, i2);
                } catch (AbstractMethodError unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("ViewParent ");
                    sb.append(viewParent);
                    sb.append(" does not implement interface method onNestedScrollAccepted");
                }
            } else if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedScrollAccepted(view, view2, i2);
            }
        }
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i2, int i4) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, i2, i4);
        }
        if (i4 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    return viewParent.onStartNestedScroll(view, view2, i2);
                } catch (AbstractMethodError unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("ViewParent ");
                    sb.append(viewParent);
                    sb.append(" does not implement interface method onStartNestedScroll");
                    return false;
                }
            } else if (viewParent instanceof NestedScrollingParent) {
                return ((NestedScrollingParent) viewParent).onStartNestedScroll(view, view2, i2);
            } else {
                return false;
            }
        }
        return false;
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view, int i2) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, i2);
        } else if (i2 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onStopNestedScroll(view);
                } catch (AbstractMethodError unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("ViewParent ");
                    sb.append(viewParent);
                    sb.append(" does not implement interface method onStopNestedScroll");
                }
            } else if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onStopNestedScroll(view);
            }
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i2, int i4, int i5, int i6, int i7) {
        onNestedScroll(viewParent, view, i2, i4, i5, i6, i7, a());
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i2, int i4, int i5, int i6, int i7, @NonNull int[] iArr) {
        if (viewParent instanceof NestedScrollingParent3) {
            ((NestedScrollingParent3) viewParent).onNestedScroll(view, i2, i4, i5, i6, i7, iArr);
            return;
        }
        iArr[0] = iArr[0] + i5;
        iArr[1] = iArr[1] + i6;
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, i2, i4, i5, i6, i7);
        } else if (i7 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScroll(view, i2, i4, i5, i6);
                } catch (AbstractMethodError unused) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("ViewParent ");
                    sb.append(viewParent);
                    sb.append(" does not implement interface method onNestedScroll");
                }
            } else if (viewParent instanceof NestedScrollingParent) {
                ((NestedScrollingParent) viewParent).onNestedScroll(view, i2, i4, i5, i6);
            }
        }
    }
}
