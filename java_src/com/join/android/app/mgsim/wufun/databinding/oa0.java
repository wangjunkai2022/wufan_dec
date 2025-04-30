package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.ForumLoadingView;
/* compiled from: SearchHintActivityBinding.java */
/* loaded from: classes3.dex */
public final class oa0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23200a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f23201b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23202c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23203d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FlowLayout f23204e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f23205f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ForumLoadingView f23206g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final xa0 f23207h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final la0 f23208i;

    private oa0(@NonNull LinearLayout linearLayout, @NonNull ListView listView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull FlowLayout flowLayout, @NonNull View view, @NonNull ForumLoadingView forumLoadingView, @NonNull xa0 xa0Var, @NonNull la0 la0Var) {
        this.f23200a = linearLayout;
        this.f23201b = listView;
        this.f23202c = imageView;
        this.f23203d = linearLayout2;
        this.f23204e = flowLayout;
        this.f23205f = view;
        this.f23206g = forumLoadingView;
        this.f23207h = xa0Var;
        this.f23208i = la0Var;
    }

    @NonNull
    public static oa0 a(@NonNull View view) {
        int i2 = R.id.autoListView;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.autoListView);
        if (listView != null) {
            i2 = R.id.clearHistoryx;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.clearHistoryx);
            if (imageView != null) {
                i2 = R.id.clearLayout;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.clearLayout);
                if (linearLayout != null) {
                    i2 = R.id.historyFlow;
                    FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(view, R.id.historyFlow);
                    if (flowLayout != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            i2 = R.id.loadingView;
                            ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(view, R.id.loadingView);
                            if (forumLoadingView != null) {
                                i2 = R.id.recommend;
                                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.recommend);
                                if (findChildViewById2 != null) {
                                    xa0 a4 = xa0.a(findChildViewById2);
                                    i2 = R.id.search_bar_layout;
                                    View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.search_bar_layout);
                                    if (findChildViewById3 != null) {
                                        return new oa0((LinearLayout) view, listView, imageView, linearLayout, flowLayout, findChildViewById, forumLoadingView, a4, la0.a(findChildViewById3));
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
    public static oa0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oa0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_hint_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23200a;
    }
}
