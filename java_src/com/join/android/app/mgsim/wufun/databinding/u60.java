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
/* compiled from: PapaPlugGuideNoticeLayoutBinding.java */
/* loaded from: classes3.dex */
public final class u60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25416a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25417b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25418c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f25419d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25420e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f25421f;

    private u60(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull ImageView imageView) {
        this.f25416a = linearLayout;
        this.f25417b = textView;
        this.f25418c = textView2;
        this.f25419d = simpleDraweeView;
        this.f25420e = textView3;
        this.f25421f = imageView;
    }

    @NonNull
    public static u60 a(@NonNull View view) {
        int i2 = R.id.describe;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.describe);
        if (textView != null) {
            i2 = R.id.describe2;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.describe2);
            if (textView2 != null) {
                i2 = R.id.guideImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.guideImage);
                if (simpleDraweeView != null) {
                    i2 = R.id.iKnow;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.iKnow);
                    if (textView3 != null) {
                        i2 = R.id.imageView25;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView25);
                        if (imageView != null) {
                            return new u60((LinearLayout) view, textView, textView2, simpleDraweeView, textView3, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papa_plug_guide_notice_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25416a;
    }
}
