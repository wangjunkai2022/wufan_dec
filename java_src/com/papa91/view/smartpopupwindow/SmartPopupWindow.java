package com.papa91.view.smartpopupwindow;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.core.widget.PopupWindowCompat;
/* loaded from: classes4.dex */
public class SmartPopupWindow extends PopupWindow {
    private boolean isOnlyGetWH;
    private boolean isTouchOutsideDismiss;
    private float mAlpha;
    private View mAnchorView;
    private int mAnimationStyle;
    private View mContentView;
    private Context mContext;
    private int mHeight;
    private int mHorizontalGravity;
    private int mOffsetX;
    private int mOffsetY;
    private final ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener;
    private int mVerticalGravity;
    private int mWidth;

    /* loaded from: classes4.dex */
    public static class Builder {
        private SmartPopupWindow mWindow;

        private Builder(Activity activity, View view) {
            SmartPopupWindow smartPopupWindow = new SmartPopupWindow(activity);
            this.mWindow = smartPopupWindow;
            smartPopupWindow.mContext = activity;
            this.mWindow.mContentView = view;
        }

        public static Builder build(Activity activity, View view) {
            return new Builder(activity, view);
        }

        public SmartPopupWindow createPopupWindow() {
            this.mWindow.init();
            return this.mWindow;
        }

        public Builder setAlpha(float f4) {
            this.mWindow.mAlpha = f4;
            return this;
        }

        public Builder setAnimationStyle(int i2) {
            this.mWindow.mAnimationStyle = i2;
            return this;
        }

        public Builder setOutsideTouchDismiss(boolean z3) {
            this.mWindow.isTouchOutsideDismiss = z3;
            return this;
        }

        public Builder setSize(int i2, int i4) {
            this.mWindow.mWidth = i2;
            this.mWindow.mHeight = i4;
            return this;
        }
    }

    public SmartPopupWindow(Context context) {
        this(context, null);
    }

    private void addGlobalLayoutListener(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
    }

