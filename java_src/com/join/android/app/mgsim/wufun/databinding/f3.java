package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
/* compiled from: AppdownFinishDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class f3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20004a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20005b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20006c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20007d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f20008e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20009f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f20010g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f20011h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f20012i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f20013j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20014k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ProgressBar f20015l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ProgressBar f20016m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f20017n;

    private f3(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView5, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull TextView textView6) {
        this.f20004a = relativeLayout;
        this.f20005b = textView;
        this.f20006c = imageView;
        this.f20007d = textView2;
        this.f20008e = simpleDraweeView;
        this.f20009f = textView3;
        this.f20010g = linearLayout;
        this.f20011h = textView4;
        this.f20012i = linearLayout2;
        this.f20013j = relativeLayout2;
        this.f20014k = textView5;
        this.f20015l = progressBar;
        this.f20016m = progressBar2;
        this.f20017n = textView6;
    }

    @NonNull
    public static f3 a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.cancle;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancle);
            if (imageView != null) {
                i2 = R.id.goMygame;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.goMygame);
                if (textView2 != null) {
                    i2 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.info;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.info);
                        if (textView3 != null) {
                            i2 = R.id.linearLayout2;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                            if (linearLayout != null) {
                                i2 = R.id.lodingInfo;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.lodingInfo);
                                if (textView4 != null) {
                                    i2 = R.id.main;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                                    if (linearLayout2 != null) {
                                        RelativeLayout relativeLayout = (RelativeLayout) view;
                                        i2 = R.id.ok;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                                        if (textView5 != null) {
                                            i2 = R.id.progressBar;
                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                            if (progressBar != null) {
                                                i2 = R.id.progressBarZip;
                                                ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                if (progressBar2 != null) {
                                                    i2 = R.id.title;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                    if (textView6 != null) {
                                                        return new f3(relativeLayout, textView, imageView, textView2, simpleDraweeView, textView3, linearLayout, textView4, linearLayout2, relativeLayout, textView5, progressBar, progressBar2, textView6);
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
    public static f3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.appdown_finish_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20004a;
    }
}
