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
/* compiled from: ItemPapaStandaloneRecTitleBinding.java */
/* loaded from: classes3.dex */
public final class lr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22197a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f22198b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22199c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22200d;

    private lr(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22197a = linearLayout;
        this.f22198b = view;
        this.f22199c = textView;
        this.f22200d = textView2;
    }

    @NonNull
    public static lr a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.tv_all;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_all);
            if (textView != null) {
                i2 = R.id.tv_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                if (textView2 != null) {
                    return new lr((LinearLayout) view, findChildViewById, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_papa_standalone_rec_title, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22197a;
    }
}
