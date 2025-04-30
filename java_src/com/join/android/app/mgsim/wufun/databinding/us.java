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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemTagReportViewBinding.java */
/* loaded from: classes3.dex */
public final class us implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25596a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25597b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25598c;

    private us(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView) {
        this.f25596a = linearLayout;
        this.f25597b = linearLayout2;
        this.f25598c = textView;
    }

    @NonNull
    public static us a(@NonNull View view) {
        int i2 = R.id.ll_tag;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_tag);
        if (linearLayout != null) {
            i2 = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
            if (textView != null) {
                return new us((LinearLayout) view, linearLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static us c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static us d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_tag_report_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25596a;
    }
}
