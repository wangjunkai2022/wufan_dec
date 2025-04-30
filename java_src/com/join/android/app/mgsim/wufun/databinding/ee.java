package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: DynamicMyFragmentBinding.java */
/* loaded from: classes3.dex */
public final class ee implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19747a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f19748b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f19749c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f19750d;

    private ee(@NonNull RelativeLayout relativeLayout, @NonNull View view, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f19747a = relativeLayout;
        this.f19748b = view;
        this.f19749c = xListView2;
        this.f19750d = ptrClassicFrameLayout;
    }

    @NonNull
    public static ee a(@NonNull View view) {
        int i2 = R.id.bottom;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.bottom);
        if (findChildViewById != null) {
            i2 = R.id.forum_posts_list;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.forum_posts_list);
            if (xListView2 != null) {
                i2 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    return new ee((RelativeLayout) view, findChildViewById, xListView2, ptrClassicFrameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ee c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ee d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dynamic_my_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19747a;
    }
}
