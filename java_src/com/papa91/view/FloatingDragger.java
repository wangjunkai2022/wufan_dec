package com.papa91.view;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.customview.widget.ViewDragHelper;
import com.papa91.mix.R;
import java.util.Observable;
import java.util.Observer;
/* loaded from: classes4.dex */
public class FloatingDragger implements Observer {
    View floatingBtn;
    FloatingDraggedView floatingDraggedView;
    View floatingView;
    PositionObservable observable = PositionObservable.getInstance();
    int marginLR = 0;
    int marginTop = 0;

    /* loaded from: classes4.dex */
    static class PositionObservable extends Observable {
        public static PositionObservable sInstance;

        PositionObservable() {
        }

        public static PositionObservable getInstance() {
            if (sInstance == null) {
                sInstance = new PositionObservable();
            }
            return sInstance;
        }

        public void update() {
            setChanged();
            notifyObservers();
        }
    }

    public FloatingDragger(Context context, View view, View view2) {
        this.floatingView = view2;
        FloatingDraggedView floatingDraggedView = new FloatingDraggedView(context);
        this.floatingDraggedView = floatingDraggedView;
        if (view != null) {
            floatingDraggedView.addView(view, new FrameLayout.LayoutParams(-1, -1));
        }
        if (view2 != null) {
            this.floatingDraggedView.addView(view2, new FrameLayout.LayoutParams(-2, -2));
        }
        this.observable.addObserver(this);
    }

