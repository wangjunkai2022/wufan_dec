package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentGridView;
/* compiled from: FragmentMyGameNoGameBinding.java */
/* loaded from: classes3.dex */
public final class lh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22142a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22143b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22144c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final WrapContentGridView f22145d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22146e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22147f;

    private lh(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull WrapContentGridView wrapContentGridView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22142a = linearLayout;
        this.f22143b = imageView;
        this.f22144c = linearLayout2;
        this.f22145d = wrapContentGridView;
        this.f22146e = textView;
        this.f22147f = textView2;
    }

    @NonNull
    public static lh a(@NonNull View view) {
        int i2 = R.id.imageView13;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView13);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i2 = R.id.noGameList;
            WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(view, R.id.noGameList);
            if (wrapContentGridView != null) {
                i2 = R.id.textView42;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView42);
                if (textView != null) {
                    i2 = R.id.textView45;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView45);
                    if (textView2 != null) {
                        return new lh(linearLayout, imageView, linearLayout, wrapContentGridView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_my_game_no_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22142a;
    }
}
