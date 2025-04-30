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
/* compiled from: FragmentGameTopicBinding.java */
/* loaded from: classes3.dex */
public final class tg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25230a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25231b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f25232c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f25233d;

    private tg(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f25230a = linearLayout;
        this.f25231b = linearLayout2;
        this.f25232c = xListView2;
        this.f25233d = ptrClassicFrameLayout;
    }

    @NonNull
    public static tg a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.listView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
        if (xListView2 != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                return new tg(linearLayout, linearLayout, xListView2, ptrClassicFrameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_game_topic, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25230a;
    }
}
