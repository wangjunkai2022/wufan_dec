package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyInnerScrollView;
import com.join.mgps.customview.NoScrollListView;
/* compiled from: MgGameCommitLayoutBinding.java */
/* loaded from: classes3.dex */
public final class f10 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final MyInnerScrollView f19968a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final NoScrollListView f19969b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final MyInnerScrollView f19970c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19971d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f19972e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f19973f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19974g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ProgressBar f19975h;

    private f10(@NonNull MyInnerScrollView myInnerScrollView, @NonNull NoScrollListView noScrollListView, @NonNull MyInnerScrollView myInnerScrollView2, @NonNull TextView textView, @NonNull View view, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView2, @NonNull ProgressBar progressBar) {
        this.f19968a = myInnerScrollView;
        this.f19969b = noScrollListView;
        this.f19970c = myInnerScrollView2;
        this.f19971d = textView;
        this.f19972e = view;
        this.f19973f = relativeLayout;
        this.f19974g = textView2;
        this.f19975h = progressBar;
    }

    @NonNull
    public static f10 a(@NonNull View view) {
        int i2 = R.id.commitListView;
        NoScrollListView noScrollListView = (NoScrollListView) ViewBindings.findChildViewById(view, R.id.commitListView);
        if (noScrollListView != null) {
            MyInnerScrollView myInnerScrollView = (MyInnerScrollView) view;
            i2 = R.id.textMsg;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textMsg);
            if (textView != null) {
                i2 = R.id.transparentView;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.transparentView);
                if (findChildViewById != null) {
                    i2 = R.id.xlistview_footer_content;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.xlistview_footer_content);
                    if (relativeLayout != null) {
                        i2 = R.id.xlistview_footer_hint_textview;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.xlistview_footer_hint_textview);
                        if (textView2 != null) {
                            i2 = R.id.xlistview_footer_progressbar;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.xlistview_footer_progressbar);
                            if (progressBar != null) {
                                return new f10(myInnerScrollView, noScrollListView, myInnerScrollView, textView, findChildViewById, relativeLayout, textView2, progressBar);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f10 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f10 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_game_commit_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public MyInnerScrollView getRoot() {
        return this.f19968a;
    }
}
