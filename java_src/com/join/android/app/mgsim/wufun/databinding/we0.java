package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: XlistviewHeaderBinding.java */
/* loaded from: classes3.dex */
public final class we0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26169a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26170b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f26171c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26172d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f26173e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f26174f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26175g;

    private we0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ProgressBar progressBar, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2) {
        this.f26169a = linearLayout;
        this.f26170b = imageView;
        this.f26171c = relativeLayout;
        this.f26172d = textView;
        this.f26173e = progressBar;
        this.f26174f = linearLayout2;
        this.f26175g = textView2;
    }

    @NonNull
    public static we0 a(@NonNull View view) {
        int i2 = R.id.xlistview_header_arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.xlistview_header_arrow);
        if (imageView != null) {
            i2 = R.id.xlistview_header_content;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.xlistview_header_content);
            if (relativeLayout != null) {
                i2 = R.id.xlistview_header_hint_textview;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.xlistview_header_hint_textview);
                if (textView != null) {
                    i2 = R.id.xlistview_header_progressbar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.xlistview_header_progressbar);
                    if (progressBar != null) {
                        i2 = R.id.xlistview_header_text;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.xlistview_header_text);
                        if (linearLayout != null) {
                            i2 = R.id.xlistview_header_time;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.xlistview_header_time);
                            if (textView2 != null) {
                                return new we0((LinearLayout) view, imageView, relativeLayout, textView, progressBar, linearLayout, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static we0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static we0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.xlistview_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26169a;
    }
}
