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
import com.join.mgps.customview.XListView4NewGame;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentPapaBannerListBinding.java */
/* loaded from: classes3.dex */
public final class qh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23992a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView4NewGame f23993b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f23994c;

    private qh(@NonNull LinearLayout linearLayout, @NonNull XListView4NewGame xListView4NewGame, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f23992a = linearLayout;
        this.f23993b = xListView4NewGame;
        this.f23994c = ptrClassicFrameLayout;
    }

    @NonNull
    public static qh a(@NonNull View view) {
        int i2 = R.id.mListView;
        XListView4NewGame xListView4NewGame = (XListView4NewGame) ViewBindings.findChildViewById(view, R.id.mListView);
        if (xListView4NewGame != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                return new qh((LinearLayout) view, xListView4NewGame, ptrClassicFrameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_papa_banner_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23992a;
    }
}
