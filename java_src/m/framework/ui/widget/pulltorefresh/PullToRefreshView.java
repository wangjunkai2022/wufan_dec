package m.framework.ui.widget.pulltorefresh;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
/* loaded from: classes5.dex */
public class PullToRefreshView extends RelativeLayout {
    private static final long MIN_REF_TIME = 1000;
    private PullToRefreshAdatper adapter;
    private View bodyView;
    private float downY;
    private int headerHeight;
    private View headerView;
    private boolean pullingLock;
    private long refreshTime;
    private boolean requesting;
    private Runnable stopAct;
    private int top;

    public PullToRefreshView(Context context) {
        super(context);
        init();
    }

    private boolean canPull() {
        return !this.pullingLock && this.adapter.isPullReady();
    }

    private MotionEvent getCancelEvent(MotionEvent motionEvent) {
        return MotionEvent.obtain(motionEvent.getDownTime(), motionEvent.getEventTime(), 3, motionEvent.getX(), motionEvent.getY(), motionEvent.getMetaState());
    }

    private void init() {
        this.stopAct = new Runnable() { // from class: m.framework.ui.widget.pulltorefresh.PullToRefreshView.1
            @Override // java.lang.Runnable
            public void run() {
                PullToRefreshView.this.reversePulling();
                PullToRefreshView.this.stopRequest();
            }
        };
    }

    private void performRequest() {
        this.refreshTime = System.currentTimeMillis();
        this.requesting = true;
        PullToRefreshAdatper pullToRefreshAdatper = this.adapter;
        if (pullToRefreshAdatper != null) {
            pullToRefreshAdatper.onRequest();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reversePulling() {
        this.top = 0;
        scrollTo(0, 0);
        PullToRefreshAdatper pullToRefreshAdatper = this.adapter;
        if (pullToRefreshAdatper != null) {
            pullToRefreshAdatper.onReversed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopRequest() {
        this.requesting = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0010, code lost:
        if (r0 != 3) goto L9;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getAction()
            if (r0 == 0) goto L8a
            r1 = 1
            r2 = 100
            r3 = 0
            if (r0 == r1) goto L55
            r1 = 2
            if (r0 == r1) goto L14
            r1 = 3
            if (r0 == r1) goto L55
            goto L90
        L14:
            float r0 = r7.getY()
            boolean r1 = r6.requesting
            if (r1 != 0) goto L22
            boolean r1 = r6.canPull()
            if (r1 == 0) goto L52
        L22:
            int r1 = r6.top
            float r1 = (float) r1
            float r4 = r6.downY
            float r4 = r0 - r4
            r5 = 1073741824(0x40000000, float:2.0)
            float r4 = r4 / r5
            float r1 = r1 + r4
            int r1 = (int) r1
            r6.top = r1
            if (r1 <= 0) goto L4d
            int r1 = -r1
            r6.scrollTo(r3, r1)
            boolean r1 = r6.requesting
            if (r1 != 0) goto L48
            m.framework.ui.widget.pulltorefresh.PullToRefreshAdatper r1 = r6.adapter
            if (r1 == 0) goto L48
            int r3 = r6.top
            int r3 = r3 * 100
            int r2 = r6.headerHeight
            int r3 = r3 / r2
            r1.onPullDown(r3)
        L48:
            android.view.MotionEvent r7 = r6.getCancelEvent(r7)
            goto L52
        L4d:
            r6.top = r3
            r6.scrollTo(r3, r3)
        L52:
            r6.downY = r0
            goto L90
        L55:
            boolean r0 = r6.requesting
            if (r0 != 0) goto L81
            int r0 = r6.top
            int r1 = r6.headerHeight
            if (r0 <= r1) goto L74
            r6.top = r1
            int r0 = -r1
            r6.scrollTo(r3, r0)
            m.framework.ui.widget.pulltorefresh.PullToRefreshAdatper r0 = r6.adapter
            if (r0 == 0) goto L6c
            r0.onPullDown(r2)
        L6c:
            r6.performRequest()
            android.view.MotionEvent r7 = r6.getCancelEvent(r7)
            goto L90
        L74:
            if (r0 == 0) goto L90
            r6.reversePulling()
            m.framework.ui.widget.pulltorefresh.PullToRefreshAdatper r0 = r6.adapter
            if (r0 == 0) goto L90
            r0.onPullDown(r3)
            goto L90
        L81:
            int r0 = r6.headerHeight
            r6.top = r0
            int r0 = -r0
            r6.scrollTo(r3, r0)
            goto L90
        L8a:
            float r0 = r7.getY()
            r6.downY = r0
        L90:
            boolean r7 = super.dispatchTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: m.framework.ui.widget.pulltorefresh.PullToRefreshView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    public void lockPulling() {
        this.pullingLock = true;
    }

    public void performPulling(boolean z3) {
        int i2 = this.headerHeight;
        this.top = i2;
        scrollTo(0, -i2);
        if (z3) {
            performRequest();
        }
    }

    public void releaseLock() {
        this.pullingLock = false;
    }

    public void setAdapter(PullToRefreshAdatper pullToRefreshAdatper) {
        this.adapter = pullToRefreshAdatper;
        removeAllViews();
        this.bodyView = (View) pullToRefreshAdatper.getBodyView();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(9, -1);
        layoutParams.addRule(11, -1);
        layoutParams.addRule(10, -1);
        addView(this.bodyView, layoutParams);
        View headerView = pullToRefreshAdatper.getHeaderView();
        this.headerView = headerView;
        headerView.measure(0, 0);
        this.headerHeight = this.headerView.getMeasuredHeight();
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, this.headerHeight);
        layoutParams2.addRule(9, -1);
        layoutParams2.addRule(11, -1);
        layoutParams2.addRule(10, -1);
        layoutParams2.topMargin = -this.headerHeight;
        addView(this.headerView, layoutParams2);
    }

    public void stopPulling() {
        long currentTimeMillis = System.currentTimeMillis() - this.refreshTime;
        if (currentTimeMillis < 1000) {
            postDelayed(this.stopAct, 1000 - currentTimeMillis);
        } else {
            post(this.stopAct);
        }
    }

    public PullToRefreshView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public PullToRefreshView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init();
    }
}
