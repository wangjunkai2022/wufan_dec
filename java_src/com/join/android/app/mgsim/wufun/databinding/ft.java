package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
/* compiled from: LayoutClassifyPopwindowBinding.java */
/* loaded from: classes3.dex */
public final class ft implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20219a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20220b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FlowLayout f20221c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FlowLayout f20222d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20223e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f20224f;

    private ft(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull FlowLayout flowLayout, @NonNull FlowLayout flowLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout2) {
        this.f20219a = linearLayout;
        this.f20220b = button;
        this.f20221c = flowLayout;
        this.f20222d = flowLayout2;
        this.f20223e = textView;
        this.f20224f = linearLayout2;
    }

    @NonNull
    public static ft a(@NonNull View view) {
        int i2 = R.id.classifySortBt;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.classifySortBt);
        if (button != null) {
            i2 = R.id.layout_game_classify;
            FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(view, R.id.layout_game_classify);
            if (flowLayout != null) {
                i2 = R.id.layout_game_classify_sort;
                FlowLayout flowLayout2 = (FlowLayout) ViewBindings.findChildViewById(view, R.id.layout_game_classify_sort);
                if (flowLayout2 != null) {
                    i2 = R.id.popwindClassifyTv;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.popwindClassifyTv);
                    if (textView != null) {
                        i2 = R.id.rootLl;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rootLl);
                        if (linearLayout != null) {
                            return new ft((LinearLayout) view, button, flowLayout, flowLayout2, textView, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ft c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ft d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_classify_popwindow, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20219a;
    }
}
