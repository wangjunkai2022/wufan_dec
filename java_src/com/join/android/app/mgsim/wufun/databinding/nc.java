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
/* compiled from: DialogModPrompt1Binding.java */
/* loaded from: classes3.dex */
public final class nc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22843a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22844b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22845c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22846d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22847e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22848f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22849g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22850h;

    private nc(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f22843a = linearLayout;
        this.f22844b = imageView;
        this.f22845c = linearLayout2;
        this.f22846d = textView;
        this.f22847e = textView2;
        this.f22848f = textView3;
        this.f22849g = textView4;
        this.f22850h = textView5;
    }

    @NonNull
    public static nc a(@NonNull View view) {
        int i2 = R.id.ivClose;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivClose);
        if (imageView != null) {
            i2 = R.id.ll_mod_download;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_mod_download);
            if (linearLayout != null) {
                i2 = R.id.tv_desc;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc);
                if (textView != null) {
                    i2 = R.id.tv_mod_opt_left;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_opt_left);
                    if (textView2 != null) {
                        i2 = R.id.tv_mod_opt_right;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_opt_right);
                        if (textView3 != null) {
                            i2 = R.id.tv_mod_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_mod_title);
                            if (textView4 != null) {
                                i2 = R.id.tv_title;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView5 != null) {
                                    return new nc((LinearLayout) view, imageView, linearLayout, textView, textView2, textView3, textView4, textView5);
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
    public static nc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_mod_prompt1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22843a;
    }
}
