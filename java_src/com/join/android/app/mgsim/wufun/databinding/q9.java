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
import com.join.mgps.customview.ObservableWebView;
/* compiled from: DetailSimpleInfoLayoutBinding.java */
/* loaded from: classes3.dex */
public final class q9 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23906a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23907b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23908c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ObservableWebView f23909d;

    private q9(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull ObservableWebView observableWebView) {
        this.f23906a = linearLayout;
        this.f23907b = textView;
        this.f23908c = linearLayout2;
        this.f23909d = observableWebView;
    }

    @NonNull
    public static q9 a(@NonNull View view) {
        int i2 = R.id.textView;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
        if (textView != null) {
            i2 = R.id.tipsLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
            if (linearLayout != null) {
                i2 = R.id.webView;
                ObservableWebView observableWebView = (ObservableWebView) ViewBindings.findChildViewById(view, R.id.webView);
                if (observableWebView != null) {
                    return new q9((LinearLayout) view, textView, linearLayout, observableWebView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q9 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q9 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.detail_simple_info_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23906a;
    }
}
