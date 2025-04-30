package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GamedetialMoreGiftItemLayoutBinding.java */
/* loaded from: classes3.dex */
public final class em implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19841a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19842b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f19843c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f19844d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19845e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f19846f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19847g;

    private em(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull View view, @NonNull TextView textView2, @NonNull ProgressBar progressBar, @NonNull TextView textView3) {
        this.f19841a = linearLayout;
        this.f19842b = textView;
        this.f19843c = button;
        this.f19844d = view;
        this.f19845e = textView2;
        this.f19846f = progressBar;
        this.f19847g = textView3;
    }

    @NonNull
    public static em a(@NonNull View view) {
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.getGift;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.getGift);
            if (button != null) {
                i2 = R.id.line_h;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line_h);
                if (findChildViewById != null) {
                    i2 = R.id.percent;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.percent);
                    if (textView2 != null) {
                        i2 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress);
                        if (progressBar != null) {
                            i2 = R.id.title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                            if (textView3 != null) {
                                return new em((LinearLayout) view, textView, button, findChildViewById, textView2, progressBar, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static em c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static em d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetial_more_gift_item_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19841a;
    }
}
