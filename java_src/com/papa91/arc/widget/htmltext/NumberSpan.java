package com.papa91.arc.widget.htmltext;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.BulletSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.mgps.Util.g0;
/* loaded from: classes4.dex */
public class NumberSpan extends BulletSpan {
    public static final int STANDARD_GAP_WIDTH = 10;
    private final String mNumber;
    private final int mNumberGapWidth;

    public NumberSpan(int i2, int i4) {
        this.mNumberGapWidth = i2;
        this.mNumber = Integer.toString(i4).concat(g0.f27568a);
    }

    @Override // android.text.style.BulletSpan, android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(@NonNull Canvas canvas, @NonNull Paint paint, int i2, int i4, int i5, int i6, int i7, @NonNull CharSequence charSequence, int i8, int i9, boolean z3, @Nullable Layout layout) {
        if (((Spanned) charSequence).getSpanStart(this) == i8) {
            Paint.Style style = paint.getStyle();
            paint.setStyle(Paint.Style.FILL);
            if (canvas.isHardwareAccelerated()) {
                canvas.save();
                canvas.drawText(this.mNumber, i2 + i4, i6, paint);
                canvas.restore();
            } else {
                canvas.drawText(this.mNumber, i2 + i4, (i5 + i7) / 2.0f, paint);
            }
            paint.setStyle(style);
        }
    }

    @Override // android.text.style.BulletSpan, android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z3) {
        return this.mNumberGapWidth + 20;
    }

    @Override // android.text.style.BulletSpan, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i2) {
        super.writeToParcel(parcel, i2);
        parcel.writeInt(this.mNumberGapWidth);
        parcel.writeString(this.mNumber);
    }

    public NumberSpan(int i2) {
        this(10, i2);
    }

    public NumberSpan(Parcel parcel) {
        super(parcel);
        this.mNumberGapWidth = parcel.readInt();
        this.mNumber = parcel.readString();
    }
}
