package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.appcompat.R;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.widget.ListViewAutoScrollHelper;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DropDownListView extends ListView {
    public static final int INVALID_POSITION = -1;
    public static final int NO_POSITION = -1;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f1160a;

    /* renamed from: b  reason: collision with root package name */
    private int f1161b;

    /* renamed from: c  reason: collision with root package name */
    private int f1162c;

    /* renamed from: d  reason: collision with root package name */
    private int f1163d;

    /* renamed from: e  reason: collision with root package name */
    private int f1164e;

    /* renamed from: f  reason: collision with root package name */
    private int f1165f;

    /* renamed from: g  reason: collision with root package name */
    private Field f1166g;

    /* renamed from: h  reason: collision with root package name */
    private GateKeeperDrawable f1167h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1168i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f1169j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f1170k;

    /* renamed from: l  reason: collision with root package name */
    private ViewPropertyAnimatorCompat f1171l;

    /* renamed from: m  reason: collision with root package name */
    private ListViewAutoScrollHelper f1172m;

    /* renamed from: n  reason: collision with root package name */
    ResolveHoverRunnable f1173n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class GateKeeperDrawable extends DrawableWrapper {

        /* renamed from: b  reason: collision with root package name */
        private boolean f1174b;

        GateKeeperDrawable(Drawable drawable) {
            super(drawable);
            this.f1174b = true;
        }

        void a(boolean z3) {
            this.f1174b = z3;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1174b) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void setHotspot(float f4, float f5) {
            if (this.f1174b) {
                super.setHotspot(f4, f5);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i2, int i4, int i5, int i6) {
            if (this.f1174b) {
                super.setHotspotBounds(i2, i4, i5, i6);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1174b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z3, boolean z4) {
            if (this.f1174b) {
                return super.setVisible(z3, z4);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ResolveHoverRunnable implements Runnable {
        ResolveHoverRunnable() {
        }

        public void cancel() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.f1173n = null;
            dropDownListView.removeCallbacks(this);
        }

        public void post() {
            DropDownListView.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.f1173n = null;
            dropDownListView.drawableStateChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropDownListView(@NonNull Context context, boolean z3) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f1160a = new Rect();
        this.f1161b = 0;
        this.f1162c = 0;
        this.f1163d = 0;
        this.f1164e = 0;
        this.f1169j = z3;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1166g = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
        }
    }

    private void a() {
        this.f1170k = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1165f - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1171l;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
            this.f1171l = null;
        }
    }

    private void b(View view, int i2) {
        performItemClick(view, i2, getItemIdAtPosition(i2));
    }

    private void c(Canvas canvas) {
        Drawable selector;
        if (this.f1160a.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f1160a);
        selector.draw(canvas);
    }

    private void d(int i2, View view) {
        Rect rect = this.f1160a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1161b;
        rect.top -= this.f1162c;
        rect.right += this.f1163d;
        rect.bottom += this.f1164e;
        try {
            boolean z3 = this.f1166g.getBoolean(this);
            if (view.isEnabled() != z3) {
                this.f1166g.set(this, Boolean.valueOf(!z3));
                if (i2 != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e4) {
            e4.printStackTrace();
        }
    }

    private void e(int i2, View view) {
        Drawable selector = getSelector();
        boolean z3 = (selector == null || i2 == -1) ? false : true;
        if (z3) {
            selector.setVisible(false, false);
        }
        d(i2, view);
        if (z3) {
            Rect rect = this.f1160a;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            selector.setVisible(getVisibility() == 0, false);
            DrawableCompat.setHotspot(selector, exactCenterX, exactCenterY);
        }
    }

    private void f(int i2, View view, float f4, float f5) {
        e(i2, view);
        Drawable selector = getSelector();
        if (selector == null || i2 == -1) {
            return;
        }
        DrawableCompat.setHotspot(selector, f4, f5);
    }

    private void g(View view, int i2, float f4, float f5) {
        View childAt;
        this.f1170k = true;
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 21) {
            drawableHotspotChanged(f4, f5);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i5 = this.f1165f;
        if (i5 != -1 && (childAt = getChildAt(i5 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f1165f = i2;
        float left = f4 - view.getLeft();
        float top = f5 - view.getTop();
        if (i4 >= 21) {
            view.drawableHotspotChanged(left, top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        f(i2, view, f4, f5);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    private boolean h() {
        return this.f1170k;
    }

    private void i() {
        Drawable selector = getSelector();
        if (selector != null && h() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    private void setSelectorEnabled(boolean z3) {
        GateKeeperDrawable gateKeeperDrawable = this.f1167h;
        if (gateKeeperDrawable != null) {
            gateKeeperDrawable.a(z3);
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1173n != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        i();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1169j || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1169j || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1169j || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1169j && this.f1168i) || super.isInTouchMode();
    }

    public int lookForSelectablePosition(int i2, boolean z3) {
        int min;
        ListAdapter adapter = getAdapter();
        if (adapter != null && !isInTouchMode()) {
            int count = adapter.getCount();
            if (!getAdapter().areAllItemsEnabled()) {
                if (z3) {
                    min = Math.max(0, i2);
                    while (min < count && !adapter.isEnabled(min)) {
                        min++;
                    }
                } else {
                    min = Math.min(i2, count - 1);
                    while (min >= 0 && !adapter.isEnabled(min)) {
                        min--;
                    }
                }
                if (min < 0 || min >= count) {
                    return -1;
                }
                return min;
            } else if (i2 >= 0 && i2 < count) {
                return i2;
            }
        }
        return -1;
    }

    public int measureHeightOfChildrenCompat(int i2, int i4, int i5, int i6, int i7) {
        int makeMeasureSpec;
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i8 = listPaddingTop + listPaddingBottom;
        dividerHeight = (dividerHeight <= 0 || divider == null) ? 0 : 0;
        int count = adapter.getCount();
        View view = null;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < count) {
            int itemViewType = adapter.getItemViewType(i9);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(i9, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i12 = layoutParams.height;
            if (i12 > 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i12, 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(i2, makeMeasureSpec);
            view.forceLayout();
            if (i9 > 0) {
                i8 += dividerHeight;
            }
            i8 += view.getMeasuredHeight();
            if (i8 >= i6) {
                return (i7 < 0 || i9 <= i7 || i11 <= 0 || i8 == i6) ? i6 : i11;
            }
            if (i7 >= 0 && i9 >= i7) {
                i11 = i8;
            }
            i9++;
        }
        return i8;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1173n = null;
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000c, code lost:
        if (r0 != 3) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0048 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onForwardedEvent(android.view.MotionEvent r8, int r9) {
        /*
            r7 = this;
            int r0 = r8.getActionMasked()
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L14
            r9 = 3
            if (r0 == r9) goto L11
        Le:
            r9 = 0
            r3 = 1
            goto L46
        L11:
            r9 = 0
            r3 = 0
            goto L46
        L14:
            r3 = 1
            goto L17
        L16:
            r3 = 0
        L17:
            int r9 = r8.findPointerIndex(r9)
            if (r9 >= 0) goto L1e
            goto L11
        L1e:
            float r4 = r8.getX(r9)
            int r4 = (int) r4
            float r9 = r8.getY(r9)
            int r9 = (int) r9
            int r5 = r7.pointToPosition(r4, r9)
            r6 = -1
            if (r5 != r6) goto L31
            r9 = 1
            goto L46
        L31:
            int r3 = r7.getFirstVisiblePosition()
            int r3 = r5 - r3
            android.view.View r3 = r7.getChildAt(r3)
            float r4 = (float) r4
            float r9 = (float) r9
            r7.g(r3, r5, r4, r9)
            if (r0 != r2) goto Le
            r7.b(r3, r5)
            goto Le
        L46:
            if (r3 == 0) goto L4a
            if (r9 == 0) goto L4d
        L4a:
            r7.a()
        L4d:
            if (r3 == 0) goto L65
            androidx.core.widget.ListViewAutoScrollHelper r9 = r7.f1172m
            if (r9 != 0) goto L5a
            androidx.core.widget.ListViewAutoScrollHelper r9 = new androidx.core.widget.ListViewAutoScrollHelper
            r9.<init>(r7)
            r7.f1172m = r9
        L5a:
            androidx.core.widget.ListViewAutoScrollHelper r9 = r7.f1172m
            r9.setEnabled(r2)
            androidx.core.widget.ListViewAutoScrollHelper r9 = r7.f1172m
            r9.onTouch(r7, r8)
            goto L6c
        L65:
            androidx.core.widget.ListViewAutoScrollHelper r8 = r7.f1172m
            if (r8 == 0) goto L6c
            r8.setEnabled(r1)
        L6c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.DropDownListView.onForwardedEvent(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1173n == null) {
            ResolveHoverRunnable resolveHoverRunnable = new ResolveHoverRunnable();
            this.f1173n = resolveHoverRunnable;
            resolveHoverRunnable.post();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
        } else {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                i();
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1165f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        ResolveHoverRunnable resolveHoverRunnable = this.f1173n;
        if (resolveHoverRunnable != null) {
            resolveHoverRunnable.cancel();
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListSelectionHidden(boolean z3) {
        this.f1168i = z3;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        GateKeeperDrawable gateKeeperDrawable = drawable != null ? new GateKeeperDrawable(drawable) : null;
        this.f1167h = gateKeeperDrawable;
        super.setSelector(gateKeeperDrawable);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1161b = rect.left;
        this.f1162c = rect.top;
        this.f1163d = rect.right;
        this.f1164e = rect.bottom;
    }
}
