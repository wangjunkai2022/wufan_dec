package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadViewNormal;
/* compiled from: NowWufunBroadcastBinding.java */
/* loaded from: classes3.dex */
public final class h60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20687a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20688b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f20689c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20690d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f20691e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final DownloadViewNormal f20692f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f20693g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f20694h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f20695i;

    private h60(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull DownloadViewNormal downloadViewNormal, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3) {
        this.f20687a = linearLayout;
        this.f20688b = textView;
        this.f20689c = simpleDraweeView;
        this.f20690d = textView2;
        this.f20691e = linearLayout2;
        this.f20692f = downloadViewNormal;
        this.f20693g = simpleDraweeView2;
        this.f20694h = linearLayout3;
        this.f20695i = textView3;
    }

    @NonNull
    public static h60 a(@NonNull View view) {
        int i2 = R.id.appDescribe;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appDescribe);
        if (textView != null) {
            i2 = R.id.appIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.appIcon);
            if (simpleDraweeView != null) {
                i2 = R.id.appName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
                if (textView2 != null) {
                    i2 = R.id.downLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downLayout);
                    if (linearLayout != null) {
                        i2 = R.id.downloadView;
                        DownloadViewNormal downloadViewNormal = (DownloadViewNormal) ViewBindings.findChildViewById(view, R.id.downloadView);
                        if (downloadViewNormal != null) {
                            i2 = R.id.image;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
                            if (simpleDraweeView2 != null) {
                                i2 = R.id.main;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                                if (linearLayout2 != null) {
                                    i2 = R.id.titleText;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                    if (textView3 != null) {
                                        return new h60((LinearLayout) view, textView, simpleDraweeView, textView2, linearLayout, downloadViewNormal, simpleDraweeView2, linearLayout2, textView3);
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
    public static h60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static h60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.now_wufun_broadcast, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20687a;
    }
}
