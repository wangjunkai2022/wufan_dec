package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MgForumPostActivityItemPostGameBinding.java */
/* loaded from: classes3.dex */
public final class uy implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25613a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25614b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f25615c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25616d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f25617e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f25618f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25619g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25620h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25621i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f25622j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Button f25623k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f25624l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f25625m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ProgressBar f25626n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ProgressBar f25627o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RelativeLayout f25628p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final RelativeLayout f25629q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f25630r;

    private uy(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull View view, @NonNull View view2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull SimpleDraweeView simpleDraweeView, @NonNull Button button, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout4) {
        this.f25613a = linearLayout;
        this.f25614b = textView;
        this.f25615c = view;
        this.f25616d = view2;
        this.f25617e = linearLayout2;
        this.f25618f = linearLayout3;
        this.f25619g = textView2;
        this.f25620h = textView3;
        this.f25621i = textView4;
        this.f25622j = simpleDraweeView;
        this.f25623k = button;
        this.f25624l = textView5;
        this.f25625m = textView6;
        this.f25626n = progressBar;
        this.f25627o = progressBar2;
        this.f25628p = relativeLayout;
        this.f25629q = relativeLayout2;
        this.f25630r = linearLayout4;
    }

    @NonNull
    public static uy a(@NonNull View view) {
        int i2 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appSize);
        if (textView != null) {
            i2 = R.id.divider;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider);
            if (findChildViewById != null) {
                i2 = R.id.line;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.line);
                if (findChildViewById2 != null) {
                    i2 = R.id.linearLayout;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout);
                    if (linearLayout != null) {
                        i2 = R.id.linearLayout2;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayout2);
                        if (linearLayout2 != null) {
                            i2 = R.id.loding_info;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.loding_info);
                            if (textView2 != null) {
                                i2 = R.id.mgListviewItemAppname;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemAppname);
                                if (textView3 != null) {
                                    i2 = R.id.mgListviewItemDescribe;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemDescribe);
                                    if (textView4 != null) {
                                        i2 = R.id.mgListviewItemIcon;
                                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mgListviewItemIcon);
                                        if (simpleDraweeView != null) {
                                            i2 = R.id.mgListviewItemInstall;
                                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.mgListviewItemInstall);
                                            if (button != null) {
                                                i2 = R.id.mgListviewItemSize;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.mgListviewItemSize);
                                                if (textView5 != null) {
                                                    i2 = R.id.moneyText;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.moneyText);
                                                    if (textView6 != null) {
                                                        i2 = R.id.progressBar;
                                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                                                        if (progressBar != null) {
                                                            i2 = R.id.progressBarZip;
                                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBarZip);
                                                            if (progressBar2 != null) {
                                                                i2 = R.id.rLayoutRight;
                                                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rLayoutRight);
                                                                if (relativeLayout != null) {
                                                                    i2 = R.id.relateLayoutApp;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relateLayoutApp);
                                                                    if (relativeLayout2 != null) {
                                                                        i2 = R.id.tipsLayout;
                                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.tipsLayout);
                                                                        if (linearLayout3 != null) {
                                                                            return new uy((LinearLayout) view, textView, findChildViewById, findChildViewById2, linearLayout, linearLayout2, textView2, textView3, textView4, simpleDraweeView, button, textView5, textView6, progressBar, progressBar2, relativeLayout, relativeLayout2, linearLayout3);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static uy c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static uy d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_forum_post_activity_item_post_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25613a;
    }
}
