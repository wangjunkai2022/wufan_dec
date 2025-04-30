package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CollectionThreeItemBinding.java */
/* loaded from: classes3.dex */
public final class q7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23849a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f23850b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23851c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23852d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f23853e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f23854f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Button f23855g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f23856h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f23857i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23858j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f23859k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f23860l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f23861m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f23862n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f23863o;

    private q7(@NonNull RelativeLayout relativeLayout, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView3, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23849a = relativeLayout;
        this.f23850b = progressBar;
        this.f23851c = imageView;
        this.f23852d = linearLayout;
        this.f23853e = simpleDraweeView;
        this.f23854f = simpleDraweeView2;
        this.f23855g = button;
        this.f23856h = linearLayout2;
        this.f23857i = imageView2;
        this.f23858j = textView;
        this.f23859k = linearLayout3;
        this.f23860l = relativeLayout2;
        this.f23861m = imageView3;
        this.f23862n = textView2;
        this.f23863o = textView3;
    }

    @NonNull
    public static q7 a(@NonNull View view) {
        int i2 = R.id.butnProgressBar;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.butnProgressBar);
        if (progressBar != null) {
            i2 = R.id.butn_showdownload;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.butn_showdownload);
            if (imageView != null) {
                i2 = R.id.detialDownBottom;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.detialDownBottom);
                if (linearLayout != null) {
                    i2 = R.id.imgBackground;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imgBackground);
                    if (simpleDraweeView != null) {
                        i2 = R.id.imgIcon;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.imgIcon);
                        if (simpleDraweeView2 != null) {
                            i2 = R.id.instalButtomButn;
                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.instalButtomButn);
                            if (button != null) {
                                i2 = R.id.instalbutnLayout;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.instalbutnLayout);
                                if (linearLayout2 != null) {
                                    i2 = R.id.loveButn;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.loveButn);
                                    if (imageView2 != null) {
                                        i2 = R.id.percent;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.percent);
                                        if (textView != null) {
                                            i2 = R.id.progress_layout;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.progress_layout);
                                            if (linearLayout3 != null) {
                                                i2 = R.id.progressbarLayout;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.progressbarLayout);
                                                if (relativeLayout != null) {
                                                    i2 = R.id.shareButn;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.shareButn);
                                                    if (imageView3 != null) {
                                                        i2 = R.id.tvGameDes;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameDes);
                                                        if (textView2 != null) {
                                                            i2 = R.id.tvGameTitle;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvGameTitle);
                                                            if (textView3 != null) {
                                                                return new q7((RelativeLayout) view, progressBar, imageView, linearLayout, simpleDraweeView, simpleDraweeView2, button, linearLayout2, imageView2, textView, linearLayout3, relativeLayout, imageView3, textView2, textView3);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.collection_three_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23849a;
    }
}
