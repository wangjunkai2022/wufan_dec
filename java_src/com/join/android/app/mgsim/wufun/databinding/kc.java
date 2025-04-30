package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogModDownloadNewBinding.java */
/* loaded from: classes3.dex */
public final class kc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21800a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21801b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21802c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f21803d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21804e;

    private kc(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.f21800a = linearLayout;
        this.f21801b = imageView;
        this.f21802c = textView;
        this.f21803d = imageView2;
        this.f21804e = textView2;
    }

    @NonNull
    public static kc a(@NonNull View view) {
        int i2 = R.id.centerImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.centerImage);
        if (imageView != null) {
            i2 = R.id.centerText;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.centerText);
            if (textView != null) {
                i2 = R.id.iv_close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
                if (imageView2 != null) {
                    i2 = R.id.tv_mod_opt_right;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_opt_right);
                    if (textView2 != null) {
                        return new kc((LinearLayout) view, imageView, textView, imageView2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_mod_download_new, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21800a;
    }
}
