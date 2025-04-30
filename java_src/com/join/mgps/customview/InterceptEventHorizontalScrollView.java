package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
/* loaded from: classes3.dex */
public class InterceptEventHorizontalScrollView extends HorizontalRecyclerView {
    private static final String I1 = "InterceptEventHorizontalScrollView";
    private boolean H1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnScrollChangedListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
        }
    }

    public InterceptEventHorizontalScrollView(Context context) {
        super(context);
        S0();
    }

    private void S0() {
        getViewTreeObserver().addOnScrollChangedListener(new a());
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
        if (r0 != 3) goto L9;
     */
    @Override // com.join.mgps.customview.HorizontalRecyclerView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getAction()
            int r1 = r6.getScrollX()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "----scrollX---: "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "InterceptEventHorizontalScrollView"
            com.join.mgps.Util.t0.b(r3, r2)
            r0 = r0 & 255(0xff, float:3.57E-43)
            if (r0 == 0) goto L67
            r2 = 1
            r4 = 0
            if (r0 == r2) goto L5a
            r5 = 2
            if (r0 == r5) goto L2d
            r1 = 3
            if (r0 == r1) goto L5a
            goto L6c
        L2d:
            if (r1 != 0) goto L3c
            java.lang.String r0 = "----onInterceptTouchEvent ACTION_MOVE 最左边不拦截事件--- "
            com.join.mgps.Util.t0.b(r3, r0)
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r4)
            goto L6c
        L3c:
            boolean r0 = r6.H1
            if (r0 == 0) goto L4d
            java.lang.String r0 = "----onInterceptTouchEvent ACTION_MOVE 最右边，不拦截事件--- "
            com.join.mgps.Util.t0.b(r3, r0)
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r4)
            goto L6c
        L4d:
            java.lang.String r0 = "---onInterceptTouchEvent ACTION_MOVE 中间，拦截事件--- "
            com.join.mgps.Util.t0.b(r3, r0)
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
            goto L6c
        L5a:
            java.lang.String r0 = "---onInterceptTouchEvent ACTION_UP | ACTION_CANCEL "
            com.join.mgps.Util.t0.b(r3, r0)
            android.view.ViewParent r0 = r6.getParent()
            r0.requestDisallowInterceptTouchEvent(r4)
            goto L6c
        L67:
            java.lang.String r0 = "----onInterceptTouchEvent ACTION_DOWN--- "
            com.join.mgps.Util.t0.b(r3, r0)
        L6c:
            boolean r7 = super.onInterceptTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.InterceptEventHorizontalScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public InterceptEventHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        S0();
    }

    public InterceptEventHorizontalScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        S0();
    }
}
