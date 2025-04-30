package m.framework.ui.widget.viewpager;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import m.framework.utils.Utils;
/* loaded from: classes5.dex */
public class ViewPagerClassic extends ViewGroup {
    private static final int SNAP_VELOCITY = 500;
    private static final int TOUCH_STATE_REST = 0;
    private static final int TOUCH_STATE_SCROLLING = 1;
    private ViewPagerAdapter adapter;
    private int currentScreen;
    private float lastMotionX;
    private float lastMotionY;
    private int mMaximumVelocity;
    private VelocityTracker mVelocityTracker;
    private Scroller scroller;
    private int touchSlop;
    private int touchState;

    public ViewPagerClassic(Context context) {
        this(context, null);
    }

    private void handleInterceptMove(MotionEvent motionEvent) {
        float x3 = motionEvent.getX();
        float y3 = motionEvent.getY();
        int abs = (int) Math.abs(x3 - this.lastMotionX);
        int abs2 = (int) Math.abs(y3 - this.lastMotionY);
        int i2 = this.touchSlop;
        boolean z3 = abs > i2;
        boolean z4 = abs2 > i2;
        if ((z3 || z4) && z3) {
            this.touchState = 1;
            this.lastMotionX = x3;
        }
    }

    private void handleScrollMove(MotionEvent motionEvent) {
        int right;
        if (this.adapter == null) {
            return;
        }
        float x3 = motionEvent.getX();
        int i2 = (int) (this.lastMotionX - x3);
        this.lastMotionX = x3;
        if (i2 < 0) {
            if (getScrollX() > 0) {
                scrollBy(Math.max(-getScrollX(), i2), 0);
            }
        } else if (i2 <= 0 || getChildCount() == 0 || (right = (getChildAt(getChildCount() - 1).getRight() - getScrollX()) - getWidth()) <= 0) {
        } else {
            scrollBy(Math.min(right, i2), 0);
        }
    }

