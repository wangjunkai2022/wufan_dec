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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumMyDynamicActivityBinding.java */
/* loaded from: classes3.dex */
public final class jy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21563a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final j00 f21564b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FrameLayout f21565c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final jd0 f21566d;

    private jy(@NonNull LinearLayout linearLayout, @NonNull j00 j00Var, @NonNull FrameLayout frameLayout, @NonNull jd0 jd0Var) {
        this.f21563a = linearLayout;
        this.f21564b = j00Var;
        this.f21565c = frameLayout;
        this.f21566d = jd0Var;
    }

    @NonNull
    public static jy a(@NonNull View view) {
        int i2 = R.id.actionbarLayout;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.actionbarLayout);
        if (findChildViewById != null) {
            j00 a4 = j00.a(findChildViewById);
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.videoContainer);
            if (frameLayout != null) {
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.videoLayout);
                if (findChildViewById2 != null) {
                    return new jy((LinearLayout) view, a4, frameLayout, jd0.a(findChildViewById2));
                }
                i2 = R.id.videoLayout;
            } else {
                i2 = R.id.videoContainer;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_my_dynamic_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21563a;
    }
}
