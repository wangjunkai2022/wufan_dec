package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.ShowableListMenu;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class ForwardingListener implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final float f1178a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1179b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1180c;

    /* renamed from: d  reason: collision with root package name */
    final View f1181d;

    /* renamed from: e  reason: collision with root package name */
    private Runnable f1182e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f1183f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1184g;

    /* renamed from: h  reason: collision with root package name */
    private int f1185h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f1186i = new int[2];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class DisallowIntercept implements Runnable {
        DisallowIntercept() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = ForwardingListener.this.f1181d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class TriggerLongPress implements Runnable {
        TriggerLongPress() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ForwardingListener.this.b();
        }
    }

    public ForwardingListener(View view) {
        this.f1181d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1178a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1179b = tapTimeout;
        this.f1180c = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private void a() {
        Runnable runnable = this.f1183f;
        if (runnable != null) {
            this.f1181d.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1182e;
        if (runnable2 != null) {
            this.f1181d.removeCallbacks(runnable2);
        }
    }

    private boolean c(MotionEvent motionEvent) {
        DropDownListView dropDownListView;
        View view = this.f1181d;
        ShowableListMenu popup = getPopup();
        if (popup == null || !popup.isShowing() || (dropDownListView = (DropDownListView) popup.getListView()) == null || !dropDownListView.isShown()) {
            return false;
        }
        MotionEvent obtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        f(view, obtainNoHistory);
        g(dropDownListView, obtainNoHistory);
        boolean onForwardedEvent = dropDownListView.onForwardedEvent(obtainNoHistory, this.f1185h);
        obtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return onForwardedEvent && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
        if (r1 != 3) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean d(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.f1181d
            boolean r1 = r0.isEnabled()
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L41
            r3 = 1
            if (r1 == r3) goto L3d
            r4 = 2
            if (r1 == r4) goto L1a
            r6 = 3
            if (r1 == r6) goto L3d
            goto L6d
        L1a:
            int r1 = r5.f1185h
            int r1 = r6.findPointerIndex(r1)
            if (r1 < 0) goto L6d
            float r4 = r6.getX(r1)
            float r6 = r6.getY(r1)
            float r1 = r5.f1178a
            boolean r6 = e(r0, r4, r6, r1)
            if (r6 != 0) goto L6d
            r5.a()
            android.view.ViewParent r6 = r0.getParent()
            r6.requestDisallowInterceptTouchEvent(r3)
            return r3
        L3d:
            r5.a()
            goto L6d
        L41:
            int r6 = r6.getPointerId(r2)
            r5.f1185h = r6
            java.lang.Runnable r6 = r5.f1182e
            if (r6 != 0) goto L52
            androidx.appcompat.widget.ForwardingListener$DisallowIntercept r6 = new androidx.appcompat.widget.ForwardingListener$DisallowIntercept
            r6.<init>()
            r5.f1182e = r6
        L52:
            java.lang.Runnable r6 = r5.f1182e
            int r1 = r5.f1179b
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
            java.lang.Runnable r6 = r5.f1183f
            if (r6 != 0) goto L65
            androidx.appcompat.widget.ForwardingListener$TriggerLongPress r6 = new androidx.appcompat.widget.ForwardingListener$TriggerLongPress
            r6.<init>()
            r5.f1183f = r6
        L65:
            java.lang.Runnable r6 = r5.f1183f
            int r1 = r5.f1180c
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ForwardingListener.d(android.view.MotionEvent):boolean");
    }

    private static boolean e(View view, float f4, float f5, float f6) {
        float f7 = -f6;
        return f4 >= f7 && f5 >= f7 && f4 < ((float) (view.getRight() - view.getLeft())) + f6 && f5 < ((float) (view.getBottom() - view.getTop())) + f6;
    }

    private boolean f(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1186i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    private boolean g(View view, MotionEvent motionEvent) {
        int[] iArr = this.f1186i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    void b() {
        a();
        View view = this.f1181d;
        if (view.isEnabled() && !view.isLongClickable() && onForwardingStarted()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(obtain);
            obtain.recycle();
            this.f1184g = true;
        }
    }

    public abstract ShowableListMenu getPopup();

    protected boolean onForwardingStarted() {
        ShowableListMenu popup = getPopup();
        if (popup == null || popup.isShowing()) {
            return true;
        }
        popup.show();
        return true;
    }

    protected boolean onForwardingStopped() {
        ShowableListMenu popup = getPopup();
        if (popup == null || !popup.isShowing()) {
            return true;
        }
        popup.dismiss();
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z3;
        boolean z4 = this.f1184g;
        if (z4) {
            z3 = c(motionEvent) || !onForwardingStopped();
        } else {
            z3 = d(motionEvent) && onForwardingStarted();
            if (z3) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1181d.onTouchEvent(obtain);
                obtain.recycle();
            }
        }
        this.f1184g = z3;
        return z3 || z4;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1184g = false;
        this.f1185h = -1;
        Runnable runnable = this.f1182e;
        if (runnable != null) {
            this.f1181d.removeCallbacks(runnable);
        }
    }
}
