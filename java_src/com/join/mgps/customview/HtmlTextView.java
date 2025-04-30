package com.join.mgps.customview;

import android.content.Context;
import android.text.Html;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
/* loaded from: classes3.dex */
public class HtmlTextView extends TextView {

    /* renamed from: a  reason: collision with root package name */
    boolean f45653a;

    /* renamed from: b  reason: collision with root package name */
    boolean f45654b;

    /* renamed from: c  reason: collision with root package name */
    private String f45655c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f45656d;

    public HtmlTextView(Context context) {
        super(context);
        this.f45653a = true;
        this.f45655c = "...";
        this.f45656d = false;
    }

    public void a() {
        b((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingBottom()) - getPaddingTop());
    }

    public void b(int i2, int i4) {
        CharSequence text = getText();
        if (text == null || text.length() == 0 || i4 <= 0 || i2 <= 0) {
            return;
        }
        TextPaint paint = getPaint();
        StaticLayout staticLayout = new StaticLayout(text, paint, i2, Layout.Alignment.ALIGN_NORMAL, 1.25f, 0.0f, true);
        int lineCount = staticLayout.getLineCount();
        int height = i4 / (staticLayout.getHeight() / lineCount);
        if (lineCount > height && height > 0) {
            int i5 = height - 1;
            int lineStart = staticLayout.getLineStart(i5);
            int lineEnd = staticLayout.getLineEnd(i5);
            float lineWidth = staticLayout.getLineWidth(i5);
            float measureText = paint.measureText(this.f45655c);
            while (i2 < lineWidth + measureText) {
                lineEnd--;
                lineWidth = paint.measureText(text.subSequence(lineStart, lineEnd + 1).toString());
            }
            setText(((Object) text.subSequence(0, lineEnd)) + this.f45655c);
        }
        setMaxLines(height);
        this.f45656d = false;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        if (z3 || this.f45656d) {
            b(((i5 - i2) - getCompoundPaddingLeft()) - getCompoundPaddingRight(), ((i6 - i4) - getCompoundPaddingBottom()) - getCompoundPaddingTop());
        }
        super.onLayout(z3, i2, i4, i5, i6);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i4, int i5, int i6) {
        if (i2 == i5 && i4 == i6) {
            return;
        }
        this.f45656d = true;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f45654b = false;
        return this.f45653a ? this.f45654b : super.onTouchEvent(motionEvent);
    }

    public void setTextViewHtml(String str) {
        setText(new SpannableStringBuilder(Html.fromHtml(str)));
    }

    public HtmlTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45653a = true;
        this.f45655c = "...";
        this.f45656d = false;
    }

    public HtmlTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45653a = true;
        this.f45655c = "...";
        this.f45656d = false;
    }
}
