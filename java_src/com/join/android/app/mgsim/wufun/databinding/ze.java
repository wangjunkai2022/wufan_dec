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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightAdDialogBinding.java */
/* loaded from: classes3.dex */
public final class ze implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27220a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f27221b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f27222c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f27223d;

    private ze(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f27220a = linearLayout;
        this.f27221b = imageView;
        this.f27222c = simpleDraweeView;
        this.f27223d = textView;
    }

    @NonNull
    public static ze a(@NonNull View view) {
        int i2 = R.id.ad_cancel_iv;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ad_cancel_iv);
        if (imageView != null) {
            i2 = R.id.ad_iv_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ad_iv_icon);
            if (simpleDraweeView != null) {
                i2 = R.id.ad_title_tv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ad_title_tv);
                if (textView != null) {
                    return new ze((LinearLayout) view, imageView, simpleDraweeView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ze c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ze d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fight_ad_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27220a;
    }
}
