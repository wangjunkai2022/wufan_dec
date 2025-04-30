package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: MustPlayLayoutBinding.java */
/* loaded from: classes3.dex */
public final class e40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19587a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f19588b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f19589c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f19590d;

    private e40(@NonNull LinearLayout linearLayout, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull View view) {
        this.f19587a = linearLayout;
        this.f19588b = xListView2;
        this.f19589c = ptrClassicFrameLayout;
        this.f19590d = view;
    }

    @NonNull
    public static e40 a(@NonNull View view) {
        int i2 = R.id.listview;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
        if (xListView2 != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.viewBg;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.viewBg);
                if (findChildViewById != null) {
                    return new e40((LinearLayout) view, xListView2, ptrClassicFrameLayout, findChildViewById);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.must_play_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19587a;
    }
}
