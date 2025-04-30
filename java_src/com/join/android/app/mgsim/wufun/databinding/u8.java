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
/* compiled from: CubePtrClassicDefaultHeaderBinding.java */
/* loaded from: classes3.dex */
public final class u8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25448a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25449b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25450c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25451d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f25452e;

    private u8(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull ProgressBar progressBar) {
        this.f25448a = linearLayout;
        this.f25449b = textView;
        this.f25450c = linearLayout2;
        this.f25451d = textView2;
        this.f25452e = progressBar;
    }

    @NonNull
    public static u8 a(@NonNull View view) {
        int i2 = R.id.ptr_classic_header_rotate_view_header_last_update;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.ptr_classic_header_rotate_view_header_last_update);
        if (textView != null) {
            i2 = R.id.ptr_classic_header_rotate_view_header_text;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ptr_classic_header_rotate_view_header_text);
            if (linearLayout != null) {
                i2 = R.id.ptr_classic_header_rotate_view_header_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ptr_classic_header_rotate_view_header_title);
                if (textView2 != null) {
                    i2 = R.id.ptr_classic_header_rotate_view_progressbar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.ptr_classic_header_rotate_view_progressbar);
                    if (progressBar != null) {
                        return new u8((LinearLayout) view, textView, linearLayout, textView2, progressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cube_ptr_classic_default_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25448a;
    }
}