    private void init(Context context) {
        this.scroller = new Scroller(getContext(), new Interpolator() { // from class: m.framework.ui.widget.viewpager.ViewPagerClassic.1
            float[] values = {0.0f, 0.0157073f, 0.0314108f, 0.0471065f, 0.0627905f, 0.0784591f, 0.0941083f, 0.109734f, 0.125333f, 0.140901f, 0.156434f, 0.171929f, 0.187381f, 0.202787f, 0.218143f, 0.233445f, 0.24869f, 0.263873f, 0.278991f, 0.29404f, 0.309017f, 0.323917f, 0.338738f, 0.353475f, 0.368125f, 0.382683f, 0.397148f, 0.411514f, 0.425779f, 0.439939f, 0.45399f, 0.46793f, 0.481754f, 0.495459f, 0.509041f, 0.522499f, 0.535827f, 0.549023f, 0.562083f, 0.575005f, 0.587785f, 0.60042f, 0.612907f, 0.625243f, 0.637424f, 0.649448f, 0.661312f, 0.673013f, 0.684547f, 0.695913f, 0.707107f, 0.718126f, 0.728969f, 0.739631f, 0.750111f, 0.760406f, 0.770513f, 0.78043f, 0.790155f, 0.799685f, 0.809017f, 0.81815f, 0.827081f, 0.835807f, 0.844328f, 0.85264f, 0.860742f, 0.868632f, 0.876307f, 0.883766f, 0.891007f, 0.898028f, 0.904827f, 0.911403f, 0.917755f, 0.92388f, 0.929776f, 0.935444f, 0.940881f, 0.946085f, 0.951057f, 0.955793f, 0.960294f, 0.964557f, 0.968583f, 0.97237f, 0.975917f, 0.979223f, 0.982287f, 0.985109f, 0.987688f, 0.990024f, 0.992115f, 0.993961f, 0.995562f, 0.996917f, 0.998027f, 0.99889f, 0.999507f, 0.999877f, 1.0f};

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f4) {
                return this.values[(int) (f4 * 100.0f)];
            }
        });
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.view.View
    public void computeScroll() {
        ViewPagerAdapter viewPagerAdapter;
        if (this.adapter == null) {
            return;
        }
        if (this.scroller.computeScrollOffset()) {
            scrollTo(this.scroller.getCurrX(), this.scroller.getCurrY());
            postInvalidate();
            return;
        }
        int i2 = this.currentScreen;
        int currX = this.scroller.getCurrX();
        int width = getWidth();
        int i4 = currX / width;
        if (currX % width > width / 2) {
            i4++;
        }
        int max = Math.max(0, Math.min(i4, getChildCount() - 1));
        this.currentScreen = max;
        if (i2 == max || (viewPagerAdapter = this.adapter) == null) {
            return;
        }
        viewPagerAdapter.onScreenChange(max, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.adapter == null || getChildCount() <= 0) {
            return;
        }
        long drawingTime = getDrawingTime();
        int i2 = this.currentScreen;
        if (i2 > 0) {
            drawChild(canvas, getChildAt(i2 - 1), drawingTime);
        }
        drawChild(canvas, getChildAt(this.currentScreen), drawingTime);
        if (this.currentScreen < getChildCount() - 1) {
            drawChild(canvas, getChildAt(this.currentScreen + 1), drawingTime);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i2) {
        if (this.adapter == null) {
            return super.dispatchUnhandledMove(view, i2);
        }
        if (i2 == 17) {
            int i4 = this.currentScreen;
            if (i4 > 0) {
                scrollToScreen(i4 - 1);
                return true;
            }
        } else if (i2 == 66 && this.currentScreen < getChildCount() - 1) {
            scrollToScreen(this.currentScreen + 1);
            return true;
        }
        return super.dispatchUnhandledMove(view, i2);
    }

    public int getCurrentScreen() {
        return this.currentScreen;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
        if (r0 != 3) goto L16;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getAction()
            r1 = 2
            r2 = 1
            if (r0 != r1) goto Ld
            int r3 = r4.touchState
            if (r3 == 0) goto Ld
            return r2
        Ld:
            android.view.VelocityTracker r3 = r4.mVelocityTracker
            if (r3 != 0) goto L17
            android.view.VelocityTracker r3 = android.view.VelocityTracker.obtain()
            r4.mVelocityTracker = r3
        L17:
            android.view.VelocityTracker r3 = r4.mVelocityTracker
            r3.addMovement(r5)
            r3 = 0
            if (r0 == 0) goto L38
            if (r0 == r2) goto L2b
            if (r0 == r1) goto L27
            r5 = 3
            if (r0 == r5) goto L2b
            goto L4d
        L27:
            r4.handleInterceptMove(r5)
            goto L4d
        L2b:
            android.view.VelocityTracker r5 = r4.mVelocityTracker
            if (r5 == 0) goto L35
            r5.recycle()
            r5 = 0
            r4.mVelocityTracker = r5
        L35:
            r4.touchState = r3
            goto L4d
        L38:
            float r0 = r5.getX()
            float r5 = r5.getY()
            r4.lastMotionX = r0
            r4.lastMotionY = r5
            android.widget.Scroller r5 = r4.scroller
            boolean r5 = r5.isFinished()
            r5 = r5 ^ r2
            r4.touchState = r5
        L4d:
            int r5 = r4.touchState
            if (r5 == 0) goto L52
            return r2
        L52:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: m.framework.ui.widget.viewpager.ViewPagerClassic.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        if (this.adapter == null) {
            return;
        }
        int i7 = i5 - i2;
        int i8 = i6 - i4;
        int childCount = getChildCount();
        int i9 = 0;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() != 8) {
                int i11 = i9 + i7;
                childAt.layout(i9, 0, i11, i8);
                i9 = i11;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        if (this.adapter == null) {
            super.onMeasure(i2, i4);
            return;
        }
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Utils.getScreenWidth(getContext()), 1073741824);
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            childAt.measure(makeMeasureSpec, 0);
            int measuredHeight = childAt.getMeasuredHeight();
            if (measuredHeight > i5) {
                i5 = measuredHeight;
            }
        }
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec2);
        for (int i7 = 0; i7 < childCount; i7++) {
            getChildAt(i7).measure(makeMeasureSpec, makeMeasureSpec2);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i2;
        if (this.adapter == null) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        float x3 = motionEvent.getX();
        if (action != 0) {
            if (action == 1) {
                if (this.touchState == 1) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int xVelocity = (int) velocityTracker.getXVelocity();
                    if (xVelocity > 500 && (i2 = this.currentScreen) > 0) {
                        scrollToScreen(i2 - 1);
                    } else if (xVelocity < -500 && this.currentScreen < getChildCount() - 1) {
                        scrollToScreen(this.currentScreen + 1);
                    } else {
                        int width = getWidth();
                        scrollToScreen((getScrollX() + (width / 2)) / width);
                    }
                    VelocityTracker velocityTracker2 = this.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.recycle();
                        this.mVelocityTracker = null;
                    }
                }
                this.touchState = 0;
            } else if (action != 2) {
                if (action == 3) {
                    this.touchState = 0;
                }
            } else if (this.touchState == 1) {
                handleScrollMove(motionEvent);
            } else if (onInterceptTouchEvent(motionEvent) && this.touchState == 1) {
                handleScrollMove(motionEvent);
            }
        } else if (this.touchState != 0) {
            if (!this.scroller.isFinished()) {
                this.scroller.abortAnimation();
            }
            this.lastMotionX = x3;
        }
        return true;
    }

    public void scrollLeft() {
        if (this.adapter != null && this.currentScreen > 0 && this.scroller.isFinished()) {
            scrollToScreen(this.currentScreen - 1);
        }
    }

    public void scrollRight() {
        if (this.adapter != null && this.currentScreen < getChildCount() - 1 && this.scroller.isFinished()) {
            scrollToScreen(this.currentScreen + 1);
        }
    }

    public void scrollToScreen(int i2) {
        scrollToScreen(i2, false);
    }

    public void setAdapter(ViewPagerAdapter viewPagerAdapter) {
        this.adapter = viewPagerAdapter;
        removeAllViews();
        this.currentScreen = 0;
        if (this.adapter == null) {
            return;
        }
        int count = viewPagerAdapter.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            addView(viewPagerAdapter.getView(i2, this));
        }
    }

    public void setCurrentScreen(int i2) {
        if (this.adapter == null) {
            return;
        }
        if (!this.scroller.isFinished()) {
            this.scroller.abortAnimation();
        }
        int i4 = this.currentScreen;
        int max = Math.max(0, Math.min(i2, getChildCount()));
        this.currentScreen = max;
        this.adapter.onScreenChange(max, i4);
        int screenWidth = this.currentScreen * Utils.getScreenWidth(getContext());
        this.scroller.startScroll(0, 0, screenWidth, 0);
        scrollTo(screenWidth, 0);
    }

    public ViewPagerClassic(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void scrollToScreen(int i2, boolean z3) {
        boolean z4 = i2 != this.currentScreen;
        View focusedChild = getFocusedChild();
        if (focusedChild != null && z4 && focusedChild == getChildAt(this.currentScreen)) {
            focusedChild.clearFocus();
        }
        int width = (i2 * getWidth()) - getScrollX();
        this.scroller.startScroll(getScrollX(), 0, width, 0, z3 ? 0 : Math.abs(width) / 2);
        invalidate();
    }

    public ViewPagerClassic(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.touchState = 0;
        init(context);
    }
}
