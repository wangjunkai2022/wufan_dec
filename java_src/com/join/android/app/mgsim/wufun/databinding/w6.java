package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudItemBinding.java */
/* loaded from: classes3.dex */
public final class w6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f26066a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26067b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26068c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26069d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26070e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f26071f;

    private w6(@NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView) {
        this.f26066a = frameLayout;
        this.f26067b = simpleDraweeView;
        this.f26068c = linearLayout;
        this.f26069d = textView;
        this.f26070e = textView2;
        this.f26071f = imageView;
    }

    @NonNull
    public static w6 a(@NonNull View view) {
        int i2 = R.id.img;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
        if (simpleDraweeView != null) {
            i2 = R.id.main_lay;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main_lay);
            if (linearLayout != null) {
                i2 = R.id.name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView != null) {
                    i2 = R.id.number;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.number);
                    if (textView2 != null) {
                        i2 = R.id.select;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.select);
                        if (imageView != null) {
                            return new w6((FrameLayout) view, simpleDraweeView, linearLayout, textView, textView2, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f26066a;
    }
}
