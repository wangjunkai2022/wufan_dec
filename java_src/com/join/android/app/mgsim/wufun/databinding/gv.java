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
/* compiled from: ListviewDownloadCenterHeaderBinding.java */
/* loaded from: classes3.dex */
public final class gv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20590a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20591b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20592c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20593d;

    private gv(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f20590a = linearLayout;
        this.f20591b = linearLayout2;
        this.f20592c = textView;
        this.f20593d = textView2;
    }

    @NonNull
    public static gv a(@NonNull View view) {
        int i2 = R.id.layout_main;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_main);
        if (linearLayout != null) {
            i2 = R.id.num;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.num);
            if (textView != null) {
                i2 = R.id.textView;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                if (textView2 != null) {
                    return new gv((LinearLayout) view, linearLayout, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.listview_download_center_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20590a;
    }
}
