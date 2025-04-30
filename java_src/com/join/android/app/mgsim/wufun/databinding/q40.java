package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyGridView;
/* compiled from: MyAccountReginfinishLayoutBinding.java */
/* loaded from: classes3.dex */
public final class q40 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23829a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final MyGridView f23830b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f23831c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ScrollView f23832d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23833e;

    private q40(@NonNull LinearLayout linearLayout, @NonNull MyGridView myGridView, @NonNull Button button, @NonNull ScrollView scrollView, @NonNull TextView textView) {
        this.f23829a = linearLayout;
        this.f23830b = myGridView;
        this.f23831c = button;
        this.f23832d = scrollView;
        this.f23833e = textView;
    }

    @NonNull
    public static q40 a(@NonNull View view) {
        int i2 = R.id.chooseGridView;
        MyGridView myGridView = (MyGridView) ViewBindings.findChildViewById(view, R.id.chooseGridView);
        if (myGridView != null) {
            i2 = R.id.reginFinish;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.reginFinish);
            if (button != null) {
                i2 = R.id.scrollView;
                ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                if (scrollView != null) {
                    i2 = R.id.title_textview;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                    if (textView != null) {
                        return new q40((LinearLayout) view, myGridView, button, scrollView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q40 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q40 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.my_account_reginfinish_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23829a;
    }
}
