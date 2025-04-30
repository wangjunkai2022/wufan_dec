package com.join.kotlin.ui.userrecom;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.TipBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UserRecomTagView.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\r"}, d2 = {"Lcom/join/kotlin/ui/userrecom/UserRecomTagView;", "Landroid/widget/LinearLayout;", "", "Lcom/join/mgps/dto/TipBean;", "tipBeans", "", "setDatas", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class UserRecomTagView extends LinearLayout {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserRecomTagView(@NotNull Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attributes, "attributes");
    }

    public final void setDatas(@NotNull List<? extends TipBean> tipBeans) {
        Intrinsics.checkNotNullParameter(tipBeans, "tipBeans");
        removeAllViews();
        int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp7);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.wdp1);
        for (TipBean tipBean : tipBeans) {
            TextView textView = new TextView(getContext());
            textView.setPadding(dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset, dimensionPixelOffset2);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.rightMargin = getResources().getDimensionPixelOffset(R.dimen.wdp12);
            textView.setLayoutParams(layoutParams);
            textView.setText(tipBean.getName());
            textView.setTextSize(0, getResources().getDimensionPixelSize(R.dimen.wdp22));
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(getResources().getDimensionPixelOffset(R.dimen.wdp5));
            if (Intrinsics.areEqual("平台精选", tipBean.getName())) {
                gradientDrawable.setColor(Color.parseColor("#FFF4ED"));
                textView.setTextColor(Color.parseColor("#C54F00"));
            } else if (Intrinsics.areEqual("热度飙升", tipBean.getName())) {
                gradientDrawable.setColor(Color.parseColor("#FFE8E8"));
                textView.setTextColor(Color.parseColor("#D84E4E"));
            } else if (Intrinsics.areEqual("新游上线", tipBean.getName())) {
                gradientDrawable.setColor(Color.parseColor("#EEF9E8"));
                textView.setTextColor(Color.parseColor("#536F47"));
            } else {
                gradientDrawable.setColor(Color.parseColor("#F9F9F9"));
                textView.setTextColor(Color.parseColor("#8C91A7"));
            }
            textView.setBackground(gradientDrawable);
            addView(textView);
        }
    }
}
