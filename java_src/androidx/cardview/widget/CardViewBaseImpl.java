package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import androidx.cardview.widget.RoundRectDrawableWithShadow;
/* loaded from: classes.dex */
class CardViewBaseImpl implements CardViewImpl {

    /* renamed from: a  reason: collision with root package name */
    final RectF f1618a = new RectF();

    private RoundRectDrawableWithShadow a(Context context, ColorStateList colorStateList, float f4, float f5, float f6) {
        return new RoundRectDrawableWithShadow(context.getResources(), colorStateList, f4, f5, f6);
    }

    private RoundRectDrawableWithShadow b(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawableWithShadow) cardViewDelegate.getCardBackground();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public ColorStateList getBackgroundColor(CardViewDelegate cardViewDelegate) {
        return b(cardViewDelegate).f();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getElevation(CardViewDelegate cardViewDelegate) {
        return b(cardViewDelegate).l();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getMaxElevation(CardViewDelegate cardViewDelegate) {
        return b(cardViewDelegate).i();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getMinHeight(CardViewDelegate cardViewDelegate) {
        return b(cardViewDelegate).j();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getMinWidth(CardViewDelegate cardViewDelegate) {
        return b(cardViewDelegate).k();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getRadius(CardViewDelegate cardViewDelegate) {
        return b(cardViewDelegate).g();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void initStatic() {
        RoundRectDrawableWithShadow.f1633s = new RoundRectDrawableWithShadow.RoundRectHelper() { // from class: androidx.cardview.widget.CardViewBaseImpl.1
            @Override // androidx.cardview.widget.RoundRectDrawableWithShadow.RoundRectHelper
            public void drawRoundRect(Canvas canvas, RectF rectF, float f4, Paint paint) {
                float f5 = 2.0f * f4;
                float width = (rectF.width() - f5) - 1.0f;
                float height = (rectF.height() - f5) - 1.0f;
                if (f4 >= 1.0f) {
                    float f6 = f4 + 0.5f;
                    float f7 = -f6;
                    CardViewBaseImpl.this.f1618a.set(f7, f7, f6, f6);
                    int save = canvas.save();
                    canvas.translate(rectF.left + f6, rectF.top + f6);
                    canvas.drawArc(CardViewBaseImpl.this.f1618a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.f1618a, 180.0f, 90.0f, true, paint);
                    canvas.translate(height, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.f1618a, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewBaseImpl.this.f1618a, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(save);
                    float f8 = rectF.top;
                    canvas.drawRect((rectF.left + f6) - 1.0f, f8, (rectF.right - f6) + 1.0f, f8 + f6, paint);
                    float f9 = rectF.bottom;
                    canvas.drawRect((rectF.left + f6) - 1.0f, f9 - f6, (rectF.right - f6) + 1.0f, f9, paint);
                }
                canvas.drawRect(rectF.left, rectF.top + f4, rectF.right, rectF.bottom - f4, paint);
            }
        };
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void initialize(CardViewDelegate cardViewDelegate, Context context, ColorStateList colorStateList, float f4, float f5, float f6) {
        RoundRectDrawableWithShadow a4 = a(context, colorStateList, f4, f5, f6);
        a4.m(cardViewDelegate.getPreventCornerOverlap());
        cardViewDelegate.setCardBackground(a4);
        updatePadding(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void onCompatPaddingChanged(CardViewDelegate cardViewDelegate) {
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void onPreventCornerOverlapChanged(CardViewDelegate cardViewDelegate) {
        b(cardViewDelegate).m(cardViewDelegate.getPreventCornerOverlap());
        updatePadding(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void setBackgroundColor(CardViewDelegate cardViewDelegate, @Nullable ColorStateList colorStateList) {
        b(cardViewDelegate).o(colorStateList);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void setElevation(CardViewDelegate cardViewDelegate, float f4) {
        b(cardViewDelegate).r(f4);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void setMaxElevation(CardViewDelegate cardViewDelegate, float f4) {
        b(cardViewDelegate).q(f4);
        updatePadding(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void setRadius(CardViewDelegate cardViewDelegate, float f4) {
        b(cardViewDelegate).p(f4);
        updatePadding(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void updatePadding(CardViewDelegate cardViewDelegate) {
        Rect rect = new Rect();
        b(cardViewDelegate).h(rect);
        cardViewDelegate.setMinWidthHeightInternal((int) Math.ceil(getMinWidth(cardViewDelegate)), (int) Math.ceil(getMinHeight(cardViewDelegate)));
        cardViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }
}
