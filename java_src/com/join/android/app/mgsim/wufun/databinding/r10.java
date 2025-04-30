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
/* compiled from: MgGamedetailRecordHeaderBinding.java */
/* loaded from: classes3.dex */
public final class r10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24161a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f24162b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24163c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24164d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24165e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24166f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f24167g;

    private r10(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull View view) {
        this.f24161a = linearLayout;
        this.f24162b = relativeLayout;
        this.f24163c = textView;
        this.f24164d = textView2;
        this.f24165e = textView3;
        this.f24166f = linearLayout2;
        this.f24167g = view;
    }

    @NonNull
    public static r10 a(@NonNull View view) {
        int i2 = R.id.commentHeaderLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.commentHeaderLayout);
        if (relativeLayout != null) {
            i2 = R.id.commitCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.commitCount);
            if (textView != null) {
                i2 = R.id.commitImage;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.commitImage);
                if (textView2 != null) {
                    i2 = R.id.commitTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.commitTv);
                    if (textView3 != null) {
                        i2 = R.id.layoutBottom;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layoutBottom);
                        if (linearLayout != null) {
                            i2 = R.id.line;
                            View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                            if (findChildViewById != null) {
                                return new r10((LinearLayout) view, relativeLayout, textView, textView2, textView3, linearLayout, findChildViewById);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_record_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24161a;
    }
}
