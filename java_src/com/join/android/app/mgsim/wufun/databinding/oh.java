package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentNewArenamainBinding.java */
/* loaded from: classes3.dex */
public final class oh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23267a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f23268b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f23269c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23270d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final XRecyclerView f23271e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final PtrClassicFrameLayout f23272f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f23273g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f23274h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f23275i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f23276j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f23277k;

    private oh(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull LinearLayout linearLayout2, @NonNull XRecyclerView xRecyclerView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull LinearLayout linearLayout3, @NonNull View view, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6) {
        this.f23267a = linearLayout;
        this.f23268b = frameLayout;
        this.f23269c = frameLayout2;
        this.f23270d = linearLayout2;
        this.f23271e = xRecyclerView;
        this.f23272f = ptrClassicFrameLayout;
        this.f23273g = linearLayout3;
        this.f23274h = view;
        this.f23275i = linearLayout4;
        this.f23276j = linearLayout5;
        this.f23277k = linearLayout6;
    }

    @NonNull
    public static oh a(@NonNull View view) {
        int i2 = R.id.fragmentLayout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragmentLayout);
        if (frameLayout != null) {
            i2 = R.id.friendLayout;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.friendLayout);
            if (frameLayout2 != null) {
                i2 = R.id.hit_temp_ll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.hit_temp_ll);
                if (linearLayout != null) {
                    i2 = R.id.listview;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.listview);
                    if (xRecyclerView != null) {
                        i2 = R.id.ll_main;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.ll_main);
                        if (ptrClassicFrameLayout != null) {
                            i2 = R.id.myDragImageView;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.myDragImageView);
                            if (linearLayout2 != null) {
                                i2 = R.id.redPoint;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.redPoint);
                                if (findChildViewById != null) {
                                    i2 = R.id.searchBack;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.searchBack);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.selecterLayout;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.selecterLayout);
                                        if (linearLayout4 != null) {
                                            i2 = R.id.title;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.title);
                                            if (linearLayout5 != null) {
                                                return new oh((LinearLayout) view, frameLayout, frameLayout2, linearLayout, xRecyclerView, ptrClassicFrameLayout, linearLayout2, findChildViewById, linearLayout3, linearLayout4, linearLayout5);
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
    public static oh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_new_arenamain, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23267a;
    }
}
