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
/* compiled from: PopMyGameOperateBinding.java */
/* loaded from: classes3.dex */
public final class u80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25453a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25454b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25455c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25456d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25457e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f25458f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25459g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f25460h;

    private u80(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull View view, @NonNull TextView textView5, @NonNull View view2) {
        this.f25453a = linearLayout;
        this.f25454b = textView;
        this.f25455c = textView2;
        this.f25456d = textView3;
        this.f25457e = textView4;
        this.f25458f = view;
        this.f25459g = textView5;
        this.f25460h = view2;
    }

    @NonNull
    public static u80 a(@NonNull View view) {
        int i2 = R.id.addShortcut;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.addShortcut);
        if (textView != null) {
            i2 = R.id.cancel;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
            if (textView2 != null) {
                i2 = R.id.delete;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.delete);
                if (textView3 != null) {
                    i2 = R.id.detail;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.detail);
                    if (textView4 != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            i2 = R.id.tv_stand_mode;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_stand_mode);
                            if (textView5 != null) {
                                i2 = R.id.v_line_1;
                                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.v_line_1);
                                if (findChildViewById2 != null) {
                                    return new u80((LinearLayout) view, textView, textView2, textView3, textView4, findChildViewById, textView5, findChildViewById2);
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
    public static u80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_my_game_operate, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25453a;
    }
}
