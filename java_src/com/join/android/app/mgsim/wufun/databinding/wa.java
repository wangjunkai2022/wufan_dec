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
/* compiled from: DialogCloudProgressNoticeBinding.java */
/* loaded from: classes3.dex */
public final class wa implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26126a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26127b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26128c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26129d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26130e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f26131f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26132g;

    private wa(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull ProgressBar progressBar, @NonNull TextView textView5) {
        this.f26126a = linearLayout;
        this.f26127b = textView;
        this.f26128c = textView2;
        this.f26129d = textView3;
        this.f26130e = textView4;
        this.f26131f = progressBar;
        this.f26132g = textView5;
    }

    @NonNull
    public static wa a(@NonNull View view) {
        int i2 = R.id.cancle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancle);
        if (textView != null) {
            i2 = R.id.downSpeed;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.downSpeed);
            if (textView2 != null) {
                i2 = R.id.downsize;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.downsize);
                if (textView3 != null) {
                    i2 = R.id.ok;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                    if (textView4 != null) {
                        i2 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress);
                        if (progressBar != null) {
                            i2 = R.id.title;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                            if (textView5 != null) {
                                return new wa((LinearLayout) view, textView, textView2, textView3, textView4, progressBar, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wa c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wa d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_cloud_progress_notice, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26126a;
    }
}
