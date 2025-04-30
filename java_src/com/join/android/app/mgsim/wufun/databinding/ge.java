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
/* compiled from: EmulatorListviewDownloadCenterHistoryTwoBinding.java */
/* loaded from: classes3.dex */
public final class ge implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20419a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20420b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20421c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f20422d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f20423e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f20424f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f20425g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f20426h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f20427i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f20428j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f20429k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f20430l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f20431m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f20432n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f20433o;

    private ge(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView2, @NonNull View view, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull LinearLayout linearLayout5, @NonNull TextView textView3, @NonNull ImageView imageView3, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout6) {
        this.f20419a = linearLayout;
        this.f20420b = linearLayout2;
        this.f20421c = textView;
        this.f20422d = linearLayout3;
        this.f20423e = imageView;
        this.f20424f = simpleDraweeView;
        this.f20425g = imageView2;
        this.f20426h = view;
        this.f20427i = linearLayout4;
        this.f20428j = textView2;
        this.f20429k = linearLayout5;
        this.f20430l = textView3;
        this.f20431m = imageView3;
        this.f20432n = relativeLayout;
        this.f20433o = linearLayout6;
    }

    @NonNull
    public static ge a(@NonNull View view) {
        int i2 = R.id.addtoDesk;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.addtoDesk);
        if (linearLayout != null) {
            i2 = R.id.appInfo;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appInfo);
            if (textView != null) {
                i2 = R.id.dellGame;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.dellGame);
                if (linearLayout2 != null) {
                    i2 = R.id.giftPackageSwitch;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwitch);
                    if (imageView != null) {
                        i2 = R.id.img;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
                        if (simpleDraweeView != null) {
                            i2 = R.id.itemMoreIv;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.itemMoreIv);
                            if (imageView2 != null) {
                                i2 = R.id.line;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                                if (findChildViewById != null) {
                                    i2 = R.id.linearLayoutApp;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayoutApp);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.mgListviewItemInstall;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                        if (textView2 != null) {
                                            i2 = R.id.more_layout;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.more_layout);
                                            if (linearLayout4 != null) {
                                                i2 = R.id.name;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                                                if (textView3 != null) {
                                                    i2 = R.id.notOpen;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.notOpen);
                                                    if (imageView3 != null) {
                                                        i2 = R.id.rLayoutRight;
                                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                        if (relativeLayout != null) {
                                                            i2 = R.id.status;
                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.status);
                                                            if (linearLayout5 != null) {
                                                                return new ge((LinearLayout) view, linearLayout, textView, linearLayout2, imageView, simpleDraweeView, imageView2, findChildViewById, linearLayout3, textView2, linearLayout4, textView3, imageView3, relativeLayout, linearLayout5);
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
    public static ge c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ge d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.emulator_listview_download_center_history_two, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20419a;
    }
}
