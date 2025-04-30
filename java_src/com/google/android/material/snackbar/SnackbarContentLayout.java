package com.google.android.material.snackbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.color.m;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class SnackbarContentLayout extends LinearLayout implements a {

    /* renamed from: a  reason: collision with root package name */
    private TextView f15853a;

    /* renamed from: b  reason: collision with root package name */
    private Button f15854b;

    /* renamed from: c  reason: collision with root package name */
    private int f15855c;

    public SnackbarContentLayout(@NonNull Context context) {
        this(context, null);
    }

    private static void d(@NonNull View view, int i2, int i4) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i2, ViewCompat.getPaddingEnd(view), i4);
        } else {
            view.setPadding(view.getPaddingLeft(), i2, view.getPaddingRight(), i4);
        }
    }

    private boolean e(int i2, int i4, int i5) {
        boolean z3;
        if (i2 != getOrientation()) {
            setOrientation(i2);
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.f15853a.getPaddingTop() == i4 && this.f15853a.getPaddingBottom() == i5) {
            return z3;
        }
        d(this.f15853a, i4, i5);
        return true;
    }

    @Override // com.google.android.material.snackbar.a
    public void a(int i2, int i4) {
        this.f15853a.setAlpha(0.0f);
        long j4 = i4;
        long j5 = i2;
        this.f15853a.animate().alpha(1.0f).setDuration(j4).setStartDelay(j5).start();
        if (this.f15854b.getVisibility() == 0) {
            this.f15854b.setAlpha(0.0f);
            this.f15854b.animate().alpha(1.0f).setDuration(j4).setStartDelay(j5).start();
        }
    }

    @Override // com.google.android.material.snackbar.a
    public void b(int i2, int i4) {
        this.f15853a.setAlpha(1.0f);
        long j4 = i4;
        long j5 = i2;
        this.f15853a.animate().alpha(0.0f).setDuration(j4).setStartDelay(j5).start();
        if (this.f15854b.getVisibility() == 0) {
            this.f15854b.setAlpha(1.0f);
            this.f15854b.animate().alpha(0.0f).setDuration(j4).setStartDelay(j5).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(float f4) {
        if (f4 != 1.0f) {
            this.f15854b.setTextColor(m.m(m.d(this, R.attr.colorSurface), this.f15854b.getCurrentTextColor(), f4));
        }
    }

    public Button getActionView() {
        return this.f15854b;
    }

    public TextView getMessageView() {
        return this.f15853a;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f15853a = (TextView) findViewById(R.id.snackbar_text);
        this.f15854b = (Button) findViewById(R.id.snackbar_action);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0045, code lost:
        if (e(1, r0, r0 - r2) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0050, code lost:
        if (e(0, r0, r0) != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        if (r1 == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0056, code lost:
        super.onMeasure(r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0059, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
        return;
     */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            int r0 = r7.getOrientation()
            r1 = 1
            if (r0 != r1) goto Lb
            return
        Lb:
            android.content.res.Resources r0 = r7.getResources()
            int r2 = com.google.android.material.R.dimen.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r2)
            android.content.res.Resources r2 = r7.getResources()
            int r3 = com.google.android.material.R.dimen.design_snackbar_padding_vertical
            int r2 = r2.getDimensionPixelSize(r3)
            android.widget.TextView r3 = r7.f15853a
            android.text.Layout r3 = r3.getLayout()
            int r3 = r3.getLineCount()
            r4 = 0
            if (r3 <= r1) goto L2e
            r3 = 1
            goto L2f
        L2e:
            r3 = 0
        L2f:
            if (r3 == 0) goto L48
            int r5 = r7.f15855c
            if (r5 <= 0) goto L48
            android.widget.Button r5 = r7.f15854b
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f15855c
            if (r5 <= r6) goto L48
            int r2 = r0 - r2
            boolean r0 = r7.e(r1, r0, r2)
            if (r0 == 0) goto L53
            goto L54
        L48:
            if (r3 == 0) goto L4b
            goto L4c
        L4b:
            r0 = r2
        L4c:
            boolean r0 = r7.e(r4, r0, r0)
            if (r0 == 0) goto L53
            goto L54
        L53:
            r1 = 0
        L54:
            if (r1 == 0) goto L59
            super.onMeasure(r8, r9)
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    public void setMaxInlineActionWidth(int i2) {
        this.f15855c = i2;
    }

    public SnackbarContentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
