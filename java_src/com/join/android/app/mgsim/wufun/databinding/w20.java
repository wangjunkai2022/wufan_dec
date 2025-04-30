package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.appbar.AppBarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView3;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.melnykov.fab.FloatingActionButton;
/* compiled from: MgpapaMainfragmentNewLayoutV2Binding.java */
/* loaded from: classes3.dex */
public final class w20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26012a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppBarLayout f26013b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FloatingActionButton f26014c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CoordinatorLayout f26015d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f26016e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f26017f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f26018g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f26019h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f26020i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final XListView3 f26021j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final PtrClassicFrameLayout f26022k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f26023l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f26024m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f26025n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f26026o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final View f26027p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f26028q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final RelativeLayout f26029r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ViewFlipper f26030s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f26031t;

    private w20(@NonNull RelativeLayout relativeLayout, @NonNull AppBarLayout appBarLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull CoordinatorLayout coordinatorLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView3, @NonNull XListView3 xListView3, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull ViewFlipper viewFlipper, @NonNull TextView textView3) {
        this.f26012a = relativeLayout;
        this.f26013b = appBarLayout;
        this.f26014c = floatingActionButton;
        this.f26015d = coordinatorLayout;
        this.f26016e = frameLayout;
        this.f26017f = imageView;
        this.f26018g = imageView2;
        this.f26019h = simpleDraweeView;
        this.f26020i = imageView3;
        this.f26021j = xListView3;
        this.f26022k = ptrClassicFrameLayout;
        this.f26023l = imageView4;
        this.f26024m = imageView5;
        this.f26025n = textView;
        this.f26026o = textView2;
        this.f26027p = view;
        this.f26028q = relativeLayout2;
        this.f26029r = relativeLayout3;
        this.f26030s = viewFlipper;
        this.f26031t = textView3;
    }

    @NonNull
    public static w20 a(@NonNull View view) {
        int i2 = R.id.appbar;
        AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (appBarLayout != null) {
            i2 = R.id.coinFloatad;
            FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, R.id.coinFloatad);
            if (floatingActionButton != null) {
                i2 = R.id.coordinator;
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.coordinator);
                if (coordinatorLayout != null) {
                    i2 = R.id.flTitleSearch;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flTitleSearch);
                    if (frameLayout != null) {
                        i2 = R.id.imageView2;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView2);
                        if (imageView != null) {
                            i2 = R.id.imageView3;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView3);
                            if (imageView2 != null) {
                                i2 = R.id.ivFloatad;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ivFloatad);
                                if (simpleDraweeView != null) {
                                    i2 = R.id.ivSearchIcon;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivSearchIcon);
                                    if (imageView3 != null) {
                                        i2 = R.id.listview;
                                        XListView3 xListView3 = (XListView3) ViewBindings.findChildViewById(view, R.id.listview);
                                        if (xListView3 != null) {
                                            i2 = R.id.mPtrFrame;
                                            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                                            if (ptrClassicFrameLayout != null) {
                                                i2 = R.id.movetoTop;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.movetoTop);
                                                if (imageView4 != null) {
                                                    i2 = R.id.search;
                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
                                                    if (imageView5 != null) {
                                                        i2 = R.id.searchBack;
                                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.searchBack);
                                                        if (textView != null) {
                                                            i2 = R.id.searchContent;
                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.searchContent);
                                                            if (textView2 != null) {
                                                                i2 = R.id.statubar;
                                                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.statubar);
                                                                if (findChildViewById != null) {
                                                                    i2 = R.id.title;
                                                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.title);
                                                                    if (relativeLayout != null) {
                                                                        i2 = R.id.titleSearch;
                                                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.titleSearch);
                                                                        if (relativeLayout2 != null) {
                                                                            i2 = R.id.tvSearchHint;
                                                                            ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(view, R.id.tvSearchHint);
                                                                            if (viewFlipper != null) {
                                                                                i2 = R.id.updateNotice;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.updateNotice);
                                                                                if (textView3 != null) {
                                                                                    return new w20((RelativeLayout) view, appBarLayout, floatingActionButton, coordinatorLayout, frameLayout, imageView, imageView2, simpleDraweeView, imageView3, xListView3, ptrClassicFrameLayout, imageView4, imageView5, textView, textView2, findChildViewById, relativeLayout, relativeLayout2, viewFlipper, textView3);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26012a;
    }
}
