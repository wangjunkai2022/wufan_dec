package androidx.cardview.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(21)
/* loaded from: classes.dex */
public class CardViewApi21Impl implements CardViewImpl {
    private RoundRectDrawable a(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawable) cardViewDelegate.getCardBackground();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public ColorStateList getBackgroundColor(CardViewDelegate cardViewDelegate) {
        return a(cardViewDelegate).getColor();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getElevation(CardViewDelegate cardViewDelegate) {
        return cardViewDelegate.getCardView().getElevation();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getMaxElevation(CardViewDelegate cardViewDelegate) {
        return a(cardViewDelegate).b();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getMinHeight(CardViewDelegate cardViewDelegate) {
        return getRadius(cardViewDelegate) * 2.0f;
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getMinWidth(CardViewDelegate cardViewDelegate) {
        return getRadius(cardViewDelegate) * 2.0f;
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public float getRadius(CardViewDelegate cardViewDelegate) {
        return a(cardViewDelegate).getRadius();
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void initStatic() {
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void initialize(CardViewDelegate cardViewDelegate, Context context, ColorStateList colorStateList, float f4, float f5, float f6) {
        cardViewDelegate.setCardBackground(new RoundRectDrawable(colorStateList, f4));
        View cardView = cardViewDelegate.getCardView();
        cardView.setClipToOutline(true);
        cardView.setElevation(f5);
        setMaxElevation(cardViewDelegate, f6);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void onCompatPaddingChanged(CardViewDelegate cardViewDelegate) {
        setMaxElevation(cardViewDelegate, getMaxElevation(cardViewDelegate));
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void onPreventCornerOverlapChanged(CardViewDelegate cardViewDelegate) {
        setMaxElevation(cardViewDelegate, getMaxElevation(cardViewDelegate));
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void setBackgroundColor(CardViewDelegate cardViewDelegate, @Nullable ColorStateList colorStateList) {
        a(cardViewDelegate).setColor(colorStateList);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void setElevation(CardViewDelegate cardViewDelegate, float f4) {
        cardViewDelegate.getCardView().setElevation(f4);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void setMaxElevation(CardViewDelegate cardViewDelegate, float f4) {
        a(cardViewDelegate).d(f4, cardViewDelegate.getUseCompatPadding(), cardViewDelegate.getPreventCornerOverlap());
        updatePadding(cardViewDelegate);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void setRadius(CardViewDelegate cardViewDelegate, float f4) {
        a(cardViewDelegate).e(f4);
    }

    @Override // androidx.cardview.widget.CardViewImpl
    public void updatePadding(CardViewDelegate cardViewDelegate) {
        if (!cardViewDelegate.getUseCompatPadding()) {
            cardViewDelegate.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float maxElevation = getMaxElevation(cardViewDelegate);
        float radius = getRadius(cardViewDelegate);
        int ceil = (int) Math.ceil(RoundRectDrawableWithShadow.c(maxElevation, radius, cardViewDelegate.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(RoundRectDrawableWithShadow.d(maxElevation, radius, cardViewDelegate.getPreventCornerOverlap()));
        cardViewDelegate.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }
}
