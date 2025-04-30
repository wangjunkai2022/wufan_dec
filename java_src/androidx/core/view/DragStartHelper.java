package androidx.core.view;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes.dex */
public class DragStartHelper {

    /* renamed from: a  reason: collision with root package name */
    private final View f4752a;

    /* renamed from: b  reason: collision with root package name */
    private final OnDragStartListener f4753b;

    /* renamed from: c  reason: collision with root package name */
    private int f4754c;

    /* renamed from: d  reason: collision with root package name */
    private int f4755d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f4756e;

    /* renamed from: f  reason: collision with root package name */
    private final View.OnLongClickListener f4757f = new View.OnLongClickListener() { // from class: androidx.core.view.DragStartHelper.1
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return DragStartHelper.this.onLongClick(view);
        }
    };

    /* renamed from: g  reason: collision with root package name */
    private final View.OnTouchListener f4758g = new View.OnTouchListener() { // from class: androidx.core.view.DragStartHelper.2
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return DragStartHelper.this.onTouch(view, motionEvent);
        }
    };

    /* loaded from: classes.dex */
    public interface OnDragStartListener {
        boolean onDragStart(View view, DragStartHelper dragStartHelper);
    }

    public DragStartHelper(View view, OnDragStartListener onDragStartListener) {
        this.f4752a = view;
        this.f4753b = onDragStartListener;
    }

    public void attach() {
        this.f4752a.setOnLongClickListener(this.f4757f);
        this.f4752a.setOnTouchListener(this.f4758g);
    }

    public void detach() {
        this.f4752a.setOnLongClickListener(null);
        this.f4752a.setOnTouchListener(null);
    }

    public void getTouchPosition(Point point) {
        point.set(this.f4754c, this.f4755d);
    }

    public boolean onLongClick(View view) {
        return this.f4753b.onDragStart(view, this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
        if (r2 != 3) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r7, android.view.MotionEvent r8) {
        /*
            r6 = this;
            float r0 = r8.getX()
            int r0 = (int) r0
            float r1 = r8.getY()
            int r1 = (int) r1
            int r2 = r8.getAction()
            r3 = 0
            if (r2 == 0) goto L49
            r4 = 1
            if (r2 == r4) goto L46
            r5 = 2
            if (r2 == r5) goto L1b
            r7 = 3
            if (r2 == r7) goto L46
            goto L4d
        L1b:
            r2 = 8194(0x2002, float:1.1482E-41)
            boolean r2 = androidx.core.view.MotionEventCompat.isFromSource(r8, r2)
            if (r2 == 0) goto L4d
            int r8 = r8.getButtonState()
            r8 = r8 & r4
            if (r8 != 0) goto L2b
            goto L4d
        L2b:
            boolean r8 = r6.f4756e
            if (r8 == 0) goto L30
            goto L4d
        L30:
            int r8 = r6.f4754c
            if (r8 != r0) goto L39
            int r8 = r6.f4755d
            if (r8 != r1) goto L39
            goto L4d
        L39:
            r6.f4754c = r0
            r6.f4755d = r1
            androidx.core.view.DragStartHelper$OnDragStartListener r8 = r6.f4753b
            boolean r7 = r8.onDragStart(r7, r6)
            r6.f4756e = r7
            return r7
        L46:
            r6.f4756e = r3
            goto L4d
        L49:
            r6.f4754c = r0
            r6.f4755d = r1
        L4d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.DragStartHelper.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
