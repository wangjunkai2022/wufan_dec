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
import com.join.mgps.customview.NoScrollListView;
/* compiled from: SearchListLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ua0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25476a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25477b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final NoScrollListView f25478c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25479d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f25480e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25481f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25482g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f25483h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25484i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25485j;

    private ua0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull NoScrollListView noScrollListView, @NonNull View view, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView, @NonNull LinearLayout linearLayout5, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25476a = linearLayout;
        this.f25477b = linearLayout2;
        this.f25478c = noScrollListView;
        this.f25479d = view;
        this.f25480e = linearLayout3;
        this.f25481f = linearLayout4;
        this.f25482g = textView;
        this.f25483h = linearLayout5;
        this.f25484i = textView2;
        this.f25485j = textView3;
    }

    @NonNull
    public static ua0 a(@NonNull View view) {
        int i2 = R.id.clearLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.clearLayout);
        if (linearLayout != null) {
            i2 = R.id.historyListView;
            NoScrollListView noScrollListView = (NoScrollListView) ViewBindings.findChildViewById(view, R.id.historyListView);
            if (noScrollListView != null) {
                i2 = R.id.line;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                if (findChildViewById != null) {
                    i2 = R.id.linearLayout;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                    if (linearLayout2 != null) {
                        i2 = R.id.llHotSearch1;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llHotSearch1);
                        if (linearLayout3 != null) {
                            i2 = R.id.noHistory;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noHistory);
                            if (textView != null) {
                                LinearLayout linearLayout4 = (LinearLayout) view;
                                i2 = R.id.textView;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                if (textView2 != null) {
                                    i2 = R.id.textView2;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                                    if (textView3 != null) {
                                        return new ua0(linearLayout4, linearLayout, noScrollListView, findChildViewById, linearLayout2, linearLayout3, textView, linearLayout4, textView2, textView3);
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
    public static ua0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ua0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_list_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25476a;
    }
}
