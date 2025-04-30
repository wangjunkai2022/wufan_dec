package m.framework.ui.widget.slidingmenu;

import android.graphics.Color;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.HorizontalScrollView;
/* loaded from: classes5.dex */
public class BodyContainer extends HorizontalScrollView {
    private static final int MENU_COVER_ALPHA = 230;
    private static final int MIN_FLING_VEL = 500;
    private float downX;
    private int maxVelocity;
    private SlidingMenu menu;
    private VelocityTracker tracker;

    public BodyContainer(SlidingMenu slidingMenu) {
        super(slidingMenu.getContext());
        this.downX = 2.14748365E9f;
        this.menu = slidingMenu;
        this.maxVelocity = ViewConfiguration.get(slidingMenu.getContext()).getScaledMaximumFlingVelocity();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
        if (r0 != 3) goto L8;
     */
    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            int r0 = r4.getAction()
            r1 = 1
            if (r0 == 0) goto L2f
            if (r0 == r1) goto L2a
            r1 = 2
            if (r0 == r1) goto L10
            r1 = 3
            if (r0 == r1) goto L2a
            goto L5f
        L10:
            m.framework.ui.widget.slidingmenu.SlidingMenu r0 = r3.menu
            boolean r0 = r0.isMenuShown()
            if (r0 != 0) goto L5f
            float r0 = r3.downX
            m.framework.ui.widget.slidingmenu.SlidingMenu r1 = r3.menu
            int r1 = r1.getShowMenuWidth()
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L5f
            super.onInterceptTouchEvent(r4)
            r4 = 0
            return r4
        L2a:
            r0 = 1325400064(0x4f000000, float:2.14748365E9)
            r3.downX = r0
            goto L5f
        L2f:
            float r0 = r4.getX()
            r3.downX = r0
            m.framework.ui.widget.slidingmenu.SlidingMenu r0 = r3.menu
            boolean r0 = r0.isMenuShown()
            if (r0 == 0) goto L5f
            float r0 = r3.downX
            m.framework.ui.widget.slidingmenu.SlidingMenu r2 = r3.menu
            int r2 = r2.getMenuWidth()
            float r2 = (float) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L5f
            float r0 = r4.getY()
            m.framework.ui.widget.slidingmenu.SlidingMenu r2 = r3.menu
            m.framework.ui.widget.slidingmenu.MenuConfig r2 = r2.getMenuConfig()
            int r2 = r2.titleHeight
            float r2 = (float) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L5f
            super.onInterceptTouchEvent(r4)
            return r1
        L5f:
            boolean r4 = super.onInterceptTouchEvent(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: m.framework.ui.widget.slidingmenu.BodyContainer.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onScrollChanged(int i2, int i4, int i5, int i6) {
        super.onScrollChanged(i2, i4, i5, i6);
        this.menu.getMenuCover().setBackgroundColor(Color.argb((i2 * MENU_COVER_ALPHA) / this.menu.getMenuWidth(), 0, 0, 0));
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.tracker == null) {
            this.tracker = VelocityTracker.obtain();
        }
        this.tracker.addMovement(motionEvent);
        int action = motionEvent.getAction();
        if (action != 1 && action != 3) {
            if (!this.menu.isMenuShown() || this.downX >= this.menu.getMenuWidth()) {
                return super.onTouchEvent(motionEvent);
            }
            return false;
        } else if (!this.menu.isMenuShown() || this.downX >= this.menu.getMenuWidth()) {
            this.downX = 2.14748365E9f;
            this.tracker.computeCurrentVelocity(1000, this.maxVelocity);
            float xVelocity = this.tracker.getXVelocity();
            this.tracker.recycle();
            this.tracker = null;
            int scrollX = getScrollX();
            if (xVelocity - 500.0f > 0.0f) {
                this.menu.showMenu();
            } else if (xVelocity + 500.0f < 0.0f) {
                this.menu.hideMenu();
            } else if (scrollX > this.menu.getMenuWidth() / 2) {
                this.menu.hideMenu();
            } else {
                this.menu.showMenu();
            }
            return true;
        } else {
            return false;
        }
    }
}
