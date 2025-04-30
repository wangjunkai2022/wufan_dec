package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class StrokeTextView extends TextView implements View.OnTouchListener, com.facebook.rebound.m {

    /* renamed from: a  reason: collision with root package name */
    private TextView f46403a;

    /* renamed from: b  reason: collision with root package name */
    private int f46404b;

    /* renamed from: c  reason: collision with root package name */
    private int f46405c;

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.rebound.i f46406d;

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.rebound.o f46407e;

    /* renamed from: f  reason: collision with root package name */
    Context f46408f;

    /* renamed from: g  reason: collision with root package name */
    private Handler f46409g;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StrokeTextView.this.performClick();
        }
    }

    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            StrokeTextView.this.performClick();
        }
    }

    public StrokeTextView(Context context) {
        super(context);
        this.f46403a = null;
        this.f46404b = 20;
        this.f46405c = 3;
        this.f46409g = new Handler();
        this.f46403a = new TextView(context);
        e(null);
        this.f46408f = context;
    }

    @Override // com.facebook.rebound.m
    public void a(com.facebook.rebound.i iVar) {
        float f4 = 1.0f - (((float) iVar.f()) * 0.3f);
        setScaleX(f4);
        setScaleY(f4);
    }

    @Override // com.facebook.rebound.m
    public void b(com.facebook.rebound.i iVar) {
    }

    @Override // com.facebook.rebound.m
    public void c(com.facebook.rebound.i iVar) {
    }

    @Override // com.facebook.rebound.m
    public void d(com.facebook.rebound.i iVar) {
    }

    public void e(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.StrokeTextView);
            int color = obtainStyledAttributes.getColor(1, 0);
            TextPaint paint = this.f46403a.getPaint();
            paint.setStrokeWidth(4.0f);
            paint.setStyle(Paint.Style.STROKE);
            this.f46403a.setTextColor(color);
            this.f46403a.setGravity(getGravity());
            obtainStyledAttributes.recycle();
        }
        com.facebook.rebound.o m4 = com.facebook.rebound.o.m();
        this.f46407e = m4;
        com.facebook.rebound.i d4 = m4.d();
        this.f46406d = d4;
        d4.a(this);
        setOnTouchListener(this);
        this.f46406d.x(0.0d);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        this.f46403a.draw(canvas);
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        this.f46403a.layout(i2, i4, i5, i6);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i4) {
        CharSequence text = this.f46403a.getText();
        if (text == null || !text.equals(getText())) {
            this.f46403a.setText(getText());
            postInvalidate();
        }
        super.onMeasure(i2, i4);
        this.f46403a.measure(i2, i4);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f46406d.x(1.0d);
            return true;
        } else if (action == 1) {
            this.f46406d.x(0.0d);
            this.f46409g.postDelayed(new a(), 200L);
            return true;
        } else if (action != 3) {
            return false;
        } else {
            this.f46406d.x(0.0d);
            this.f46409g.postDelayed(new b(), 200L);
            return true;
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(layoutParams);
        this.f46403a.setLayoutParams(layoutParams);
    }

    public void setStrokeColor(int i2) {
        this.f46403a.setTextColor(i2);
    }

    public StrokeTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46403a = null;
        this.f46404b = 20;
        this.f46405c = 3;
        this.f46409g = new Handler();
        this.f46403a = new TextView(context, attributeSet);
        e(attributeSet);
        this.f46408f = context;
    }

    public StrokeTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46403a = null;
        this.f46404b = 20;
        this.f46405c = 3;
        this.f46409g = new Handler();
        this.f46403a = new TextView(context, attributeSet, i2);
        e(attributeSet);
        this.f46408f = context;
    }
}
