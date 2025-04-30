package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;
/* compiled from: PartDiscoveryHeaderBinding.java */
/* loaded from: classes3.dex */
public final class b80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18441a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final MyGridView f18442b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18443c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f18444d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final GridView f18445e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18446f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f18447g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f18448h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18449i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f18450j;

    private b80(@NonNull LinearLayout linearLayout, @NonNull MyGridView myGridView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull GridView gridView, @NonNull LinearLayout linearLayout3, @NonNull View view, @NonNull LinearLayout linearLayout4, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout) {
        this.f18441a = linearLayout;
        this.f18442b = myGridView;
        this.f18443c = linearLayout2;
        this.f18444d = imageView;
        this.f18445e = gridView;
        this.f18446f = linearLayout3;
        this.f18447g = view;
        this.f18448h = linearLayout4;
        this.f18449i = textView;
        this.f18450j = relativeLayout;
    }

    @NonNull
    public static b80 a(@NonNull View view) {
        int i2 = R.id.discoveryBottomGv;
        MyGridView myGridView = (MyGridView) ViewBindings.findChildViewById(view, R.id.discoveryBottomGv);
        if (myGridView != null) {
            i2 = R.id.discoveryCommunityLl;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.discoveryCommunityLl);
            if (linearLayout != null) {
                i2 = R.id.discoverySearchIv;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.discoverySearchIv);
                if (imageView != null) {
                    i2 = R.id.discoveryTopGv;
                    GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.discoveryTopGv);
                    if (gridView != null) {
                        i2 = R.id.discoveryTopRl;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.discoveryTopRl);
                        if (linearLayout2 != null) {
                            i2 = R.id.statubar;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.statubar);
                            if (findChildViewById != null) {
                                i2 = R.id.toCommunityLl;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.toCommunityLl);
                                if (linearLayout3 != null) {
                                    i2 = R.id.toCommunityTx;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.toCommunityTx);
                                    if (textView != null) {
                                        i2 = R.id.toFightRl;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.toFightRl);
                                        if (relativeLayout != null) {
                                            return new b80((LinearLayout) view, myGridView, linearLayout, imageView, gridView, linearLayout2, findChildViewById, linearLayout3, textView, relativeLayout);
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
    public static b80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.part_discovery_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18441a;
    }
}
