package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HomePopupAdItemBinding.java */
/* renamed from: com.join.android.app.mgsim.wufun.databinding.do  reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cdo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19456a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19457b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19458c;

    private Cdo(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView) {
        this.f19456a = relativeLayout;
        this.f19457b = simpleDraweeView;
        this.f19458c = textView;
    }

    @NonNull
    public static Cdo a(@NonNull View view) {
        int i2 = R.id.adImage;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.adImage);
        if (simpleDraweeView != null) {
            i2 = R.id.downLoadView;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downLoadView);
            if (textView != null) {
                return new Cdo((RelativeLayout) view, simpleDraweeView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static Cdo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static Cdo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.home_popup_ad_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19456a;
    }
}
