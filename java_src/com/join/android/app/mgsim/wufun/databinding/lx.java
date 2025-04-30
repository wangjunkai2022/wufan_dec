package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.SlidingTabForumLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: MgForumForumActivity2Binding.java */
/* loaded from: classes3.dex */
public final class lx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22226a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f22227b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f22228c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f22229d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ForumLoadingView f22230e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final PtrClassicFrameLayout f22231f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f22232g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f22233h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final SlidingTabForumLayout f22234i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final FrameLayout f22235j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final jd0 f22236k;

    private lx(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull View view, @NonNull XListView2 xListView2, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull SlidingTabForumLayout slidingTabForumLayout, @NonNull FrameLayout frameLayout, @NonNull jd0 jd0Var) {
        this.f22226a = linearLayout;
        this.f22227b = j00Var;
        this.f22228c = view;
        this.f22229d = xListView2;
        this.f22230e = forumLoadingView;
        this.f22231f = ptrClassicFrameLayout;
        this.f22232g = relativeLayout;
        this.f22233h = imageView;
        this.f22234i = slidingTabForumLayout;
        this.f22235j = frameLayout;
        this.f22236k = jd0Var;
    }

    @NonNull
    public static lx a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            i2 = R.id.bottom;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.bottom);
            if (findChildViewById2 != null) {
                i2 = R.id.listView;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
                if (xListView2 != null) {
                    i2 = R.id.loadingView;
                    ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                    if (forumLoadingView != null) {
                        i2 = R.id.mPtrFrame;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                        if (ptrClassicFrameLayout != null) {
                            i2 = R.id.refresh;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.refresh);
                            if (relativeLayout != null) {
                                i2 = R.id.refreshImg;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.refreshImg);
                                if (imageView != null) {
                                    i2 = R.id.tabHover;
                                    SlidingTabForumLayout slidingTabForumLayout = (SlidingTabForumLayout) ViewBindings.findChildViewById(view, R.id.tabHover);
                                    if (slidingTabForumLayout != null) {
                                        i2 = R.id.videoContainer;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContainer);
                                        if (frameLayout != null) {
                                            i2 = R.id.videoLayout;
                                            View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.videoLayout);
                                            if (findChildViewById3 != null) {
                                                return new lx((LinearLayout) view, a4, findChildViewById2, xListView2, forumLoadingView, ptrClassicFrameLayout, relativeLayout, imageView, slidingTabForumLayout, frameLayout, jd0.a(findChildViewById3));
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
    public static lx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_forum_activity2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22226a;
    }
}
