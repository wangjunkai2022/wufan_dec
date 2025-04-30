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
/* compiled from: DownloadChoiceUrlLayoutBinding.java */
/* loaded from: classes3.dex */
public final class xd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26548a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26549b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26550c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26551d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26552e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26553f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26554g;

    private xd(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f26548a = relativeLayout;
        this.f26549b = linearLayout;
        this.f26550c = textView;
        this.f26551d = textView2;
        this.f26552e = textView3;
        this.f26553f = textView4;
        this.f26554g = textView5;
    }

    @NonNull
    public static xd a(@NonNull View view) {
        int i2 = R.id.allpath;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.allpath);
        if (linearLayout != null) {
            i2 = R.id.cancletext;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancletext);
            if (textView != null) {
                i2 = R.id.ok;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                if (textView2 != null) {
                    i2 = R.id.textView5;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView5);
                    if (textView3 != null) {
                        i2 = R.id.textView6;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView6);
                        if (textView4 != null) {
                            i2 = R.id.titleText;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                            if (textView5 != null) {
                                return new xd((RelativeLayout) view, linearLayout, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static xd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_choice_url_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26548a;
    }
}
