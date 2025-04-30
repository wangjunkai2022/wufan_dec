package com.papa91.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.papa91.mix.R;
/* loaded from: classes4.dex */
public class LeanTextView extends AppCompatTextView {
    private int mDegrees;

    public LeanTextView(Context context) {
        super(context, null);
    }

    public int getmDegrees() {
        return this.mDegrees;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.translate(getCompoundPaddingLeft(), getExtendedPaddingTop());
        canvas.rotate(this.mDegrees, getWidth() / 2.0f, getHeight() / 2.0f);
        super.onDraw(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        setMeasuredDimension(getMeasuredWidth(), getMeasuredWidth());
    }

    public void setmDegrees(int i2) {
        this.mDegrees = i2;
        invalidate();
    }

    public LeanTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 16842884);
        setGravity(17);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LeanTextView);
        this.mDegrees = obtainStyledAttributes.getInteger(R.styleable.LeanTextView_degree, 0);
        obtainStyledAttributes.recycle();
    }
}
