package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivtyNewArenaBinding.java */
/* loaded from: classes3.dex */
public final class r2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24168a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f24169b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f24170c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f24171d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FrameLayout f24172e;

    private r2(@NonNull RelativeLayout relativeLayout, @NonNull FrameLayout frameLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull FrameLayout frameLayout2) {
        this.f24168a = relativeLayout;
        this.f24169b = frameLayout;
        this.f24170c = relativeLayout2;
        this.f24171d = relativeLayout3;
        this.f24172e = frameLayout2;
    }

    @NonNull
    public static r2 a(@NonNull View view) {
        int i2 = R.id.frameLayout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.frameLayout);
        if (frameLayout != null) {
            i2 = R.id.layoutBack;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layoutBack);
            if (relativeLayout != null) {
                i2 = R.id.layout_others;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layout_others);
                if (relativeLayout2 != null) {
                    i2 = R.id.mg_mian_fragmentlayout;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mg_mian_fragmentlayout);
                    if (frameLayout2 != null) {
                        return new r2((RelativeLayout) view, frameLayout, relativeLayout, relativeLayout2, frameLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activty_new_arena, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24168a;
    }
}
