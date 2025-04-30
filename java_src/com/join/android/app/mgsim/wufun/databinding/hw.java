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
/* compiled from: LuckdrawHistoryLayoutItemBinding.java */
/* loaded from: classes3.dex */
public final class hw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20912a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20913b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20914c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20915d;

    private hw(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f20912a = linearLayout;
        this.f20913b = linearLayout2;
        this.f20914c = textView;
        this.f20915d = textView2;
    }

    @NonNull
    public static hw a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
        if (textView != null) {
            i2 = R.id.time;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
            if (textView2 != null) {
                return new hw(linearLayout, linearLayout, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.luckdraw_history_layout_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20912a;
    }
}
