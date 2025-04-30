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
/* compiled from: DownloadCenterFooterBinding.java */
/* loaded from: classes3.dex */
public final class ud implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25501a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25502b;

    private ud(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.f25501a = relativeLayout;
        this.f25502b = textView;
    }

    @NonNull
    public static ud a(@NonNull View view) {
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewCount);
        if (textView != null) {
            return new ud((RelativeLayout) view, textView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.textViewCount)));
    }

    @NonNull
    public static ud c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ud d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_center_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25501a;
    }
}
