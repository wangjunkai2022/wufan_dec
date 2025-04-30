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
/* compiled from: EmulatorListviewDownloadCenterHistoryBinding.java */
/* loaded from: classes3.dex */
public final class fe implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20105a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20106b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20107c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f20108d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f20109e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f20110f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f20111g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f20112h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f20113i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f20114j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f20115k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f20116l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f20117m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RelativeLayout f20118n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f20119o;

    private fe(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView2, @NonNull View view, @NonNull LinearLayout linearLayout4, @NonNull TextView textView2, @NonNull LinearLayout linearLayout5, @NonNull TextView textView3, @NonNull ImageView imageView3, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout6) {
        this.f20105a = linearLayout;
        this.f20106b = linearLayout2;
        this.f20107c = textView;
        this.f20108d = linearLayout3;
        this.f20109e = imageView;
        this.f20110f = simpleDraweeView;
        this.f20111g = imageView2;
        this.f20112h = view;
        this.f20113i = linearLayout4;
        this.f20114j = textView2;
        this.f20115k = linearLayout5;
        this.f20116l = textView3;
        this.f20117m = imageView3;
        this.f20118n = relativeLayout;
        this.f20119o = linearLayout6;
    }

    @NonNull
    public static fe a(@NonNull View view) {
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
                                                                return new fe((LinearLayout) view, linearLayout, textView, linearLayout2, imageView, simpleDraweeView, imageView2, findChildViewById, linearLayout3, textView2, linearLayout4, textView3, imageView3, relativeLayout, linearLayout5);
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
    public static fe c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fe d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.emulator_listview_download_center_history, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20105a;
    }
}
