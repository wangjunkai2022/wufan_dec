package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityBuildGameFromBinding.java */
/* loaded from: classes3.dex */
public final class i implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20948a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EditText f20949b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f20950c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f20951d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20952e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f20953f;

    private i(@NonNull RelativeLayout relativeLayout, @NonNull EditText editText, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView, @NonNull View view) {
        this.f20948a = relativeLayout;
        this.f20949b = editText;
        this.f20950c = relativeLayout2;
        this.f20951d = relativeLayout3;
        this.f20952e = textView;
        this.f20953f = view;
    }

    @NonNull
    public static i a(@NonNull View view) {
        int i2 = R.id.ed_game;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.ed_game);
        if (editText != null) {
            i2 = R.id.iv_back;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.iv_back);
            if (relativeLayout != null) {
                i2 = R.id.rl_title;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_title);
                if (relativeLayout2 != null) {
                    i2 = R.id.tv_finish;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_finish);
                    if (textView != null) {
                        i2 = R.id.view_line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view_line);
                        if (findChildViewById != null) {
                            return new i((RelativeLayout) view, editText, relativeLayout, relativeLayout2, textView, findChildViewById);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static i c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static i d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_build_game_from, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20948a;
    }
}
