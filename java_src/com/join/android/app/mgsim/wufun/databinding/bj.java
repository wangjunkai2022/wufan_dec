package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameDownloadRecomdActivity2Binding.java */
/* loaded from: classes3.dex */
public final class bj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18539a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18540b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18541c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f18542d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f18543e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f18544f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18545g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18546h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f18547i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18548j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f18549k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f18550l;

    private bj(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f18539a = linearLayout;
        this.f18540b = imageView;
        this.f18541c = textView;
        this.f18542d = constraintLayout;
        this.f18543e = simpleDraweeView;
        this.f18544f = imageView2;
        this.f18545g = linearLayout2;
        this.f18546h = textView2;
        this.f18547i = linearLayout3;
        this.f18548j = textView3;
        this.f18549k = textView4;
        this.f18550l = textView5;
    }

    @NonNull
    public static bj a(@NonNull View view) {
        int i2 = R.id.close2;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close2);
        if (imageView != null) {
            i2 = R.id.downNumber;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downNumber);
            if (textView != null) {
                i2 = R.id.downloadAcc;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.downloadAcc);
                if (constraintLayout != null) {
                    i2 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.imageView56;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView56);
                        if (imageView2 != null) {
                            LinearLayout linearLayout = (LinearLayout) view;
                            i2 = R.id.seetext;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.seetext);
                            if (textView2 != null) {
                                i2 = R.id.speedLayout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.speedLayout);
                                if (linearLayout2 != null) {
                                    i2 = R.id.table1;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.table1);
                                    if (textView3 != null) {
                                        i2 = R.id.table2;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.table2);
                                        if (textView4 != null) {
                                            i2 = R.id.tip;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tip);
                                            if (textView5 != null) {
                                                return new bj(linearLayout, imageView, textView, constraintLayout, simpleDraweeView, imageView2, linearLayout, textView2, linearLayout2, textView3, textView4, textView5);
                                            }
                                        }
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
    public static bj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_download_recomd_activity2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18539a;
    }
}
