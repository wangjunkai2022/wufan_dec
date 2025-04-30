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
/* compiled from: ListviewDownloadCenterHistoryHeaderBinding.java */
/* loaded from: classes3.dex */
public final class iv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21261a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21262b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21263c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21264d;

    private iv(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21261a = linearLayout;
        this.f21262b = linearLayout2;
        this.f21263c = textView;
        this.f21264d = textView2;
    }

    @NonNull
    public static iv a(@NonNull View view) {
        int i2 = R.id.layout_main;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_main);
        if (linearLayout != null) {
            i2 = R.id.num;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.num);
            if (textView != null) {
                i2 = R.id.textView;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                if (textView2 != null) {
                    return new iv((LinearLayout) view, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static iv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static iv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.listview_download_center_history_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21261a;
    }
}
