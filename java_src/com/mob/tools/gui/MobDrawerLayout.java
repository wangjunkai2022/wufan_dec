package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Scroller;
import com.mob.tools.utils.ResHelper;
/* loaded from: classes4.dex */
public class MobDrawerLayout extends ViewGroup {
    private static final int SNAP_VELOCITY = 500;
    private static final int TOUCH_STATE_REST = 0;
    private static final int TOUCH_STATE_SCROLLING = 1;
    private FrameLayout bodyContainer;
    private FrameLayout drawerContainer;
    private double drawerWidth;
    private float lastMotionX;
    private float lastMotionY;
    private OnDrawerStateChangeListener listener;
    private boolean lockScroll;
    private int maximumVelocity;
    private boolean opened;
    private Paint paint;
    private Scroller scroller;
    private int touchSlop;
    private int touchState;
    private DrawerType type;
    private VelocityTracker velocityTracker;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mob.tools.gui.MobDrawerLayout$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType;

        static {
            int[] iArr = new int[DrawerType.values().length];
            $SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType = iArr;
            try {
                iArr[DrawerType.LEFT_COVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[DrawerType.RIGHT_COVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[DrawerType.LEFT_BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[DrawerType.LEFT_PUSH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[DrawerType.RIGHT_BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[DrawerType.RIGHT_PUSH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public enum DrawerType {
        LEFT_COVER,
        RIGHT_COVER,
        LEFT_BOTTOM,
        RIGHT_BOTTOM,
        LEFT_PUSH,
        RIGHT_PUSH
    }

    /* loaded from: classes4.dex */
    public interface OnDrawerStateChangeListener {
        void onClosing(MobDrawerLayout mobDrawerLayout, int i2);

        void onOpening(MobDrawerLayout mobDrawerLayout, int i2);
    }

    public MobDrawerLayout(Context context) {
        super(context);
        init(context);
    }

    private void computeDrag(int i2) {
        if (i2 >= 500) {
            switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
                case 1:
                case 3:
                case 4:
                    open();
                    return;
                case 2:
                case 5:
                case 6:
                    close();
                    return;
                default:
                    return;
            }
        } else if (i2 <= -500) {
            switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
                case 1:
                case 3:
                case 4:
                    close();
                    return;
                case 2:
                case 5:
                case 6:
                    open();
                    return;
                default:
                    return;
            }
        } else {
            int i4 = 0;
            switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
                case 1:
                case 4:
                    i4 = this.drawerContainer.getRight();
                    break;
                case 2:
                case 6:
                    i4 = getWidth() - this.drawerContainer.getLeft();
                    break;
                case 3:
                    i4 = this.bodyContainer.getLeft();
                    break;
                case 5:
                    i4 = -this.bodyContainer.getLeft();
                    break;
            }
            double width = getWidth();
            double d4 = this.drawerWidth;
            Double.isNaN(width);
            if (i4 >= ((int) (width * d4)) / 2) {
                open();
            } else {
                close();
            }
        }
    }

    private void dragToLeft(int i2) {
        switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
            case 1:
                int right = this.drawerContainer.getRight();
                if (right > 0) {
                    int i4 = right - i2;
                    if (i4 < 0) {
                        i4 = 0;
                    }
                    double width = getWidth();
                    double d4 = this.drawerWidth;
                    Double.isNaN(width);
                    this.drawerContainer.layout(i4 - ((int) (width * d4)), 0, i4, getHeight());
                    return;
                }
                return;
            case 2:
                int right2 = this.drawerContainer.getRight();
                int width2 = getWidth();
                if (right2 > width2) {
                    int i5 = right2 - i2;
                    if (i5 >= width2) {
                        width2 = i5;
                    }
                    double width3 = getWidth();
                    double d5 = this.drawerWidth;
                    Double.isNaN(width3);
                    this.drawerContainer.layout(width2 - ((int) (width3 * d5)), 0, width2, getHeight());
                    return;
                }
                return;
            case 3:
                int left = this.bodyContainer.getLeft();
                if (left > 0) {
                    int i6 = left - i2;
                    if (i6 < 0) {
                        i6 = 0;
                    }
                    this.bodyContainer.layout(i6, 0, getWidth() + i6, getHeight());
                    return;
                }
                return;
            case 4:
                int right3 = this.drawerContainer.getRight();
                if (right3 > 0) {
                    int i7 = right3 - i2;
                    if (i7 < 0) {
                        i7 = 0;
                    }
                    double width4 = getWidth();
                    double d6 = this.drawerWidth;
                    Double.isNaN(width4);
                    this.drawerContainer.layout(i7 - ((int) (width4 * d6)), 0, i7, getHeight());
                    this.bodyContainer.layout(i7, 0, getWidth() + i7, getHeight());
                    return;
                }
                return;
            case 5:
                int left2 = this.bodyContainer.getLeft();
                double d7 = -getWidth();
                double d8 = this.drawerWidth;
                Double.isNaN(d7);
                int i8 = (int) (d7 * d8);
                if (left2 > i8) {
                    int i9 = left2 - i2;
                    if (i9 >= i8) {
                        i8 = i9;
                    }
                    this.bodyContainer.layout(i8, 0, getWidth() + i8, getHeight());
                    return;
                }
                return;
            case 6:
                int right4 = this.drawerContainer.getRight();
                int width5 = getWidth();
                if (right4 > width5) {
                    int i10 = right4 - i2;
                    if (i10 >= width5) {
                        width5 = i10;
                    }
                    double width6 = getWidth();
                    double d9 = this.drawerWidth;
                    Double.isNaN(width6);
                    int i11 = width5 - ((int) (width6 * d9));
                    this.drawerContainer.layout(i11, 0, width5, getHeight());
                    this.bodyContainer.layout(i11 - getWidth(), 0, i11, getHeight());
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void dragToRight(int i2) {
        switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
            case 1:
                int left = this.drawerContainer.getLeft();
                if (left < 0) {
                    int i4 = left + i2;
                    if (i4 > 0) {
                        i4 = 0;
                    }
                    double width = getWidth();
                    double d4 = this.drawerWidth;
                    Double.isNaN(width);
                    this.drawerContainer.layout(i4, 0, ((int) (width * d4)) + i4, getHeight());
                    return;
                }
                return;
            case 2:
                int left2 = this.drawerContainer.getLeft();
                int width2 = getWidth();
                if (left2 < width2) {
                    int i5 = left2 + i2;
                    if (i5 <= width2) {
                        width2 = i5;
                    }
                    double width3 = getWidth();
                    double d5 = this.drawerWidth;
                    Double.isNaN(width3);
                    this.drawerContainer.layout(width2, 0, ((int) (width3 * d5)) + width2, getHeight());
                    return;
                }
                return;
            case 3:
                int left3 = this.bodyContainer.getLeft();
                double width4 = getWidth();
                double d6 = this.drawerWidth;
                Double.isNaN(width4);
                int i6 = (int) (width4 * d6);
                if (left3 < i6) {
                    int i7 = left3 + i2;
                    if (i7 <= i6) {
                        i6 = i7;
                    }
                    this.bodyContainer.layout(i6, 0, getWidth() + i6, getHeight());
                    return;
                }
                return;
            case 4:
                int left4 = this.drawerContainer.getLeft();
                if (left4 < 0) {
                    int i8 = left4 + i2;
                    if (i8 > 0) {
                        i8 = 0;
                    }
                    double width5 = getWidth();
                    double d7 = this.drawerWidth;
                    Double.isNaN(width5);
                    int i9 = ((int) (width5 * d7)) + i8;
                    this.drawerContainer.layout(i8, 0, i9, getHeight());
                    this.bodyContainer.layout(i9, 0, getWidth() + i9, getHeight());
                    return;
                }
                return;
            case 5:
                int left5 = this.bodyContainer.getLeft();
                if (left5 < 0) {
                    int i10 = left5 + i2;
                    if (i10 > 0) {
                        i10 = 0;
                    }
                    this.bodyContainer.layout(i10, 0, getWidth() + i10, getHeight());
                    return;
                }
                return;
            case 6:
                int left6 = this.bodyContainer.getLeft();
                if (left6 < 0) {
                    int i11 = left6 + i2;
                    if (i11 > 0) {
                        i11 = 0;
                    }
                    int width6 = getWidth() + i11;
                    double width7 = getWidth();
                    double d8 = this.drawerWidth;
                    Double.isNaN(width7);
                    this.bodyContainer.layout(i11, 0, width6, getHeight());
                    this.drawerContainer.layout(width6, 0, ((int) (width7 * d8)) + width6, getHeight());
                    return;
                }
                return;
            default:
                return;
        }
    }

    private void drawShadow(Canvas canvas) {
        int i2 = AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()];
        if (i2 == 1) {
            int right = this.drawerContainer.getRight();
            if (right > 0) {
                float f4 = right;
                float f5 = right + 25;
                this.paint.setShader(new LinearGradient(f4, 0.0f, f5, 0.0f, Integer.MIN_VALUE, 0, Shader.TileMode.CLAMP));
                canvas.drawRect(f4, 0.0f, f5, getHeight(), this.paint);
            }
        } else if (i2 == 2) {
            int left = this.drawerContainer.getLeft();
            if (left < getWidth()) {
                float f6 = left - 25;
                float f7 = left;
                this.paint.setShader(new LinearGradient(f6, 0.0f, f7, 0.0f, 0, Integer.MIN_VALUE, Shader.TileMode.CLAMP));
                canvas.drawRect(f6, 0.0f, f7, getHeight(), this.paint);
            }
        } else if (i2 != 5 && i2 != 6) {
            int left2 = this.bodyContainer.getLeft();
            if (left2 > 0) {
                float f8 = left2 - 25;
                float f9 = left2;
                this.paint.setShader(new LinearGradient(f8, 0.0f, f9, 0.0f, 0, Integer.MIN_VALUE, Shader.TileMode.CLAMP));
                canvas.drawRect(f8, 0.0f, f9, getHeight(), this.paint);
            }
        } else {
            int right2 = this.bodyContainer.getRight();
            if (right2 < getWidth()) {
                float f10 = right2;
                float f11 = right2 + 25;
                this.paint.setShader(new LinearGradient(f10, 0.0f, f11, 0.0f, Integer.MIN_VALUE, 0, Shader.TileMode.CLAMP));
                canvas.drawRect(f10, 0.0f, f11, getHeight(), this.paint);
            }
        }
    }

    private void init(Context context) {
        this.scroller = SmoothScroller.DEFAULT.getScroller(context);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.maximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.type = DrawerType.LEFT_COVER;
        this.drawerWidth = 0.8d;
        this.touchState = 0;
        this.paint = new Paint();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.mob.tools.gui.MobDrawerLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        };
        FrameLayout frameLayout = new FrameLayout(context);
        this.bodyContainer = frameLayout;
        frameLayout.setOnClickListener(onClickListener);
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.drawerContainer = frameLayout2;
        frameLayout2.setOnClickListener(onClickListener);
        addView(this.bodyContainer);
        addView(this.drawerContainer);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
        if (r4.drawerContainer.getLeft() == getWidth()) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0039, code lost:
        if (r4.drawerContainer.getRight() == 0) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (r4.bodyContainer.getRight() == getWidth()) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if (r4.bodyContainer.getLeft() == 0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isClose() {
        /*
            r4 = this;
            int[] r0 = com.mob.tools.gui.MobDrawerLayout.AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType
            com.mob.tools.gui.MobDrawerLayout$DrawerType r1 = r4.type
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 1
            r2 = 0
            switch(r0) {
                case 1: goto L33;
                case 2: goto L26;
                case 3: goto L1d;
                case 4: goto L1d;
                case 5: goto L10;
                case 6: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L3e
        L10:
            android.widget.FrameLayout r0 = r4.bodyContainer
            int r0 = r0.getRight()
            int r3 = r4.getWidth()
            if (r0 != r3) goto L3c
            goto L3d
        L1d:
            android.widget.FrameLayout r0 = r4.bodyContainer
            int r0 = r0.getLeft()
            if (r0 != 0) goto L3c
            goto L3d
        L26:
            android.widget.FrameLayout r0 = r4.drawerContainer
            int r0 = r0.getLeft()
            int r3 = r4.getWidth()
            if (r0 != r3) goto L3c
            goto L3d
        L33:
            android.widget.FrameLayout r0 = r4.drawerContainer
            int r0 = r0.getRight()
            if (r0 != 0) goto L3c
            goto L3d
        L3c:
            r1 = 0
        L3d:
            r2 = r1
        L3e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.gui.MobDrawerLayout.isClose():boolean");
    }

    private void switchDrawer(boolean z3, boolean z4) {
        int left;
        double d4;
        double d5;
        int i2;
        int i4;
        this.bodyContainer.clearFocus();
        this.drawerContainer.clearFocus();
        double d6 = 0.0d;
        switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
            case 1:
            case 4:
                left = this.drawerContainer.getLeft();
                if (!z3) {
                    d4 = -getWidth();
                    d5 = this.drawerWidth;
                    Double.isNaN(d4);
                    d6 = d4 * d5;
                }
                i2 = (int) d6;
                i4 = left;
                break;
            case 2:
            case 6:
                int width = getWidth();
                int left2 = this.drawerContainer.getLeft();
                if (z3) {
                    double d7 = width;
                    double d8 = this.drawerWidth;
                    Double.isNaN(d7);
                    d6 = d7 * d8;
                }
                i2 = width - ((int) d6);
                i4 = left2;
                break;
            case 3:
                left = this.bodyContainer.getLeft();
                if (z3) {
                    d4 = getWidth();
                    d5 = this.drawerWidth;
                    Double.isNaN(d4);
                    d6 = d4 * d5;
                }
                i2 = (int) d6;
                i4 = left;
                break;
            case 5:
                left = this.bodyContainer.getLeft();
                if (z3) {
                    d4 = -getWidth();
                    d5 = this.drawerWidth;
                    Double.isNaN(d4);
                    d6 = d4 * d5;
                }
                i2 = (int) d6;
                i4 = left;
                break;
            default:
                i2 = 0;
                i4 = 0;
                break;
        }
        this.scroller.abortAnimation();
        if (i4 != i2) {
            this.scroller.startScroll(i4, 0, i2 - i4, 0, z4 ? 0 : 100);
        }
        invalidate();
    }

    public void close(boolean z3) {
        switchDrawer(false, z3);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.scroller.computeScrollOffset()) {
            switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
                case 1:
                case 2:
                    int currX = this.scroller.getCurrX();
                    double width = getWidth();
                    double d4 = this.drawerWidth;
                    Double.isNaN(width);
                    this.drawerContainer.layout(currX, 0, ((int) (width * d4)) + currX, getHeight());
                    break;
                case 3:
                case 5:
                    int currX2 = this.scroller.getCurrX();
                    this.bodyContainer.layout(currX2, 0, getWidth() + currX2, getHeight());
                    break;
                case 4:
                    int width2 = getWidth();
                    int currX3 = this.scroller.getCurrX();
                    double d5 = width2;
                    double d6 = this.drawerWidth;
                    Double.isNaN(d5);
                    int i2 = ((int) (d5 * d6)) + currX3;
                    this.drawerContainer.layout(currX3, 0, i2, getHeight());
                    this.bodyContainer.layout(i2, 0, width2 + i2, getHeight());
                    break;
                case 6:
                    int width3 = getWidth();
                    int currX4 = this.scroller.getCurrX();
                    double d7 = width3;
                    double d8 = this.drawerWidth;
                    Double.isNaN(d7);
                    this.bodyContainer.layout(currX4 - width3, 0, currX4, getHeight());
                    this.drawerContainer.layout(currX4, 0, ((int) (d7 * d8)) + currX4, getHeight());
                    break;
            }
            postInvalidate();
            if (this.listener == null || this.scroller.getFinalX() == this.scroller.getStartX()) {
                return;
            }
            int currX5 = ((this.scroller.getCurrX() - this.scroller.getStartX()) * 100) / (this.scroller.getFinalX() - this.scroller.getStartX());
            if (this.opened) {
                this.listener.onClosing(this, currX5);
            } else {
                this.listener.onOpening(this, currX5);
            }
        } else if (isClose()) {
            this.opened = false;
        } else {
            this.opened = true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        long drawingTime = getDrawingTime();
        int i2 = AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()];
        if (i2 != 1 && i2 != 2 && i2 != 6) {
            frameLayout = this.drawerContainer;
            frameLayout2 = this.bodyContainer;
        } else {
            frameLayout = this.bodyContainer;
            frameLayout2 = this.drawerContainer;
        }
        drawChild(canvas, frameLayout, drawingTime);
        drawChild(canvas, frameLayout2, drawingTime);
        drawShadow(canvas);
    }

    public boolean isOpened() {
        return this.opened;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0029, code lost:
        if (r0 != 3) goto L19;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            boolean r0 = r5.lockScroll
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            int r0 = r6.getAction()
            r2 = 2
            r3 = 1
            if (r0 != r2) goto L13
            int r4 = r5.touchState
            if (r4 == 0) goto L13
            return r3
        L13:
            android.view.VelocityTracker r4 = r5.velocityTracker
            if (r4 != 0) goto L1d
            android.view.VelocityTracker r4 = android.view.VelocityTracker.obtain()
            r5.velocityTracker = r4
        L1d:
            android.view.VelocityTracker r4 = r5.velocityTracker
            r4.addMovement(r6)
            if (r0 == 0) goto L5d
            if (r0 == r3) goto L50
            if (r0 == r2) goto L2c
            r6 = 3
            if (r0 == r6) goto L50
            goto L72
        L2c:
            float r0 = r6.getX()
            float r6 = r6.getY()
            float r2 = r5.lastMotionX
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r2 = (int) r2
            float r4 = r5.lastMotionY
            float r6 = r6 - r4
            float r6 = java.lang.Math.abs(r6)
            int r6 = (int) r6
            if (r6 >= r2) goto L72
            int r6 = r5.touchSlop
            if (r2 <= r6) goto L72
            r5.touchState = r3
            r5.lastMotionX = r0
            goto L72
        L50:
            android.view.VelocityTracker r6 = r5.velocityTracker
            if (r6 == 0) goto L5a
            r6.recycle()
            r6 = 0
            r5.velocityTracker = r6
        L5a:
            r5.touchState = r1
            goto L72
        L5d:
            float r0 = r6.getX()
            r5.lastMotionX = r0
            float r6 = r6.getY()
            r5.lastMotionY = r6
            android.widget.Scroller r6 = r5.scroller
            boolean r6 = r6.isFinished()
            r6 = r6 ^ r3
            r5.touchState = r6
        L72:
            int r6 = r5.touchState
            if (r6 == 0) goto L77
            r1 = 1
        L77:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.gui.MobDrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        int i7 = i5 - i2;
        int i8 = i6 - i4;
        double d4 = i7;
        double d5 = this.drawerWidth;
        Double.isNaN(d4);
        int i9 = (int) (d4 * d5);
        if (isOpened()) {
            switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
                case 1:
                    this.bodyContainer.layout(0, 0, i7, i8);
                    this.drawerContainer.layout(0, 0, i9, i8);
                    return;
                case 2:
                    this.bodyContainer.layout(0, 0, i7, i8);
                    this.drawerContainer.layout(i7 - i9, 0, i7, i8);
                    return;
                case 3:
                    this.bodyContainer.layout(i9, 0, i7 + i9, i8);
                    this.drawerContainer.layout(0, 0, i9, i8);
                    return;
                case 4:
                    this.bodyContainer.layout(i9, 0, i7 + i9, i8);
                    this.drawerContainer.layout(0, 0, i9, i8);
                    return;
                case 5:
                    int i10 = -i9;
                    int i11 = i7 - i9;
                    this.bodyContainer.layout(i10, 0, i11, i8);
                    this.drawerContainer.layout(i11, 0, i7, i8);
                    return;
                case 6:
                    int i12 = -i9;
                    int i13 = i7 - i9;
                    this.bodyContainer.layout(i12, 0, i13, i8);
                    this.drawerContainer.layout(i13, 0, i7, i8);
                    return;
                default:
                    return;
            }
        }
        switch (AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[this.type.ordinal()]) {
            case 1:
                this.bodyContainer.layout(0, 0, i7, i8);
                this.drawerContainer.layout(-i9, 0, 0, i8);
                return;
            case 2:
                this.bodyContainer.layout(0, 0, i7, i8);
                this.drawerContainer.layout(i7, 0, i9 + i7, i8);
                return;
            case 3:
                this.bodyContainer.layout(0, 0, i7, i8);
                this.drawerContainer.layout(0, 0, i9, i8);
                return;
            case 4:
                this.bodyContainer.layout(0, 0, i7, i8);
                this.drawerContainer.layout(-i9, 0, 0, i8);
                return;
            case 5:
                this.bodyContainer.layout(0, 0, i7, i8);
                this.drawerContainer.layout(i7 - i9, 0, i7, i8);
                return;
            case 6:
                this.bodyContainer.layout(0, 0, i7, i8);
                this.drawerContainer.layout(i7, 0, i9 + i7, i8);
                return;
            default:
                return;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.bodyContainer.measure(makeMeasureSpec, makeMeasureSpec2);
        double d4 = measuredWidth;
        double d5 = this.drawerWidth;
        Double.isNaN(d4);
        this.drawerContainer.measure(View.MeasureSpec.makeMeasureSpec((int) (d4 * d5), 1073741824), makeMeasureSpec2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001c, code lost:
        if (r0 != 3) goto L11;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            android.view.VelocityTracker r0 = r3.velocityTracker
            if (r0 != 0) goto La
            android.view.VelocityTracker r0 = android.view.VelocityTracker.obtain()
            r3.velocityTracker = r0
        La:
            android.view.VelocityTracker r0 = r3.velocityTracker
            r0.addMovement(r4)
            int r0 = r4.getAction()
            r1 = 1
            if (r0 == 0) goto L6a
            if (r0 == r1) goto L44
            r2 = 2
            if (r0 == r2) goto L1f
            r4 = 3
            if (r0 == r4) goto L44
            goto L81
        L1f:
            int r0 = r3.touchState
            if (r0 == r1) goto L2d
            boolean r0 = r3.onInterceptTouchEvent(r4)
            if (r0 == 0) goto L81
            int r0 = r3.touchState
            if (r0 != r1) goto L81
        L2d:
            float r4 = r4.getX()
            float r0 = r3.lastMotionX
            float r0 = r0 - r4
            int r0 = (int) r0
            if (r0 >= 0) goto L3c
            int r0 = -r0
            r3.dragToRight(r0)
            goto L41
        L3c:
            if (r0 <= 0) goto L41
            r3.dragToLeft(r0)
        L41:
            r3.lastMotionX = r4
            goto L81
        L44:
            int r4 = r3.touchState
            if (r4 != r1) goto L66
            android.view.VelocityTracker r4 = r3.velocityTracker
            if (r4 == 0) goto L66
            r0 = 1000(0x3e8, float:1.401E-42)
            int r2 = r3.maximumVelocity
            float r2 = (float) r2
            r4.computeCurrentVelocity(r0, r2)
            android.view.VelocityTracker r4 = r3.velocityTracker
            float r4 = r4.getXVelocity()
            int r4 = (int) r4
            r3.computeDrag(r4)
            android.view.VelocityTracker r4 = r3.velocityTracker
            r4.recycle()
            r4 = 0
            r3.velocityTracker = r4
        L66:
            r4 = 0
            r3.touchState = r4
            goto L81
        L6a:
            int r0 = r3.touchState
            if (r0 == 0) goto L81
            android.widget.Scroller r0 = r3.scroller
            boolean r0 = r0.isFinished()
            if (r0 != 0) goto L7b
            android.widget.Scroller r0 = r3.scroller
            r0.abortAnimation()
        L7b:
            float r4 = r4.getX()
            r3.lastMotionX = r4
        L81:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.gui.MobDrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void open(boolean z3) {
        switchDrawer(true, z3);
    }

    public void setBody(View view) {
        if (ResHelper.isEqual(this.bodyContainer.getChildCount() == 0 ? null : this.bodyContainer.getChildAt(0), view)) {
            return;
        }
        this.bodyContainer.removeAllViews();
        this.bodyContainer.addView(view);
    }

    public void setDrawer(View view) {
        if (ResHelper.isEqual(this.drawerContainer.getChildCount() == 0 ? null : this.drawerContainer.getChildAt(0), view)) {
            return;
        }
        this.drawerContainer.removeAllViews();
        this.drawerContainer.addView(view);
    }

    public void setDrawerType(DrawerType drawerType) {
        if (drawerType == null) {
            drawerType = DrawerType.LEFT_COVER;
        }
        if (this.type != drawerType) {
            this.type = drawerType;
            int i2 = AnonymousClass2.$SwitchMap$com$mob$tools$gui$MobDrawerLayout$DrawerType[drawerType.ordinal()];
            if (i2 != 1 && i2 != 2) {
                this.bodyContainer.bringToFront();
            } else {
                this.drawerContainer.bringToFront();
            }
            postInvalidate();
        }
    }

    public void setDrawerWidth(double d4) {
        if (d4 < 0.0d) {
            d4 = 0.800000011920929d;
        }
        if (d4 > 1.0d) {
            d4 = 1.0d;
        }
        if (this.drawerWidth != d4) {
            this.drawerWidth = d4;
            postInvalidate();
        }
    }

    public void setLockScroll(boolean z3) {
        this.lockScroll = z3;
    }

    public void setOnDrawerStateChangeListener(OnDrawerStateChangeListener onDrawerStateChangeListener) {
        this.listener = onDrawerStateChangeListener;
    }

    public void close() {
        close(false);
    }

    public void open() {
        open(false);
    }

    public MobDrawerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public MobDrawerLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init(context);
    }
}
