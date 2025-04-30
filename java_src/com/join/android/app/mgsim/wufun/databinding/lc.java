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
/* compiled from: DialogModDownloadSupportBinding.java */
/* loaded from: classes3.dex */
public final class lc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22097a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22098b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22099c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22100d;

    private lc(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f22097a = linearLayout;
        this.f22098b = textView;
        this.f22099c = textView2;
        this.f22100d = textView3;
    }

    @NonNull
    public static lc a(@NonNull View view) {
        int i2 = R.id.tv_content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_content);
        if (textView != null) {
            i2 = R.id.tv_download;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_download);
            if (textView2 != null) {
                i2 = R.id.tv_title;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView3 != null) {
                    return new lc((LinearLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_mod_download_support, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22097a;
    }
}