    private int calculateX(View view, int i2, int i4, int i5) {
        int width;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    width = view.getWidth();
                } else if (i2 != 4) {
                    return i5;
                } else {
                    i4 -= view.getWidth();
                }
            }
            return i5 - i4;
        }
        width = (view.getWidth() / 2) - (i4 / 2);
        return i5 + width;
    }

    private int calculateY(View view, int i2, int i4, int i5) {
        int height;
        if (i2 != 0) {
            if (i2 == 1) {
                i4 += view.getHeight();
            } else if (i2 == 3) {
                height = view.getHeight();
            } else if (i2 != 4) {
                return i5;
            }
            return i5 - i4;
        }
        height = (view.getHeight() / 2) + (i4 / 2);
        return i5 - height;
    }

    private void dismissBackgroundAnimator() {
        float f4 = this.mAlpha;
        if (f4 >= 1.0f) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f4, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SmartPopupWindow.this.setWindowBackgroundAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        ofFloat.setDuration(360L);
        ofFloat.start();
    }

    private static int getDropDownMeasureSpecMode(int i2) {
        return i2 != -2 ? 1073741824 : 0;
    }

    private static int makeDropDownMeasureSpec(int i2) {
        return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i2), getDropDownMeasureSpecMode(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeGlobalLayoutListener() {
        if (getContentView() != null) {
            if (Build.VERSION.SDK_INT >= 16) {
                getContentView().getViewTreeObserver().removeOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
            } else {
                getContentView().getViewTreeObserver().removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWindowBackgroundAlpha(float f4) {
        Context context = this.mContext;
        if (context != null && (context instanceof Activity)) {
            Window window = ((Activity) context).getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.alpha = f4;
            window.setAttributes(attributes);
        }
    }

    private void showBackgroundAnimator() {
        float f4 = this.mAlpha;
        if (f4 >= 1.0f) {
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, f4);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SmartPopupWindow.this.setWindowBackgroundAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        ofFloat.setDuration(360L);
        ofFloat.start();
    }

    private void touchOutsideDismiss(boolean z3) {
        if (!z3) {
            setFocusable(true);
            setOutsideTouchable(false);
            setBackgroundDrawable(null);
            getContentView().setFocusable(true);
            getContentView().setFocusableInTouchMode(true);
            getContentView().setOnKeyListener(new View.OnKeyListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.1
                @Override // android.view.View.OnKeyListener
                public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                    if (i2 == 4) {
                        SmartPopupWindow.this.dismiss();
                        return true;
                    }
                    return false;
                }
            });
            setTouchInterceptor(new View.OnTouchListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    int x3 = (int) motionEvent.getX();
                    int y3 = (int) motionEvent.getY();
                    return (motionEvent.getAction() == 0 && (x3 < 0 || x3 >= SmartPopupWindow.this.mWidth || y3 < 0 || y3 >= SmartPopupWindow.this.mHeight)) || motionEvent.getAction() == 4;
                }
            });
            return;
        }
        setFocusable(true);
        setOutsideTouchable(true);
        setBackgroundDrawable(new ColorDrawable(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLocation(int i2, int i4, @NonNull View view, int i5, int i6, int i7, int i8) {
        update(view, calculateX(view, i6, i2, i7), calculateY(view, i5, i4, i8), i2, i4);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        super.dismiss();
        dismissBackgroundAnimator();
        removeGlobalLayoutListener();
    }

    public void init() {
        setContentView(this.mContentView);
        setHeight(this.mHeight);
        setWidth(this.mWidth);
        touchOutsideDismiss(this.isTouchOutsideDismiss);
        int i2 = this.mAnimationStyle;
        if (i2 != -1) {
            setAnimationStyle(i2);
        }
    }

    public void showAtAnchorView(@NonNull View view, int i2, int i4) {
        showAtAnchorView(view, i2, i4, true);
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i2, int i4, int i5) {
        this.isOnlyGetWH = true;
        this.mAnchorView = view;
        this.mOffsetX = i4;
        this.mOffsetY = i5;
        addGlobalLayoutListener(getContentView());
        super.showAtLocation(view, i2, i4, i5);
    }

    public SmartPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void showAtAnchorView(@NonNull View view, int i2, int i4, boolean z3) {
        showAtAnchorView(view, i2, i4, 0, 0, z3);
    }

    public SmartPopupWindow(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mWidth = -2;
        this.mHeight = -2;
        this.mAlpha = 1.0f;
        this.isTouchOutsideDismiss = true;
        this.mAnimationStyle = -1;
        this.isOnlyGetWH = true;
        this.mVerticalGravity = 2;
        this.mHorizontalGravity = 1;
        this.mOnGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.papa91.view.smartpopupwindow.SmartPopupWindow.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                SmartPopupWindow smartPopupWindow = SmartPopupWindow.this;
                smartPopupWindow.mWidth = smartPopupWindow.getContentView().getWidth();
                SmartPopupWindow smartPopupWindow2 = SmartPopupWindow.this;
                smartPopupWindow2.mHeight = smartPopupWindow2.getContentView().getHeight();
                if (SmartPopupWindow.this.isOnlyGetWH) {
                    SmartPopupWindow.this.removeGlobalLayoutListener();
                    return;
                }
                SmartPopupWindow smartPopupWindow3 = SmartPopupWindow.this;
                smartPopupWindow3.updateLocation(smartPopupWindow3.mWidth, SmartPopupWindow.this.mHeight, SmartPopupWindow.this.mAnchorView, SmartPopupWindow.this.mVerticalGravity, SmartPopupWindow.this.mHorizontalGravity, SmartPopupWindow.this.mOffsetX, SmartPopupWindow.this.mOffsetY);
                SmartPopupWindow.this.removeGlobalLayoutListener();
            }
        };
        this.mContext = context;
    }

    public void showAtAnchorView(@NonNull View view, int i2, int i4, int i5, int i6) {
        showAtAnchorView(view, i2, i4, i5, i6, true);
    }

    public void showAtAnchorView(@NonNull View view, int i2, int i4, int i5, int i6, boolean z3) {
        this.isOnlyGetWH = false;
        this.mAnchorView = view;
        this.mOffsetX = i5;
        this.mOffsetY = i6;
        this.mVerticalGravity = i2;
        this.mHorizontalGravity = i4;
        showBackgroundAnimator();
        View contentView = getContentView();
        addGlobalLayoutListener(contentView);
        setClippingEnabled(z3);
        contentView.measure(makeDropDownMeasureSpec(getWidth()), makeDropDownMeasureSpec(getHeight()));
        int measuredWidth = contentView.getMeasuredWidth();
        int measuredHeight = contentView.getMeasuredHeight();
        if (!z3) {
            int[] iArr = new int[2];
            view.getLocationInWindow(iArr);
            i5 += iArr[0];
            i6 += iArr[1] + view.getHeight();
        }
        int calculateY = calculateY(view, i2, measuredHeight, i6);
        int calculateX = calculateX(view, i4, measuredWidth, i5);
        if (z3) {
            PopupWindowCompat.showAsDropDown(this, view, calculateX, calculateY, 0);
        } else {
            showAtLocation(view, 0, calculateX, calculateY);
        }
    }
}
