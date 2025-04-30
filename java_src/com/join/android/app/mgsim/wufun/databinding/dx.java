package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TableLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumAdLayoutBinding.java */
/* loaded from: classes3.dex */
public final class dx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f19512a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TableLayout f19513b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19514c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f19515d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f19516e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f19517f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f19518g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f19519h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19520i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f19521j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f19522k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RelativeLayout f19523l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f19524m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f19525n;

    private dx(@NonNull RelativeLayout relativeLayout, @NonNull TableLayout tableLayout, @NonNull TextView textView, @NonNull View view, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull SimpleDraweeView simpleDraweeView4, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView2) {
        this.f19512a = relativeLayout;
        this.f19513b = tableLayout;
        this.f19514c = textView;
        this.f19515d = view;
        this.f19516e = simpleDraweeView;
        this.f19517f = simpleDraweeView2;
        this.f19518g = simpleDraweeView3;
        this.f19519h = simpleDraweeView4;
        this.f19520i = linearLayout;
        this.f19521j = linearLayout2;
        this.f19522k = linearLayout3;
        this.f19523l = relativeLayout2;
        this.f19524m = relativeLayout3;
        this.f19525n = textView2;
    }

    @NonNull
    public static dx a(@NonNull View view) {
        int i2 = R.id.forum_ad_container;
        TableLayout tableLayout = (TableLayout) ViewBindings.findChildViewById(view, R.id.forum_ad_container);
        if (tableLayout != null) {
            i2 = R.id.forum_ad_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.forum_ad_title);
            if (textView != null) {
                i2 = R.id.guide;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.guide);
                if (findChildViewById != null) {
                    i2 = R.id.layout_forum_ad_1;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.layout_forum_ad_1);
                    if (simpleDraweeView != null) {
                        i2 = R.id.layout_forum_ad_2;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.layout_forum_ad_2);
                        if (simpleDraweeView2 != null) {
                            i2 = R.id.layout_forum_ad_3;
                            SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.layout_forum_ad_3);
                            if (simpleDraweeView3 != null) {
                                i2 = R.id.layout_forum_ad_4;
                                SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.layout_forum_ad_4);
                                if (simpleDraweeView4 != null) {
                                    i2 = R.id.layout_forum_ad_row1;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_forum_ad_row1);
                                    if (linearLayout != null) {
                                        i2 = R.id.layout_forum_ad_row2;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_forum_ad_row2);
                                        if (linearLayout2 != null) {
                                            i2 = R.id.layout_forum_ad_title;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_forum_ad_title);
                                            if (linearLayout3 != null) {
                                                i2 = R.id.relati_layout_forum_ad_title;
                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relati_layout_forum_ad_title);
                                                if (relativeLayout != null) {
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                                    i2 = R.id.textView9;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView9);
                                                    if (textView2 != null) {
                                                        return new dx(relativeLayout2, tableLayout, textView, findChildViewById, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, linearLayout, linearLayout2, linearLayout3, relativeLayout, relativeLayout2, textView2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static dx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_ad_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f19512a;
    }
}
