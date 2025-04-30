package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgGamedetailRecordFooterBinding.java */
/* loaded from: classes3.dex */
public final class q10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23790a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f23791b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23792c;

    private q10(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.f23790a = linearLayout;
        this.f23791b = relativeLayout;
        this.f23792c = textView;
    }

    @NonNull
    public static q10 a(@NonNull View view) {
        int i2 = R.id.commentFooterLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.commentFooterLayout);
        if (relativeLayout != null) {
            i2 = R.id.showAllCommit;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.showAllCommit);
            if (textView != null) {
                return new q10((LinearLayout) view, relativeLayout, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_record_footer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23790a;
    }
}
