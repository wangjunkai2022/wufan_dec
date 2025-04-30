package com.join.mgps.Util;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.reflect.Field;
/* loaded from: classes3.dex */
public class FixedBehavior extends AppBarLayout.Behavior {

    /* renamed from: c  reason: collision with root package name */
    private static final String f27376c = "AppbarLayoutBehavior";

    /* renamed from: d  reason: collision with root package name */
    private static final int f27377d = 1;

    /* renamed from: a  reason: collision with root package name */
    private boolean f27378a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f27379b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a {
        private a() {
        }

        static void a(String str, String str2) {
        }
    }

    public FixedBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private Field a() throws NoSuchFieldException {
        Class<? super Object> superclass = getClass().getSuperclass();
        try {
            if (Build.VERSION.SDK_INT <= 27) {
                Class<? super Object> superclass2 = superclass != null ? superclass.getSuperclass() : null;
                if (superclass2 != null) {
                    return superclass2.getDeclaredField("mFlingRunnable");
                }
                return null;
            }
            Class<? super Object> superclass3 = superclass.getSuperclass().getSuperclass();
            if (superclass3 != null) {
                return superclass3.getDeclaredField("flingRunnable");
            }
            return null;
        } catch (NoSuchFieldException unused) {
            Class<? super Object> superclass4 = superclass.getSuperclass().getSuperclass();
            if (superclass4 != null) {
                return superclass4.getDeclaredField("flingRunnable");
            }
            return null;
        }
    }

    private Field b() throws NoSuchFieldException {
        Class<? super Object> superclass = getClass().getSuperclass();
        try {
            if (Build.VERSION.SDK_INT <= 27) {
                Class<? super Object> superclass2 = superclass != null ? superclass.getSuperclass() : null;
                if (superclass2 != null) {
                    return superclass2.getDeclaredField("mScroller");
                }
                return null;
            }
            Class<? super Object> superclass3 = superclass.getSuperclass().getSuperclass();
            if (superclass3 != null) {
                return superclass3.getDeclaredField("scroller");
            }
            return null;
        } catch (NoSuchFieldException unused) {
            Class<? super Object> superclass4 = superclass.getSuperclass().getSuperclass();
            if (superclass4 != null) {
                return superclass4.getDeclaredField("scroller");
            }
            return null;
        }
    }

    private void e(AppBarLayout appBarLayout) {
        try {
            Field a4 = a();
            Field b4 = b();
            if (a4 != null) {
                a4.setAccessible(true);
            }
            if (b4 != null) {
                b4.setAccessible(true);
            }
            Runnable runnable = a4 != null ? (Runnable) a4.get(this) : null;
            OverScroller overScroller = (OverScroller) b4.get(this);
            if (runnable != null) {
                a.a(f27376c, "存在flingRunnable");
                appBarLayout.removeCallbacks(runnable);
                a4.set(this, null);
            }
            if (overScroller == null || overScroller.isFinished()) {
                return;
            }
            overScroller.abortAnimation();
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        } catch (NoSuchFieldException e5) {
            e5.printStackTrace();
        }
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: c */
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, MotionEvent motionEvent) {
        a.a(f27376c, "onInterceptTouchEvent:" + appBarLayout.getTotalScrollRange());
        this.f27379b = this.f27378a;
        if (motionEvent.getActionMasked() == 0) {
            e(appBarLayout);
        }
        return super.onInterceptTouchEvent(coordinatorLayout, appBarLayout, motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: d */
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i2, int i4, int i5, int i6, int i7) {
        a.a(f27376c, "onNestedScroll: target:" + view.getClass() + " ," + appBarLayout.getTotalScrollRange() + " ,dxConsumed:" + i2 + " ,dyConsumed:" + i4 + " ,type:" + i7);
        if (this.f27379b) {
            return;
        }
        super.onNestedScroll(coordinatorLayout, appBarLayout, view, i2, i4, i5, i6, i7);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i2, int i4, int[] iArr, int i5) {
        a.a(f27376c, "onNestedPreScroll:" + appBarLayout.getTotalScrollRange() + " ,dx:" + i2 + " ,dy:" + i4 + " ,type:" + i5);
        if (i5 == 1) {
            this.f27378a = true;
        }
        if (this.f27379b) {
            return;
        }
        super.onNestedPreScroll(coordinatorLayout, appBarLayout, view, i2, i4, iArr, i5);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i2, int i4) {
        a.a(f27376c, "onStartNestedScroll");
        e(appBarLayout);
        return super.onStartNestedScroll(coordinatorLayout, appBarLayout, view, view2, i2, i4);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i2) {
        a.a(f27376c, "onStopNestedScroll");
        super.onStopNestedScroll(coordinatorLayout, appBarLayout, view, i2);
        this.f27378a = false;
        this.f27379b = false;
    }
}
