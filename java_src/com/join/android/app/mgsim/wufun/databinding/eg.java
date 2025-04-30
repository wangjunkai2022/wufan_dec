package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentCodesboxBinding.java */
/* loaded from: classes3.dex */
public final class eg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19760a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f19761b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f19762c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ListView f19763d;

    private eg(@NonNull RelativeLayout relativeLayout, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull ListView listView) {
        this.f19760a = relativeLayout;
        this.f19761b = xListView2;
        this.f19762c = ptrClassicFrameLayout;
        this.f19763d = listView;
    }

    @NonNull
    public static eg a(@NonNull View view) {
        int i2 = R.id.listView2;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView2);
        if (xListView2 != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.recommendView;
                ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.recommendView);
                if (listView != null) {
                    return new eg((RelativeLayout) view, xListView2, ptrClassicFrameLayout, listView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static eg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static eg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_codesbox, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19760a;
    }
}
