package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LvDownloadCenterHeaderBinding.java */
/* loaded from: classes3.dex */
public final class kw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21906a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21907b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21908c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f21909d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21910e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21911f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21912g;

    private kw(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f21906a = relativeLayout;
        this.f21907b = linearLayout;
        this.f21908c = textView;
        this.f21909d = linearLayout2;
        this.f21910e = textView2;
        this.f21911f = textView3;
        this.f21912g = textView4;
    }

    @NonNull
    public static kw a(@NonNull View view) {
        int i2 = R.id.doSomething;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.doSomething);
        if (linearLayout != null) {
            i2 = R.id.downloadTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downloadTitle);
            if (textView != null) {
                i2 = R.id.layout_main;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_main);
                if (linearLayout2 != null) {
                    i2 = R.id.textView;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                    if (textView2 != null) {
                        i2 = R.id.tvDoSomething;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvDoSomething);
                        if (textView3 != null) {
                            i2 = R.id.tvNum;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvNum);
                            if (textView4 != null) {
                                return new kw((RelativeLayout) view, linearLayout, textView, linearLayout2, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.lv_download_center_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21906a;
    }
}
