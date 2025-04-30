package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MygameTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class d50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19218a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19219b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f19220c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f19221d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f19222e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f19223f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19224g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f19225h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19226i;

    private d50(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView4, @NonNull TextView textView, @NonNull ImageView imageView5, @NonNull TextView textView2) {
        this.f19218a = relativeLayout;
        this.f19219b = imageView;
        this.f19220c = imageView2;
        this.f19221d = imageView3;
        this.f19222e = linearLayout;
        this.f19223f = imageView4;
        this.f19224g = textView;
        this.f19225h = imageView5;
        this.f19226i = textView2;
    }

    @NonNull
    public static d50 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.communt_message;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.communt_message);
            if (imageView2 != null) {
                i2 = R.id.communt_user;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.communt_user);
                if (imageView3 != null) {
                    i2 = R.id.layout_share;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_share);
                    if (linearLayout != null) {
                        i2 = R.id.searchImage;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.searchImage);
                        if (imageView4 != null) {
                            i2 = R.id.share_textview;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.share_textview);
                            if (textView != null) {
                                i2 = R.id.shoubing;
                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.shoubing);
                                if (imageView5 != null) {
                                    i2 = R.id.title_textview;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                                    if (textView2 != null) {
                                        return new d50((RelativeLayout) view, imageView, imageView2, imageView3, linearLayout, imageView4, textView, imageView5, textView2);
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
    public static d50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mygame_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19218a;
    }
}
