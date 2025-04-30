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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PapamainBroadcaseBottomLayoutBinding.java */
/* loaded from: classes3.dex */
public final class z60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27139a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f27140b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f27141c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f27142d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f27143e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f27144f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27145g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f27146h;

    private z60(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView) {
        this.f27139a = linearLayout;
        this.f27140b = linearLayout2;
        this.f27141c = simpleDraweeView;
        this.f27142d = simpleDraweeView2;
        this.f27143e = simpleDraweeView3;
        this.f27144f = textView;
        this.f27145g = textView2;
        this.f27146h = imageView;
    }

    @NonNull
    public static z60 a(@NonNull View view) {
        int i2 = R.id.gamebroadcastBottom;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gamebroadcastBottom);
        if (linearLayout != null) {
            i2 = R.id.gamebroadcastBottomImage1;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastBottomImage1);
            if (simpleDraweeView != null) {
                i2 = R.id.gamebroadcastBottomImage2;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastBottomImage2);
                if (simpleDraweeView2 != null) {
                    i2 = R.id.gamebroadcastBottomImage3;
                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gamebroadcastBottomImage3);
                    if (simpleDraweeView3 != null) {
                        i2 = R.id.gamebroadcastBottomText1;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gamebroadcastBottomText1);
                        if (textView != null) {
                            i2 = R.id.gamebroadcastBottomText2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gamebroadcastBottomText2);
                            if (textView2 != null) {
                                i2 = R.id.imageView12;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView12);
                                if (imageView != null) {
                                    return new z60((LinearLayout) view, linearLayout, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, textView, textView2, imageView);
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
    public static z60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_broadcase_bottom_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27139a;
    }
}
