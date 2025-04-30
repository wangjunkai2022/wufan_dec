package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SampleCommonListFooterNetworkErrorBinding.java */
/* loaded from: classes3.dex */
public final class z90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f27170a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27171b;

    private z90(@NonNull FrameLayout frameLayout, @NonNull TextView textView) {
        this.f27170a = frameLayout;
        this.f27171b = textView;
    }

    @NonNull
    public static z90 a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.xlistview_footer_hint_textview);
        if (textView != null) {
            return new z90((FrameLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.xlistview_footer_hint_textview)));
    }

    @NonNull
    public static z90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.sample_common_list_footer_network_error, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f27170a;
    }
}
