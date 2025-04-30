package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogModDownloadInstallBinding.java */
/* loaded from: classes3.dex */
public final class jc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21433a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21434b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ProgressBar f21435c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21436d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21437e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21438f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21439g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21440h;

    private jc(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f21433a = linearLayout;
        this.f21434b = linearLayout2;
        this.f21435c = progressBar;
        this.f21436d = textView;
        this.f21437e = textView2;
        this.f21438f = textView3;
        this.f21439g = textView4;
        this.f21440h = textView5;
    }

    @NonNull
    public static jc a(@NonNull View view) {
        int i2 = R.id.ll_mod_download;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_mod_download);
        if (linearLayout != null) {
            i2 = R.id.pb_mod_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.pb_mod_progress);
            if (progressBar != null) {
                i2 = R.id.tv_mod_opt_left;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_opt_left);
                if (textView != null) {
                    i2 = R.id.tv_mod_opt_right;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_opt_right);
                    if (textView2 != null) {
                        i2 = R.id.tv_mod_progress;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_progress);
                        if (textView3 != null) {
                            i2 = R.id.tv_mod_status;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_status);
                            if (textView4 != null) {
                                i2 = R.id.tv_mod_title;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_title);
                                if (textView5 != null) {
                                    return new jc((LinearLayout) view, linearLayout, progressBar, textView, textView2, textView3, textView4, textView5);
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
    public static jc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_mod_download_install, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21433a;
    }
}
