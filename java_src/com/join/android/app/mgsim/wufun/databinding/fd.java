package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogSimulatorTipHeaderBinding.java */
/* loaded from: classes3.dex */
public final class fd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20097a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20098b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20099c;

    private fd(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f20097a = relativeLayout;
        this.f20098b = imageView;
        this.f20099c = textView;
    }

    @NonNull
    public static fd a(@NonNull View view) {
        int i2 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            i2 = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new fd((RelativeLayout) view, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_simulator_tip_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20097a;
    }
}
