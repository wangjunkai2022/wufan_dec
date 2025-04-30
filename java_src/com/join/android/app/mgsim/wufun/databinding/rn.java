package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HandShankAdView;
/* compiled from: HandshankLayoutNoBinding.java */
/* loaded from: classes3.dex */
public final class rn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24453a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f24454b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final HandShankAdView f24455c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24456d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24457e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24458f;

    private rn(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull HandShankAdView handShankAdView, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.f24453a = linearLayout;
        this.f24454b = button;
        this.f24455c = handShankAdView;
        this.f24456d = textView;
        this.f24457e = imageView;
        this.f24458f = textView2;
    }

    @NonNull
    public static rn a(@NonNull View view) {
        int i2 = R.id.blue_setup_btn;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.blue_setup_btn);
        if (button != null) {
            i2 = R.id.mAdView;
            HandShankAdView handShankAdView = (HandShankAdView) ViewBindings.findChildViewById(view, R.id.mAdView);
            if (handShankAdView != null) {
                i2 = R.id.papahandList;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.papahandList);
                if (textView != null) {
                    i2 = R.id.topIv;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.topIv);
                    if (imageView != null) {
                        i2 = R.id.topTv;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.topTv);
                        if (textView2 != null) {
                            return new rn((LinearLayout) view, button, handShankAdView, textView, imageView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.handshank_layout_no, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24453a;
    }
}
