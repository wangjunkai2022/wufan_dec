package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameDetailBtRankingTagBinding.java */
/* loaded from: classes3.dex */
public final class zp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27306a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f27307b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f27308c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27309d;

    private zp(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.f27306a = linearLayout;
        this.f27307b = imageView;
        this.f27308c = imageView2;
        this.f27309d = textView;
    }

    @NonNull
    public static zp a(@NonNull View view) {
        int i2 = R.id.iv_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_icon);
        if (imageView != null) {
            i2 = R.id.iv_more;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_more);
            if (imageView2 != null) {
                i2 = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView != null) {
                    return new zp((LinearLayout) view, imageView, imageView2, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static zp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static zp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_detail_bt_ranking_tag, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27306a;
    }
}
