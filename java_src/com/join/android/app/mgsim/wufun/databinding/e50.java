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
/* compiled from: MytestactivitylayoutBinding.java */
/* loaded from: classes3.dex */
public final class e50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19593a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ScrollView f19594b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19595c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f19596d;

    private e50(@NonNull LinearLayout linearLayout, @NonNull ScrollView scrollView, @NonNull TextView textView, @NonNull Button button) {
        this.f19593a = linearLayout;
        this.f19594b = scrollView;
        this.f19595c = textView;
        this.f19596d = button;
    }

    @NonNull
    public static e50 a(@NonNull View view) {
        int i2 = R.id.scrollView;
        ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
        if (scrollView != null) {
            i2 = R.id.testTextview;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.testTextview);
            if (textView != null) {
                i2 = R.id.testbutn;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.testbutn);
                if (button != null) {
                    return new e50((LinearLayout) view, scrollView, textView, button);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static e50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mytestactivitylayout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19593a;
    }
}
