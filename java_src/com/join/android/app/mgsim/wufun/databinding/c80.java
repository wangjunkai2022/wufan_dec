package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: PartDiscoveryHeaderv2Binding.java */
/* loaded from: classes3.dex */
public final class c80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18807a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f18808b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18809c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final GridView f18810d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f18811e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18812f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18813g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f18814h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18815i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18816j;

    private c80(@NonNull LinearLayout linearLayout, @NonNull HListView hListView, @NonNull LinearLayout linearLayout2, @NonNull GridView gridView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f18807a = linearLayout;
        this.f18808b = hListView;
        this.f18809c = linearLayout2;
        this.f18810d = gridView;
        this.f18811e = relativeLayout;
        this.f18812f = textView;
        this.f18813g = textView2;
        this.f18814h = linearLayout3;
        this.f18815i = textView3;
        this.f18816j = textView4;
    }

    @NonNull
    public static c80 a(@NonNull View view) {
        int i2 = R.id.discoveryBottomGv;
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.discoveryBottomGv);
        if (hListView != null) {
            i2 = R.id.discoveryCommunityLl;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.discoveryCommunityLl);
            if (linearLayout != null) {
                i2 = R.id.discoveryTopGv;
                GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.discoveryTopGv);
                if (gridView != null) {
                    i2 = R.id.discoveryTopRl;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.discoveryTopRl);
                    if (relativeLayout != null) {
                        i2 = R.id.number;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.number);
                        if (textView != null) {
                            i2 = R.id.title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                            if (textView2 != null) {
                                i2 = R.id.toCommunityLl;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.toCommunityLl);
                                if (linearLayout2 != null) {
                                    i2 = R.id.toCommunityTx;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.toCommunityTx);
                                    if (textView3 != null) {
                                        i2 = R.id.toFightRl;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.toFightRl);
                                        if (textView4 != null) {
                                            return new c80((LinearLayout) view, hListView, linearLayout, gridView, relativeLayout, textView, textView2, linearLayout2, textView3, textView4);
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
    public static c80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.part_discovery_headerv2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18807a;
    }
}
