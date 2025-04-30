package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewOverlayApi14.java */
/* loaded from: classes2.dex */
public class t implements v {

    /* renamed from: a  reason: collision with root package name */
    protected a f15214a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ViewOverlayApi14.java */
    @SuppressLint({"ViewConstructor", "PrivateApi"})
    /* loaded from: classes2.dex */
    public static class a extends ViewGroup {

        /* renamed from: f  reason: collision with root package name */
        static Method f15215f;

        /* renamed from: a  reason: collision with root package name */
        ViewGroup f15216a;

        /* renamed from: b  reason: collision with root package name */
        View f15217b;

        /* renamed from: c  reason: collision with root package name */
        ArrayList<Drawable> f15218c;

        /* renamed from: d  reason: collision with root package name */
        t f15219d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f15220e;

        static {
            try {
                Class cls = Integer.TYPE;
                f15215f = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        a(Context context, ViewGroup viewGroup, View view, t tVar) {
            super(context);
            this.f15218c = null;
            this.f15216a = viewGroup;
            this.f15217b = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f15219d = tVar;
        }

        private void c() {
            if (this.f15220e) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        private void d() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f15218c;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f15220e = true;
                    this.f15216a.removeView(this);
                }
            }
        }

        private void e(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f15216a.getLocationOnScreen(iArr2);
            this.f15217b.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        public void a(Drawable drawable) {
            c();
            if (this.f15218c == null) {
                this.f15218c = new ArrayList<>();
            }
            if (this.f15218c.contains(drawable)) {
                return;
            }
            this.f15218c.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        public void b(View view) {
            c();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f15216a && viewGroup.getParent() != null && ViewCompat.isAttachedToWindow(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f15216a.getLocationOnScreen(iArr2);
                    ViewCompat.offsetLeftAndRight(view, iArr[0] - iArr2[0]);
                    ViewCompat.offsetTopAndBottom(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f15216a.getLocationOnScreen(iArr);
            this.f15217b.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f15217b.getWidth(), this.f15217b.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f15218c;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f15218c.get(i2).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected ViewParent f(int i2, int i4, Rect rect) {
            if (this.f15216a == null || f15215f == null) {
                return null;
            }
            try {
                e(new int[2]);
                f15215f.invoke(this.f15216a, Integer.valueOf(i2), Integer.valueOf(i4), rect);
                return null;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return null;
            }
        }

        public void g(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f15218c;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                d();
            }
        }

        public void h(View view) {
            super.removeView(view);
            d();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f15216a != null) {
                rect.offset(iArr[0], iArr[1]);
                if (this.f15216a != null) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    int[] iArr2 = new int[2];
                    e(iArr2);
                    rect.offset(iArr2[0], iArr2[1]);
                    return super.invalidateChildInParent(iArr, rect);
                }
                invalidate(rect);
                return null;
            }
            return null;
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(@NonNull Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        }

        @Override // android.view.View
        protected boolean verifyDrawable(@NonNull Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f15218c) != null && arrayList.contains(drawable));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Context context, ViewGroup viewGroup, View view) {
        this.f15214a = new a(context, viewGroup, view, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t a(View view) {
        ViewGroup g4 = w.g(view);
        if (g4 != null) {
            int childCount = g4.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = g4.getChildAt(i2);
                if (childAt instanceof a) {
                    return ((a) childAt).f15219d;
                }
            }
            return new q(g4.getContext(), g4, view);
        }
        return null;
    }

    @Override // com.google.android.material.internal.v
    public void add(@NonNull Drawable drawable) {
        this.f15214a.a(drawable);
    }

    @Override // com.google.android.material.internal.v
    public void remove(@NonNull Drawable drawable) {
        this.f15214a.g(drawable);
    }
}
