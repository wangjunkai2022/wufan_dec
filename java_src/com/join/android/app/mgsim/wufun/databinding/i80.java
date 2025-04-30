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
/* compiled from: PlugdownDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class i80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21085a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21086b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21087c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21088d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f21089e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21090f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21091g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ProgressBar f21092h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ProgressBar f21093i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f21094j;

    private i80(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull TextView textView6) {
        this.f21085a = relativeLayout;
        this.f21086b = textView;
        this.f21087c = textView2;
        this.f21088d = textView3;
        this.f21089e = linearLayout;
        this.f21090f = textView4;
        this.f21091g = textView5;
        this.f21092h = progressBar;
        this.f21093i = progressBar2;
        this.f21094j = textView6;
    }

    @NonNull
    public static i80 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.cancle;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.cancle);
            if (textView2 != null) {
                i2 = R.id.info;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.info);
                if (textView3 != null) {
                    i2 = R.id.linearLayout2;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                    if (linearLayout != null) {
                        i2 = R.id.lodingInfo;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.lodingInfo);
                        if (textView4 != null) {
                            i2 = R.id.ok;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                            if (textView5 != null) {
                                i2 = R.id.progressBar;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                if (progressBar != null) {
                                    i2 = R.id.progressBarZip;
                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                    if (progressBar2 != null) {
                                        i2 = R.id.title;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                        if (textView6 != null) {
                                            return new i80((RelativeLayout) view, textView, textView2, textView3, linearLayout, textView4, textView5, progressBar, progressBar2, textView6);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.plugdown_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21085a;
    }
}
