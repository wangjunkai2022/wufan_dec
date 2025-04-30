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
import com.join.android.app.component.xrecyclerview.XRecyclerView2;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.melnykov.fab.FloatingActionButton;
/* compiled from: MgpapaMainfragmentNewLayoutV3Binding.java */
/* loaded from: classes3.dex */
public final class x20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26384a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final AppBarLayout f26385b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FloatingActionButton f26386c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CoordinatorLayout f26387d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f26388e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f26389f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f26390g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f26391h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f26392i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final XRecyclerView2 f26393j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final PtrClassicFrameLayout f26394k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f26395l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final ImageView f26396m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f26397n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f26398o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final View f26399p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f26400q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final RelativeLayout f26401r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ViewFlipper f26402s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f26403t;

    private x20(@NonNull RelativeLayout relativeLayout, @NonNull AppBarLayout appBarLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull CoordinatorLayout coordinatorLayout, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView3, @NonNull XRecyclerView2 xRecyclerView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull ViewFlipper viewFlipper, @NonNull TextView textView3) {
        this.f26384a = relativeLayout;
        this.f26385b = appBarLayout;
        this.f26386c = floatingActionButton;
        this.f26387d = coordinatorLayout;
        this.f26388e = frameLayout;
        this.f26389f = imageView;
        this.f26390g = imageView2;
        this.f26391h = simpleDraweeView;
        this.f26392i = imageView3;
        this.f26393j = xRecyclerView2;
        this.f26394k = ptrClassicFrameLayout;
        this.f26395l = imageView4;
        this.f26396m = imageView5;
        this.f26397n = textView;
        this.f26398o = textView2;
        this.f26399p = view;
        this.f26400q = relativeLayout2;
        this.f26401r = relativeLayout3;
        this.f26402s = viewFlipper;
        this.f26403t = textView3;
    }

    @NonNull
    public static x20 a(@NonNull View view) {
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
                                        XRecyclerView2 xRecyclerView2 = (XRecyclerView2) ViewBindings.findChildViewById(view, R.id.listview);
                                        if (xRecyclerView2 != null) {
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
                                                                                    return new x20((RelativeLayout) view, appBarLayout, floatingActionButton, coordinatorLayout, frameLayout, imageView, imageView2, simpleDraweeView, imageView3, xRecyclerView2, ptrClassicFrameLayout, imageView4, imageView5, textView, textView2, findChildViewById, relativeLayout, relativeLayout2, viewFlipper, textView3);
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
    public static x20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v3, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26384a;
    }
}
