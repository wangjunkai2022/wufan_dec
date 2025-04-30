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
/* compiled from: MgForumExtFuncPopwindowBinding.java */
/* loaded from: classes3.dex */
public final class ix implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21269a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21270b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21271c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f21272d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f21273e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f21274f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21275g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f21276h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f21277i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f21278j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f21279k;

    private ix(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView2, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull TextView textView3) {
        this.f21269a = linearLayout;
        this.f21270b = linearLayout2;
        this.f21271c = textView;
        this.f21272d = linearLayout3;
        this.f21273e = linearLayout4;
        this.f21274f = linearLayout5;
        this.f21275g = textView2;
        this.f21276h = linearLayout6;
        this.f21277i = linearLayout7;
        this.f21278j = linearLayout8;
        this.f21279k = textView3;
    }

    @NonNull
    public static ix a(@NonNull View view) {
        int i2 = R.id.extFuncBest;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.extFuncBest);
        if (linearLayout != null) {
            i2 = R.id.extFuncBestTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.extFuncBestTv);
            if (textView != null) {
                i2 = R.id.extFuncCancel;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.extFuncCancel);
                if (linearLayout2 != null) {
                    i2 = R.id.extFuncDelete;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.extFuncDelete);
                    if (linearLayout3 != null) {
                        i2 = R.id.extFuncFavorite;
                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.extFuncFavorite);
                        if (linearLayout4 != null) {
                            i2 = R.id.extFuncFavoriteTv;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.extFuncFavoriteTv);
                            if (textView2 != null) {
                                i2 = R.id.extFuncReply;
                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.extFuncReply);
                                if (linearLayout5 != null) {
                                    i2 = R.id.extFuncReport;
                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.extFuncReport);
                                    if (linearLayout6 != null) {
                                        i2 = R.id.extFuncShare;
                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.extFuncShare);
                                        if (linearLayout7 != null) {
                                            i2 = R.id.extFuncShareTv;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.extFuncShareTv);
                                            if (textView3 != null) {
                                                return new ix((LinearLayout) view, linearLayout, textView, linearLayout2, linearLayout3, linearLayout4, textView2, linearLayout5, linearLayout6, linearLayout7, textView3);
                                            }
                                        }
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
    public static ix c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ix d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_ext_func_popwindow, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21269a;
    }
}
