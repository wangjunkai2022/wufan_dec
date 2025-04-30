package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentDiscoveryBinding.java */
/* loaded from: classes3.dex */
public final class ig implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21155a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f21156b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f21157c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f21158d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21159e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final XListView2 f21160f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final PtrClassicFrameLayout f21161g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f21162h;

    private ig(@NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull View view) {
        this.f21155a = relativeLayout;
        this.f21156b = relativeLayout2;
        this.f21157c = relativeLayout3;
        this.f21158d = imageView;
        this.f21159e = textView;
        this.f21160f = xListView2;
        this.f21161g = ptrClassicFrameLayout;
        this.f21162h = view;
    }

    @NonNull
    public static ig a(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int i2 = R.id.discoveryTitleRl;
        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.discoveryTitleRl);
        if (relativeLayout2 != null) {
            i2 = R.id.discoveryTitleSearchIv;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.discoveryTitleSearchIv);
            if (imageView != null) {
                i2 = R.id.discoveryTitleTx;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.discoveryTitleTx);
                if (textView != null) {
                    i2 = R.id.listView;
                    XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
                    if (xListView2 != null) {
                        i2 = R.id.mPtrFrame;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                        if (ptrClassicFrameLayout != null) {
                            i2 = R.id.statubar;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.statubar);
                            if (findChildViewById != null) {
                                return new ig(relativeLayout, relativeLayout, relativeLayout2, imageView, textView, xListView2, ptrClassicFrameLayout, findChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ig c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ig d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_discovery, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21155a;
    }
}
