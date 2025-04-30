package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameRecommendViewBinding.java */
/* loaded from: classes3.dex */
public final class lq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22193a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f22194b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22195c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22196d;

    private lq(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f22193a = linearLayout;
        this.f22194b = simpleDraweeView;
        this.f22195c = linearLayout2;
        this.f22196d = textView;
    }

    @NonNull
    public static lq a(@NonNull View view) {
        int i2 = R.id.itemGameRecommendIv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.itemGameRecommendIv);
        if (simpleDraweeView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.itemGameRecommendTx);
            if (textView != null) {
                return new lq(linearLayout, simpleDraweeView, linearLayout, textView);
            }
            i2 = R.id.itemGameRecommendTx;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_recommend_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22193a;
    }
}
