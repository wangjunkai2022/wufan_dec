package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ClassifyLayoutBinding.java */
/* loaded from: classes3.dex */
public final class k6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21712a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f21713b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f21714c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f21715d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final tc0 f21716e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f21717f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f21718g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f21719h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f21720i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f21721j;

    private k6(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull View view, @NonNull View view2, @NonNull tc0 tc0Var, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21712a = linearLayout;
        this.f21713b = frameLayout;
        this.f21714c = view;
        this.f21715d = view2;
        this.f21716e = tc0Var;
        this.f21717f = relativeLayout;
        this.f21718g = relativeLayout2;
        this.f21719h = linearLayout2;
        this.f21720i = textView;
        this.f21721j = textView2;
    }

    @NonNull
    public static k6 a(@NonNull View view) {
        int i2 = R.id.classifyFrameLayout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.classifyFrameLayout);
        if (frameLayout != null) {
            i2 = R.id.imgPT;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.imgPT);
            if (findChildViewById != null) {
                i2 = R.id.imgYX;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.imgYX);
                if (findChildViewById2 != null) {
                    i2 = R.id.include;
                    View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.include);
                    if (findChildViewById3 != null) {
                        tc0 a4 = tc0.a(findChildViewById3);
                        i2 = R.id.lLayoutPT;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.lLayoutPT);
                        if (relativeLayout != null) {
                            i2 = R.id.lLayoutYX;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.lLayoutYX);
                            if (relativeLayout2 != null) {
                                i2 = R.id.linearLayout3;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout3);
                                if (linearLayout != null) {
                                    i2 = R.id.textViewPT;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textViewPT);
                                    if (textView != null) {
                                        i2 = R.id.textViewYX;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textViewYX);
                                        if (textView2 != null) {
                                            return new k6((LinearLayout) view, frameLayout, findChildViewById, findChildViewById2, a4, relativeLayout, relativeLayout2, linearLayout, textView, textView2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static k6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static k6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.classify_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21712a;
    }
}
