package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CommentdetailReportDialogBinding.java */
/* loaded from: classes3.dex */
public final class g8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20352a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20353b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20354c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20355d;

    private g8(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f20352a = relativeLayout;
        this.f20353b = textView;
        this.f20354c = textView2;
        this.f20355d = textView3;
    }

    @NonNull
    public static g8 a(@NonNull View view) {
        int i2 = R.id.cancelTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancelTv);
        if (textView != null) {
            i2 = R.id.replyTv;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.replyTv);
            if (textView2 != null) {
                i2 = R.id.reportTv;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.reportTv);
                if (textView3 != null) {
                    return new g8((RelativeLayout) view, textView, textView2, textView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.commentdetail_report_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20352a;
    }
}
