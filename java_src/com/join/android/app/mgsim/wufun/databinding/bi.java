package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentStandardoreliteRoomBinding.java */
/* loaded from: classes3.dex */
public final class bi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18535a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XRecyclerView f18536b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f18537c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18538d;

    private bi(@NonNull RelativeLayout relativeLayout, @NonNull XRecyclerView xRecyclerView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull TextView textView) {
        this.f18535a = relativeLayout;
        this.f18536b = xRecyclerView;
        this.f18537c = ptrClassicFrameLayout;
        this.f18538d = textView;
    }

    @NonNull
    public static bi a(@NonNull View view) {
        int i2 = R.id.mListView;
        XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.mListView);
        if (xRecyclerView != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.noData;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noData);
                if (textView != null) {
                    return new bi((RelativeLayout) view, xRecyclerView, ptrClassicFrameLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_standardorelite_room, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18535a;
    }
}