    public int dip2px(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public View getFloatingView() {
        return this.floatingView;
    }

    public View getView() {
        return this.floatingDraggedView;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        FloatingDraggedView floatingDraggedView = this.floatingDraggedView;
        if (floatingDraggedView != null) {
            floatingDraggedView.restorePosition();
        }
    }

    /* loaded from: classes4.dex */
    public class FloatingDraggedView extends FrameLayout {
        public static final String KEY_FLOATING_X = "KEY_FLOATING_X";
        public static final String KEY_FLOATING_Y = "KEY_FLOATING_Y";
        ViewDragHelper dragHelper;
        SharedPreferences.Editor editor;
        SharedPreferences sp;

        public FloatingDraggedView(Context context) {
            super(context);
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("FloatingDraggedView", 4);
            this.sp = sharedPreferences;
            this.editor = sharedPreferences.edit();
            init();
        }

        @Override // android.view.View
        public void computeScroll() {
            if (this.dragHelper.continueSettling(true)) {
                invalidate();
            }
        }

        void init() {
            this.dragHelper = ViewDragHelper.create(this, 1.0f, new ViewDragHelper.Callback() { // from class: com.papa91.view.FloatingDragger.FloatingDraggedView.1
                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public int clampViewPositionHorizontal(View view, int i2, int i4) {
                    if (i2 > FloatingDraggedView.this.getWidth() - view.getMeasuredWidth()) {
                        return FloatingDraggedView.this.getWidth() - view.getMeasuredWidth();
                    }
                    if (i2 < 0) {
                        return 0;
                    }
                    return i2;
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public int clampViewPositionVertical(View view, int i2, int i4) {
                    if (i2 > FloatingDraggedView.this.getHeight() - view.getMeasuredHeight()) {
                        return FloatingDraggedView.this.getHeight() - view.getMeasuredHeight();
                    }
                    if (i2 < 0) {
                        return 0;
                    }
                    return i2;
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public int getViewHorizontalDragRange(View view) {
                    return FloatingDraggedView.this.getMeasuredWidth() - view.getMeasuredWidth();
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public int getViewVerticalDragRange(View view) {
                    return FloatingDraggedView.this.getMeasuredHeight() - view.getMeasuredHeight();
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public void onViewDragStateChanged(int i2) {
                    super.onViewDragStateChanged(i2);
                    if (i2 == 2) {
                        FloatingDragger.this.observable.update();
                    }
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public void onViewPositionChanged(View view, int i2, int i4, int i5, int i6) {
                    super.onViewPositionChanged(view, i2, i4, i5, i6);
                    FloatingDraggedView.this.savePosition();
                    FloatingDraggedView.this.requestLayout();
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public void onViewReleased(View view, float f4, float f5) {
                    int measuredWidth;
                    int measuredWidth2;
                    int measuredHeight;
                    int measuredHeight2;
                    View view2 = FloatingDragger.this.floatingBtn;
                    if (view == view2) {
                        float x3 = view2.getX();
                        float y3 = FloatingDragger.this.floatingBtn.getY();
                        if (x3 < (FloatingDraggedView.this.getMeasuredWidth() / 2.0f) - (view.getMeasuredWidth() / 2.0f)) {
                            if (x3 >= view.getMeasuredWidth() / 3.0f) {
                                if (y3 >= view.getMeasuredHeight() * 3) {
                                    if (y3 > FloatingDraggedView.this.getMeasuredHeight() - (view.getMeasuredHeight() * 3)) {
                                        measuredHeight = FloatingDraggedView.this.getMeasuredHeight();
                                        measuredHeight2 = view.getMeasuredHeight();
                                        y3 = measuredHeight - measuredHeight2;
                                    }
                                }
                                y3 = 0.0f;
                            }
                            x3 = 0.0f;
                        } else {
                            if (x3 > (FloatingDraggedView.this.getMeasuredWidth() - (view.getMeasuredWidth() / 3.0f)) - view.getMeasuredWidth()) {
                                measuredWidth = FloatingDraggedView.this.getMeasuredWidth();
                                measuredWidth2 = view.getMeasuredWidth();
                            } else {
                                if (y3 >= view.getMeasuredHeight() * 3) {
                                    if (y3 > FloatingDraggedView.this.getMeasuredHeight() - (view.getMeasuredHeight() * 3)) {
                                        measuredHeight = FloatingDraggedView.this.getMeasuredHeight();
                                        measuredHeight2 = view.getMeasuredHeight();
                                        y3 = measuredHeight - measuredHeight2;
                                    } else {
                                        measuredWidth = FloatingDraggedView.this.getMeasuredWidth();
                                        measuredWidth2 = view.getMeasuredWidth();
                                    }
                                }
                                y3 = 0.0f;
                            }
                            x3 = measuredWidth - measuredWidth2;
                        }
                        FloatingDraggedView.this.dragHelper.smoothSlideViewTo(view, (int) x3, (int) y3);
                        FloatingDraggedView.this.invalidate();
                    }
                }

                @Override // androidx.customview.widget.ViewDragHelper.Callback
                public boolean tryCaptureView(View view, int i2) {
                    return view == FloatingDragger.this.floatingBtn;
                }
            });
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            FloatingDragger.this.floatingBtn = (View) findViewById(R.id.floating).getParent();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            savePosition();
            FloatingDragger floatingDragger = FloatingDragger.this;
            floatingDragger.observable.deleteObserver(floatingDragger);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return this.dragHelper.shouldInterceptTouchEvent(motionEvent);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
            super.onLayout(z3, i2, i4, i5, i6);
            restorePosition();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            this.dragHelper.processTouchEvent(motionEvent);
            return true;
        }

        public void restorePosition() {
            float f4 = this.sp.getFloat(KEY_FLOATING_X, -1.0f);
            float f5 = this.sp.getFloat(KEY_FLOATING_Y, -1.0f);
            if (f4 == -1.0f && f5 == -1.0f) {
                FloatingDragger floatingDragger = FloatingDragger.this;
                float f6 = floatingDragger.marginLR;
                f5 = floatingDragger.marginTop;
                this.editor.putFloat(KEY_FLOATING_X, f6);
                this.editor.putFloat(KEY_FLOATING_Y, f5);
                this.editor.commit();
                f4 = f6;
            }
            FloatingDragger floatingDragger2 = FloatingDragger.this;
            int i2 = floatingDragger2.marginLR;
            if (f4 < i2) {
                f4 = i2;
            }
            int i4 = floatingDragger2.marginTop;
            if (f5 < i4) {
                f4 = i4;
            }
            int dip2px = floatingDragger2.dip2px(getContext(), 12.0f);
            if ((getMeasuredWidth() - f4) - FloatingDragger.this.floatingBtn.getMeasuredWidth() < FloatingDragger.this.marginLR) {
                int measuredWidth = getMeasuredWidth();
                FloatingDragger floatingDragger3 = FloatingDragger.this;
                f4 = (measuredWidth - floatingDragger3.marginLR) - floatingDragger3.floatingBtn.getMeasuredWidth();
            }
            int i5 = (int) f4;
            int i6 = (int) f5;
            FloatingDragger.this.floatingBtn.layout(i5, i6, FloatingDragger.this.floatingBtn.getMeasuredWidth() + i5 + dip2px, FloatingDragger.this.floatingBtn.getMeasuredHeight() + i6 + dip2px);
        }

        void savePosition() {
            float x3 = FloatingDragger.this.floatingBtn.getX();
            float y3 = FloatingDragger.this.floatingBtn.getY();
            this.editor.putFloat(KEY_FLOATING_X, x3);
            this.editor.putFloat(KEY_FLOATING_Y, y3);
            this.editor.commit();
        }

        public void showMenuDialog() {
            Toast.makeText(getContext(), "showMenu", 0).show();
        }

        public FloatingDraggedView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("FloatingDraggedView", 4);
            this.sp = sharedPreferences;
            this.editor = sharedPreferences.edit();
            init();
        }

        public FloatingDraggedView(Context context, AttributeSet attributeSet, int i2) {
            super(context, attributeSet, i2);
            SharedPreferences sharedPreferences = getContext().getSharedPreferences("FloatingDraggedView", 4);
            this.sp = sharedPreferences;
            this.editor = sharedPreferences.edit();
            init();
        }
    }
}
