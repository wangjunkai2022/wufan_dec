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
/* compiled from: ViewEqualizerBinding.java */
/* loaded from: classes3.dex */
public final class ud0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25503a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f25504b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f25505c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25506d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f25507e;

    private ud0(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull View view2, @NonNull View view3, @NonNull View view4) {
        this.f25503a = linearLayout;
        this.f25504b = view;
        this.f25505c = view2;
        this.f25506d = view3;
        this.f25507e = view4;
    }

    @NonNull
    public static ud0 a(@NonNull View view) {
        int i2 = R.id.music_bar1;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.music_bar1);
        if (findChildViewById != null) {
            i2 = R.id.music_bar2;
            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.music_bar2);
            if (findChildViewById2 != null) {
                i2 = R.id.music_bar3;
                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.music_bar3);
                if (findChildViewById3 != null) {
                    i2 = R.id.music_bar4;
                    View findChildViewById4 = ViewBindings.findChildViewById(view, R.id.music_bar4);
                    if (findChildViewById4 != null) {
                        return new ud0((LinearLayout) view, findChildViewById, findChildViewById2, findChildViewById3, findChildViewById4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ud0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ud0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.view_equalizer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25503a;
    }
}
