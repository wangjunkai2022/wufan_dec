package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: XlistviewFooterBinding.java */
/* loaded from: classes3.dex */
public final class ve0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25835a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f25836b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25837c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ProgressBar f25838d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25839e;

    private ve0(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ProgressBar progressBar, @NonNull TextView textView2) {
        this.f25835a = linearLayout;
        this.f25836b = relativeLayout;
        this.f25837c = textView;
        this.f25838d = progressBar;
        this.f25839e = textView2;
    }

    @NonNull
    public static ve0 a(@NonNull View view) {
        int i2 = R.id.xlistview_footer_content;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.xlistview_footer_content);
        if (relativeLayout != null) {
            i2 = R.id.xlistview_footer_hint_textview;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.xlistview_footer_hint_textview);
            if (textView != null) {
                i2 = R.id.xlistview_footer_progressbar;
                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.xlistview_footer_progressbar);
                if (progressBar != null) {
                    i2 = R.id.xlistview_footer_refresh_textview;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.xlistview_footer_refresh_textview);
                    if (textView2 != null) {
                        return new ve0((LinearLayout) view, relativeLayout, textView, progressBar, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ve0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ve0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.xlistview_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25835a;
    }
}
