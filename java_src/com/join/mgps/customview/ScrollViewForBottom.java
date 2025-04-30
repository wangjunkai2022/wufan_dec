package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes3.dex */
public class ScrollViewForBottom extends ScrollView {

    /* renamed from: a  reason: collision with root package name */
    private a f46061a;

    /* renamed from: b  reason: collision with root package name */
    float f46062b;

    /* loaded from: classes3.dex */
    public interface a {
        void a(ScrollViewForBottom scrollViewForBottom, int i2, int i4, int i5, int i6);
    }

    public ScrollViewForBottom(Context context) {
        super(context);
        this.f46062b = 0.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x000e, code lost:
        if (r0 != 3) goto L9;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getAction()
            r1 = 1
            if (r0 == 0) goto L7e
            r2 = 0
            if (r0 == r1) goto L6e
            r3 = 2
            if (r0 == r3) goto L12
            r1 = 3
            if (r0 == r1) goto L6e
            goto L93
        L12:
            float r0 = r5.f46062b
            float r3 = r6.getY()
            float r0 = r0 - r3
            float r3 = r6.getY()
            r5.f46062b = r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "direction:"
            r3.append(r4)
            r3.append(r0)
            int r3 = r5.getScrollY()     // Catch: java.lang.Exception -> L69
            if (r3 > 0) goto L59
            r3 = -1063256064(0xffffffffc0a00000, float:-5.0)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L59
            android.view.ViewParent r0 = r5.getParent()     // Catch: java.lang.Exception -> L69
            android.view.ViewParent r0 = r0.getParent()     // Catch: java.lang.Exception -> L69
            android.view.ViewParent r0 = r0.getParent()     // Catch: java.lang.Exception -> L69
            r0.requestDisallowInterceptTouchEvent(r2)     // Catch: java.lang.Exception -> L69
            android.view.ViewParent r0 = r5.getParent()     // Catch: java.lang.Exception -> L69
            android.view.ViewParent r0 = r0.getParent()     // Catch: java.lang.Exception -> L69
            android.view.ViewParent r0 = r0.getParent()     // Catch: java.lang.Exception -> L69
            android.view.View r0 = (android.view.View) r0     // Catch: java.lang.Exception -> L69
            r0.onTouchEvent(r6)     // Catch: java.lang.Exception -> L69
            goto L93
        L59:
            android.view.ViewParent r0 = r5.getParent()     // Catch: java.lang.Exception -> L69
            android.view.ViewParent r0 = r0.getParent()     // Catch: java.lang.Exception -> L69
            android.view.ViewParent r0 = r0.getParent()     // Catch: java.lang.Exception -> L69
            r0.requestDisallowInterceptTouchEvent(r1)     // Catch: java.lang.Exception -> L69
            goto L93
        L69:
            r0 = move-exception
            r0.printStackTrace()
            goto L93
        L6e:
            android.view.ViewParent r0 = r5.getParent()
            android.view.ViewParent r0 = r0.getParent()
            android.view.ViewParent r0 = r0.getParent()
            r0.requestDisallowInterceptTouchEvent(r2)
            goto L93
        L7e:
            float r0 = r6.getY()
            r5.f46062b = r0
            android.view.ViewParent r0 = r5.getParent()
            android.view.ViewParent r0 = r0.getParent()
            android.view.ViewParent r0 = r0.getParent()
            r0.requestDisallowInterceptTouchEvent(r1)
        L93:
            boolean r6 = super.dispatchTouchEvent(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.ScrollViewForBottom.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        super.onScrollChanged(i2, i4, i5, i6);
        a aVar = this.f46061a;
        if (aVar != null) {
            aVar.a(this, i2, i4, i5, i6);
        }
    }

    public void setOnScroll(a aVar) {
        this.f46061a = aVar;
    }

    public ScrollViewForBottom(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46062b = 0.0f;
    }

    public ScrollViewForBottom(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46062b = 0.0f;
    }
}
