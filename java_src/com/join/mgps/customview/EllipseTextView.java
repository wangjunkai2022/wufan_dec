package com.join.mgps.customview;

import android.content.Context;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
/* loaded from: classes3.dex */
public class EllipseTextView extends AppCompatTextView {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements TextUtils.EllipsizeCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int[] f45402a;

        a(int[] iArr) {
            this.f45402a = iArr;
        }

        @Override // android.text.TextUtils.EllipsizeCallback
        public void ellipsized(int i2, int i4) {
            this.f45402a[0] = i2;
        }
    }

    public EllipseTextView(Context context) {
        super(context);
    }

    private static int a(TextPaint textPaint, CharSequence charSequence, int i2, int i4) {
        StaticLayout staticLayout = new StaticLayout(charSequence, textPaint, i4, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        if (staticLayout.getLineCount() > i2) {
            int lineStart = staticLayout.getLineStart(i2 - 1);
            int[] iArr = {0};
            TextUtils.ellipsize(charSequence.subSequence(lineStart, charSequence.length()), textPaint, i4, TextUtils.TruncateAt.END, false, new a(iArr));
            return lineStart + iArr[0];
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        a(getPaint(), getText(), 2, View.MeasureSpec.getSize(i2));
    }

    public EllipseTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EllipseTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
