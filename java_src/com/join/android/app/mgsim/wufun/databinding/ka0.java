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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SearchAdTitleViewBinding.java */
/* loaded from: classes3.dex */
public final class ka0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21785a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21786b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21787c;

    private ka0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21785a = relativeLayout;
        this.f21786b = textView;
        this.f21787c = textView2;
    }

    @NonNull
    public static ka0 a(@NonNull View view) {
        int i2 = R.id.tips;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tips);
        if (textView != null) {
            i2 = R.id.titleText;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
            if (textView2 != null) {
                return new ka0((RelativeLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ka0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ka0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_ad_title_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21785a;
    }
}
