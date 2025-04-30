package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: ChoiceFragmentBinding.java */
/* loaded from: classes3.dex */
public final class s5 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24706a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ForumLoadingView f24707b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f24708c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XRecyclerView f24709d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24710e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f24711f;

    private s5(@NonNull LinearLayout linearLayout, @NonNull ForumLoadingView forumLoadingView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XRecyclerView xRecyclerView, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout) {
        this.f24706a = linearLayout;
        this.f24707b = forumLoadingView;
        this.f24708c = ptrClassicFrameLayout;
        this.f24709d = xRecyclerView;
        this.f24710e = textView;
        this.f24711f = relativeLayout;
    }

    @NonNull
    public static s5 a(@NonNull View view) {
        int i2 = R.id.loadingView;
        ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
        if (forumLoadingView != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.recyclerView;
                XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                if (xRecyclerView != null) {
                    i2 = R.id.searchBack;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.searchBack);
                    if (textView != null) {
                        i2 = R.id.title;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.title);
                        if (relativeLayout != null) {
                            return new s5((LinearLayout) view, forumLoadingView, ptrClassicFrameLayout, xRecyclerView, textView, relativeLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static s5 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static s5 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.choice_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24706a;
    }
}
