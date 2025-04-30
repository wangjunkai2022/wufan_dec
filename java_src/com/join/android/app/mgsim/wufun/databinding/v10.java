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
/* compiled from: MgGamedetailWebBinding.java */
/* loaded from: classes3.dex */
public final class v10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25672a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f25673b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25674c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25675d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25676e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25677f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25678g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final View f25679h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25680i;

    private v10(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull View view, @NonNull TextView textView6) {
        this.f25672a = linearLayout;
        this.f25673b = relativeLayout;
        this.f25674c = textView;
        this.f25675d = textView2;
        this.f25676e = textView3;
        this.f25677f = textView4;
        this.f25678g = textView5;
        this.f25679h = view;
        this.f25680i = textView6;
    }

    @NonNull
    public static v10 a(@NonNull View view) {
        int i2 = R.id.backLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.backLayout);
        if (relativeLayout != null) {
            i2 = R.id.editRecommend;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.editRecommend);
            if (textView != null) {
                i2 = R.id.gameDescribe;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gameDescribe);
                if (textView2 != null) {
                    i2 = R.id.htmlEditRecommend;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.htmlEditRecommend);
                    if (textView3 != null) {
                        i2 = R.id.htmlGameDescribe;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.htmlGameDescribe);
                        if (textView4 != null) {
                            i2 = R.id.htmlGameDescribeShort;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.htmlGameDescribeShort);
                            if (textView5 != null) {
                                i2 = R.id.lineView;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.lineView);
                                if (findChildViewById != null) {
                                    i2 = R.id.textMore;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textMore);
                                    if (textView6 != null) {
                                        return new v10((LinearLayout) view, relativeLayout, textView, textView2, textView3, textView4, textView5, findChildViewById, textView6);
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
    public static v10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_gamedetail_web, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25672a;
    }
}
