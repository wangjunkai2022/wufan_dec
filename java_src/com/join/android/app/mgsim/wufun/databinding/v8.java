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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CubeRotateView;
/* compiled from: CubeRoateViewLayoutBinding.java */
/* loaded from: classes3.dex */
public final class v8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25774a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f25775b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CubeRotateView f25776c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25777d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f25778e;

    private v8(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull CubeRotateView cubeRotateView, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView2) {
        this.f25774a = linearLayout;
        this.f25775b = simpleDraweeView;
        this.f25776c = cubeRotateView;
        this.f25777d = textView;
        this.f25778e = simpleDraweeView2;
    }

    @NonNull
    public static v8 a(@NonNull View view) {
        int i2 = R.id.background;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.background);
        if (simpleDraweeView != null) {
            i2 = R.id.cubeView;
            CubeRotateView cubeRotateView = (CubeRotateView) ViewBindings.findChildViewById(view, R.id.cubeView);
            if (cubeRotateView != null) {
                i2 = R.id.date;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.date);
                if (textView != null) {
                    i2 = R.id.foreground;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.foreground);
                    if (simpleDraweeView2 != null) {
                        return new v8((LinearLayout) view, simpleDraweeView, cubeRotateView, textView, simpleDraweeView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static v8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cube_roate_view_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25774a;
    }
}
