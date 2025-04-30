package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;
/* compiled from: FragmentPapaStandaloneOverseaBinding.java */
/* loaded from: classes3.dex */
public final class sh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24863a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f24864b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final InterceptEventViewPager f24865c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24866d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24867e;

    private sh(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull InterceptEventViewPager interceptEventViewPager, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f24863a = linearLayout;
        this.f24864b = view;
        this.f24865c = interceptEventViewPager;
        this.f24866d = textView;
        this.f24867e = textView2;
    }

    @NonNull
    public static sh a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.mViewPager;
            InterceptEventViewPager interceptEventViewPager = (InterceptEventViewPager) ViewBindings.findChildViewById(view, R.id.mViewPager);
            if (interceptEventViewPager != null) {
                i2 = R.id.tv_free;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_free);
                if (textView != null) {
                    i2 = R.id.tv_new;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_new);
                    if (textView2 != null) {
                        return new sh((LinearLayout) view, findChildViewById, interceptEventViewPager, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_papa_standalone_oversea, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24863a;
    }
}
