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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: BaiduAdListviewItemBinding.java */
/* loaded from: classes3.dex */
public final class r3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24184a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24185b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24186c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f24187d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24188e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f24189f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24190g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24191h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24192i;

    private r3(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f24184a = linearLayout;
        this.f24185b = textView;
        this.f24186c = textView2;
        this.f24187d = simpleDraweeView;
        this.f24188e = imageView;
        this.f24189f = relativeLayout;
        this.f24190g = textView3;
        this.f24191h = textView4;
        this.f24192i = textView5;
    }

    @NonNull
    public static r3 a(@NonNull View view) {
        int i2 = R.id.native_brand_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.native_brand_name);
        if (textView != null) {
            i2 = R.id.native_cta;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.native_cta);
            if (textView2 != null) {
                i2 = R.id.native_icon_image;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.native_icon_image);
                if (simpleDraweeView != null) {
                    i2 = R.id.native_main_image;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.native_main_image);
                    if (imageView != null) {
                        i2 = R.id.native_outer_view;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.native_outer_view);
                        if (relativeLayout != null) {
                            i2 = R.id.native_text;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.native_text);
                            if (textView3 != null) {
                                i2 = R.id.native_title;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.native_title);
                                if (textView4 != null) {
                                    i2 = R.id.textView26;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView26);
                                    if (textView5 != null) {
                                        return new r3((LinearLayout) view, textView, textView2, simpleDraweeView, imageView, relativeLayout, textView3, textView4, textView5);
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
    public static r3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.baidu_ad_listview_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24184a;
    }
}
