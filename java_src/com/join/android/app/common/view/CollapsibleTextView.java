package com.join.android.app.common.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes.dex */
public class CollapsibleTextView extends LinearLayout implements View.OnClickListener {

    /* renamed from: g  reason: collision with root package name */
    private static int f17260g = 5;

    /* renamed from: h  reason: collision with root package name */
    private static final int f17261h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static final int f17262i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final int f17263j = 2;

    /* renamed from: a  reason: collision with root package name */
    private TextView f17264a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f17265b;

    /* renamed from: c  reason: collision with root package name */
    private String f17266c;

    /* renamed from: d  reason: collision with root package name */
    private String f17267d;

    /* renamed from: e  reason: collision with root package name */
    private int f17268e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f17269f;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (CollapsibleTextView.this.f17268e == 2) {
                CollapsibleTextView.this.f17264a.setMaxLines(CollapsibleTextView.f17260g);
                CollapsibleTextView.this.f17265b.setVisibility(0);
                CollapsibleTextView.this.f17265b.setText(CollapsibleTextView.this.f17267d);
                CollapsibleTextView.this.f17268e = 1;
            } else if (CollapsibleTextView.this.f17268e == 1) {
                CollapsibleTextView.this.f17264a.setMaxLines(Integer.MAX_VALUE);
                CollapsibleTextView.this.f17265b.setVisibility(0);
                CollapsibleTextView.this.f17265b.setText(CollapsibleTextView.this.f17266c);
                CollapsibleTextView.this.f17268e = 2;
            }
        }
    }

    public CollapsibleTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        i(context);
        h(context, attributeSet);
    }

    private void h(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CollapsibleTextView);
        this.f17264a.setTextSize(obtainStyledAttributes.getDimension(23, 18.0f));
        this.f17264a.setTextColor(obtainStyledAttributes.getInt(0, -16777216));
        this.f17264a.setGravity(obtainStyledAttributes.getInt(1, 51));
        this.f17264a.setPadding(obtainStyledAttributes.getInt(20, 0), obtainStyledAttributes.getInt(22, 0), obtainStyledAttributes.getInt(21, 0), obtainStyledAttributes.getInt(19, 0));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(obtainStyledAttributes.getInt(3, 0), obtainStyledAttributes.getInt(5, 0), obtainStyledAttributes.getInt(4, 0), obtainStyledAttributes.getInt(2, 0));
        this.f17264a.setLayoutParams(layoutParams);
        this.f17264a.setText(obtainStyledAttributes.getString(24));
        this.f17265b.setTextSize(obtainStyledAttributes.getDimension(16, 18.0f));
        this.f17265b.setTextColor(obtainStyledAttributes.getInt(6, -11048043));
        this.f17265b.setGravity(obtainStyledAttributes.getInt(7, 19));
        this.f17265b.setPadding(obtainStyledAttributes.getInt(13, 0), obtainStyledAttributes.getInt(15, 0), obtainStyledAttributes.getInt(14, 0), obtainStyledAttributes.getInt(12, 0));
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins(obtainStyledAttributes.getInt(9, 0), obtainStyledAttributes.getInt(11, 0), obtainStyledAttributes.getInt(10, 0), obtainStyledAttributes.getInt(8, 0));
        this.f17265b.setLayoutParams(layoutParams2);
        this.f17265b.setText(obtainStyledAttributes.getString(17));
        this.f17265b.setSingleLine(true);
        this.f17265b.setVisibility(obtainStyledAttributes.getInt(18, 8));
        obtainStyledAttributes.recycle();
    }

    private void i(Context context) {
        this.f17266c = context.getString(R.string.desc_shrinkup);
        this.f17267d = context.getString(R.string.desc_spread);
        TextView textView = new TextView(context);
        this.f17264a = textView;
        textView.setId(R.id.collapsible_text_view_desc);
        TextView textView2 = new TextView(context);
        this.f17265b = textView2;
        textView2.setId(R.id.collapsible_text_view_desc_op);
        this.f17265b.setOnClickListener(this);
        addView(this.f17264a);
        addView(this.f17265b);
        setOrientation(1);
    }

    private void j() {
        this.f17268e = 2;
        requestLayout();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f17269f = false;
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        if (this.f17269f) {
            return;
        }
        this.f17269f = true;
        if (this.f17264a.getLineCount() <= f17260g) {
            this.f17268e = 0;
            this.f17265b.setVisibility(8);
            this.f17264a.setMaxLines(f17260g + 1);
            return;
        }
        post(new a());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
    }

    public final void setDesc(CharSequence charSequence, TextView.BufferType bufferType) {
        this.f17264a.setText(charSequence, bufferType);
        j();
    }

    public final void setDescOp(CharSequence charSequence) {
        this.f17264a.setText(charSequence);
        j();
    }

    public final void setDesc(CharSequence charSequence) {
        this.f17264a.setText(charSequence);
        j();
    }

    public CollapsibleTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        i(context);
        h(context, attributeSet);
    }

    public CollapsibleTextView(Context context) {
        this(context, null);
    }
}
