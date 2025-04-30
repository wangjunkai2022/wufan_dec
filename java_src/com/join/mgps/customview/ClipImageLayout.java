package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.RelativeLayout;
/* loaded from: classes3.dex */
public class ClipImageLayout extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ClipZoomImageView f45087a;

    /* renamed from: b  reason: collision with root package name */
    private ClipImageBorderView f45088b;

    /* renamed from: c  reason: collision with root package name */
    private int f45089c;

    public ClipImageLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45089c = 2;
        this.f45087a = new ClipZoomImageView(context);
        this.f45088b = new ClipImageBorderView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(this.f45087a, layoutParams);
        addView(this.f45088b, layoutParams);
        int applyDimension = (int) TypedValue.applyDimension(1, this.f45089c, getResources().getDisplayMetrics());
        this.f45089c = applyDimension;
        this.f45087a.setHorizontalPadding(applyDimension);
        this.f45088b.setHorizontalPadding(this.f45089c);
    }

    private BitmapFactory.Options b(int i2) {
        System.gc();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPurgeable = true;
        options.inSampleSize = i2;
        return options;
    }

    public Bitmap a() {
        return this.f45087a.h();
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x00e9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap c(android.content.Context r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.customview.ClipImageLayout.c(android.content.Context, java.lang.String):android.graphics.Bitmap");
    }

    public ClipImageBorderView getmClipImageView() {
        return this.f45088b;
    }

    public ClipZoomImageView getmZoomImageView() {
        return this.f45087a;
    }

    public void setHorizontalPadding(int i2) {
        this.f45089c = i2;
    }

    public void setmClipImageView(ClipImageBorderView clipImageBorderView) {
        this.f45088b = clipImageBorderView;
    }

    public void setmZoomImageView(String str) {
        this.f45087a.setImageBitmap(BitmapFactory.decodeFile(str, b(2)));
    }
}
