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
/* compiled from: AppitemAppsizeDowncountLayoutBinding.java */
/* loaded from: classes3.dex */
public final class h3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20671a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20672b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20673c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20674d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20675e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20676f;

    private h3(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f20671a = linearLayout;
        this.f20672b = textView;
        this.f20673c = textView2;
        this.f20674d = textView3;
        this.f20675e = textView4;
        this.f20676f = textView5;
    }

    @NonNull
    public static h3 a(@NonNull View view) {
        int i2 = R.id.ad_text;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ad_text);
        if (textView != null) {
            i2 = R.id.appType;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appType);
            if (textView2 != null) {
                i2 = R.id.appdownCount;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.appdownCount);
                if (textView3 != null) {
                    i2 = R.id.appsize;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.appsize);
                    if (textView4 != null) {
                        i2 = R.id.pingfen;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.pingfen);
                        if (textView5 != null) {
                            return new h3((LinearLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static h3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.appitem_appsize_downcount_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20671a;
    }
}
