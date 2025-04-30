package androidx.transition;

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
/* loaded from: classes2.dex */
public class ViewOverlayApi14 implements ViewOverlayImpl {

    /* renamed from: a  reason: collision with root package name */
    protected OverlayViewGroup f7790a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewOverlayApi14(Context context, ViewGroup viewGroup, View view) {
        this.f7790a = new OverlayViewGroup(context, viewGroup, view, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewOverlayApi14 a(View view) {
        ViewGroup b4 = b(view);
        if (b4 != null) {
            int childCount = b4.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = b4.getChildAt(i2);
                if (childAt instanceof OverlayViewGroup) {
                    return ((OverlayViewGroup) childAt).f7795d;
                }
            }
            return new ViewGroupOverlayApi14(b4.getContext(), b4, view);
        }
        return null;
    }

    static ViewGroup b(View view) {
        while (view != null) {
            if (view.getId() == 16908290 && (view instanceof ViewGroup)) {
                return (ViewGroup) view;
            }
            if (view.getParent() instanceof ViewGroup) {
                view = (ViewGroup) view.getParent();
            }
        }
        return null;
    }

    @Override // androidx.transition.ViewOverlayImpl
    public void add(@NonNull Drawable drawable) {
        this.f7790a.add(drawable);
    }

    @Override // androidx.transition.ViewOverlayImpl
    public void remove(@NonNull Drawable drawable) {
        this.f7790a.remove(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class OverlayViewGroup extends ViewGroup {

        /* renamed from: f  reason: collision with root package name */
        static Method f7791f;

        /* renamed from: a  reason: collision with root package name */
        ViewGroup f7792a;

        /* renamed from: b  reason: collision with root package name */
        View f7793b;

        /* renamed from: c  reason: collision with root package name */
        ArrayList<Drawable> f7794c;

        /* renamed from: d  reason: collision with root package name */
        ViewOverlayApi14 f7795d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f7796e;

        static {
            try {
                Class cls = Integer.TYPE;
                f7791f = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", cls, cls, Rect.class);
            } catch (NoSuchMethodException unused) {
            }
        }

        OverlayViewGroup(Context context, ViewGroup viewGroup, View view, ViewOverlayApi14 viewOverlayApi14) {
            super(context);
            this.f7794c = null;
            this.f7792a = viewGroup;
            this.f7793b = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f7795d = viewOverlayApi14;
        }

        private void a() {
            if (this.f7796e) {
                throw new IllegalStateException("This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()");
            }
        }

        private void b() {
            if (getChildCount() == 0) {
                ArrayList<Drawable> arrayList = this.f7794c;
                if (arrayList == null || arrayList.size() == 0) {
                    this.f7796e = true;
                    this.f7792a.removeView(this);
                }
            }
        }

        private void c(int[] iArr) {
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            this.f7792a.getLocationOnScreen(iArr2);
            this.f7793b.getLocationOnScreen(iArr3);
            iArr[0] = iArr3[0] - iArr2[0];
            iArr[1] = iArr3[1] - iArr2[1];
        }

        public void add(Drawable drawable) {
            a();
            if (this.f7794c == null) {
                this.f7794c = new ArrayList<>();
            }
            if (this.f7794c.contains(drawable)) {
                return;
            }
            this.f7794c.add(drawable);
            invalidate(drawable.getBounds());
            drawable.setCallback(this);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        protected ViewParent d(int i2, int i4, Rect rect) {
            if (!(this.f7792a instanceof ViewGroup) || f7791f == null) {
                return null;
            }
            try {
                c(new int[2]);
                f7791f.invoke(this.f7792a, Integer.valueOf(i2), Integer.valueOf(i4), rect);
                return null;
            } catch (IllegalAccessException e4) {
                e4.printStackTrace();
                return null;
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
                return null;
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f7792a.getLocationOnScreen(iArr);
            this.f7793b.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f7793b.getWidth(), this.f7793b.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f7794c;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f7794c.get(i2).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f7792a != null) {
                rect.offset(iArr[0], iArr[1]);
                if (this.f7792a instanceof ViewGroup) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    int[] iArr2 = new int[2];
                    c(iArr2);
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

        public void remove(Drawable drawable) {
            ArrayList<Drawable> arrayList = this.f7794c;
            if (arrayList != null) {
                arrayList.remove(drawable);
                invalidate(drawable.getBounds());
                drawable.setCallback(null);
                b();
            }
        }

        @Override // android.view.View
        protected boolean verifyDrawable(@NonNull Drawable drawable) {
            ArrayList<Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f7794c) != null && arrayList.contains(drawable));
        }

        public void remove(View view) {
            super.removeView(view);
            b();
        }

        public void add(View view) {
            a();
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != this.f7792a && viewGroup.getParent() != null && ViewCompat.isAttachedToWindow(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f7792a.getLocationOnScreen(iArr2);
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
    }
}
