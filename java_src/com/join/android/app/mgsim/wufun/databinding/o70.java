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
/* compiled from: PapamainLiveLayoutBinding.java */
/* loaded from: classes3.dex */
public final class o70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23160a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f23161b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23162c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23163d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23164e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23165f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23166g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23167h;

    private o70(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout3) {
        this.f23160a = linearLayout;
        this.f23161b = linearLayout2;
        this.f23162c = imageView;
        this.f23163d = simpleDraweeView;
        this.f23164e = textView;
        this.f23165f = textView2;
        this.f23166g = textView3;
        this.f23167h = linearLayout3;
    }

    @NonNull
    public static o70 a(@NonNull View view) {
        int i2 = R.id.goLive;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.goLive);
        if (linearLayout != null) {
            i2 = R.id.imageView34;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView34);
            if (imageView != null) {
                i2 = R.id.picImage;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.picImage);
                if (simpleDraweeView != null) {
                    i2 = R.id.subtitle;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                    if (textView != null) {
                        i2 = R.id.textView64;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView64);
                        if (textView2 != null) {
                            i2 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                            if (textView3 != null) {
                                i2 = R.id.tvLiveListLayout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tvLiveListLayout);
                                if (linearLayout2 != null) {
                                    return new o70((LinearLayout) view, linearLayout, imageView, simpleDraweeView, textView, textView2, textView3, linearLayout2);
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
    public static o70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papamain_live_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23160a;
    }
}
