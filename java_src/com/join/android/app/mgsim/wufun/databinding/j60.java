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
import com.join.mgps.customview.DownloadViewBig;
/* compiled from: NowWufunFindBinding.java */
/* loaded from: classes3.dex */
public final class j60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21384a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21385b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21386c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final DownloadViewBig f21387d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f21388e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f21389f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21390g;

    private j60(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull DownloadViewBig downloadViewBig, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3) {
        this.f21384a = linearLayout;
        this.f21385b = textView;
        this.f21386c = textView2;
        this.f21387d = downloadViewBig;
        this.f21388e = simpleDraweeView;
        this.f21389f = linearLayout2;
        this.f21390g = textView3;
    }

    @NonNull
    public static j60 a(@NonNull View view) {
        int i2 = R.id.appDescribe;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appDescribe);
        if (textView != null) {
            i2 = R.id.appName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
            if (textView2 != null) {
                i2 = R.id.downloadView;
                DownloadViewBig downloadViewBig = (DownloadViewBig) ViewBindings.findChildViewById(view, R.id.downloadView);
                if (downloadViewBig != null) {
                    i2 = R.id.image;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.image);
                    if (simpleDraweeView != null) {
                        i2 = R.id.main;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                        if (linearLayout != null) {
                            i2 = R.id.titleText;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                            if (textView3 != null) {
                                return new j60((LinearLayout) view, textView, textView2, downloadViewBig, simpleDraweeView, linearLayout, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static j60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static j60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.now_wufun_find, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21384a;
    }
}
