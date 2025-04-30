package com.join.mgps.customview;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public class DragImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f45373a;

    /* renamed from: b  reason: collision with root package name */
    private int f45374b;

    /* renamed from: c  reason: collision with root package name */
    private int f45375c;

    /* renamed from: d  reason: collision with root package name */
    private int f45376d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f45377e;

    /* renamed from: f  reason: collision with root package name */
    private int f45378f;

    public DragImageView(Context context) {
        this(context, null, 0);
    }

    private boolean a() {
        return !this.f45377e && (getX() == ((float) this.f45378f) || getX() == ((float) ((this.f45374b - getWidth()) - this.f45378f)));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f45377e = false;
            getParent().requestDisallowInterceptTouchEvent(true);
            this.f45375c = rawX;
            this.f45376d = rawY;
            if (getParent() != null) {
                ViewGroup viewGroup = (ViewGroup) getParent();
                this.f45373a = viewGroup.getHeight();
                this.f45374b = viewGroup.getWidth();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("ACTION_DOWN:");
            sb.append(this.f45374b);
        } else if (action != 1) {
            if (action == 2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ACTION_MOVE:");
                sb2.append(this.f45374b);
                if (this.f45373a > 0 && this.f45374b != 0) {
                    this.f45377e = true;
                    int i2 = rawX - this.f45375c;
                    int i4 = rawY - this.f45376d;
                    if (((int) Math.sqrt((i2 * i2) + (i4 * i4))) <= 10) {
                        this.f45377e = false;
                    } else {
                        float x3 = getX() + i2;
                        float y3 = getY() + i4;
                        if (x3 < 0.0f) {
                            x3 = 0.0f;
                        } else if (x3 > this.f45374b - getWidth()) {
                            x3 = this.f45374b - getWidth();
                        }
                        if (getY() < 0.0f) {
                            y3 = 0.0f;
                        } else {
                            float y4 = getY() + getHeight();
                            int i5 = this.f45373a;
                            if (y4 > i5) {
                                y3 = i5 - getHeight();
                            }
                        }
                        setX(x3);
                        setY(y3);
                        this.f45375c = rawX;
                        this.f45376d = rawY;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("isDrag=");
                        sb3.append(this.f45377e);
                        sb3.append("getX=");
                        sb3.append(getX());
                        sb3.append(";getY=");
                        sb3.append(getY());
                        sb3.append(";parentWidth=");
                        sb3.append(this.f45374b);
                    }
                } else {
                    this.f45377e = false;
                }
            }
        } else if (!a()) {
            if (rawX >= this.f45374b / 2) {
                animate().setInterpolator(new DecelerateInterpolator()).setDuration(500L).xBy(((this.f45374b - getWidth()) - getX()) - this.f45378f).start();
            } else {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "x", getX(), this.f45378f);
                ofFloat.setInterpolator(new DecelerateInterpolator());
                ofFloat.setDuration(500L);
                ofFloat.start();
            }
        }
        return !a() || super.onTouchEvent(motionEvent);
    }

    public DragImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DragImageView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45378f = 0;
        this.f45378f = com.join.mgps.Util.b0.a(context, 10.0f);
    }
}
