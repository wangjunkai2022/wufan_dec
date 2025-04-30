package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.HandShankAdView;
/* compiled from: HandshankLayoutYesBinding.java */
/* loaded from: classes3.dex */
public final class sn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24905a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f24906b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f24907c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final HandShankAdView f24908d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24909e;

    private sn(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull ListView listView, @NonNull HandShankAdView handShankAdView, @NonNull TextView textView) {
        this.f24905a = linearLayout;
        this.f24906b = frameLayout;
        this.f24907c = listView;
        this.f24908d = handShankAdView;
        this.f24909e = textView;
    }

    @NonNull
    public static sn a(@NonNull View view) {
        int i2 = R.id.handshank_tip_lay;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.handshank_tip_lay);
        if (frameLayout != null) {
            i2 = R.id.listview;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.listview);
            if (listView != null) {
                i2 = R.id.mAdView;
                HandShankAdView handShankAdView = (HandShankAdView) ViewBindings.findChildViewById(view, R.id.mAdView);
                if (handShankAdView != null) {
                    i2 = R.id.papahandList;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.papahandList);
                    if (textView != null) {
                        return new sn((LinearLayout) view, frameLayout, listView, handShankAdView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.handshank_layout_yes, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24905a;
    }
}
