package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
/* compiled from: ActivityGameSearchFavoriteBinding.java */
/* loaded from: classes3.dex */
public final class n0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22662a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22663b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f22664c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f22665d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final sc0 f22666e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f22667f;

    private n0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull XListView2 xListView2, @NonNull sc0 sc0Var, @NonNull RelativeLayout relativeLayout) {
        this.f22662a = linearLayout;
        this.f22663b = imageView;
        this.f22664c = editText;
        this.f22665d = xListView2;
        this.f22666e = sc0Var;
        this.f22667f = relativeLayout;
    }

    @NonNull
    public static n0 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            i2 = R.id.et_search;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_search);
            if (editText != null) {
                i2 = R.id.mListView;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.mListView);
                if (xListView2 != null) {
                    i2 = R.id.rl_normal;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.rl_normal);
                    if (findChildViewById != null) {
                        sc0 a4 = sc0.a(findChildViewById);
                        i2 = R.id.rl_search;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_search);
                        if (relativeLayout != null) {
                            return new n0((LinearLayout) view, imageView, editText, xListView2, a4, relativeLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static n0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_game_search_favorite, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22662a;
    }
}
