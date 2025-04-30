package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
/* compiled from: ActivityTagAddBinding.java */
/* loaded from: classes3.dex */
public final class c2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18724a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EditText f18725b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final FlowLayout f18726c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FlowLayout f18727d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18728e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ListView f18729f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final NestedScrollView f18730g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final sc0 f18731h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18732i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f18733j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final View f18734k;

    private c2(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull FlowLayout flowLayout, @NonNull FlowLayout flowLayout2, @NonNull LinearLayout linearLayout2, @NonNull ListView listView, @NonNull NestedScrollView nestedScrollView, @NonNull sc0 sc0Var, @NonNull TextView textView, @NonNull TextView textView2, @NonNull View view) {
        this.f18724a = linearLayout;
        this.f18725b = editText;
        this.f18726c = flowLayout;
        this.f18727d = flowLayout2;
        this.f18728e = linearLayout2;
        this.f18729f = listView;
        this.f18730g = nestedScrollView;
        this.f18731h = sc0Var;
        this.f18732i = textView;
        this.f18733j = textView2;
        this.f18734k = view;
    }

    @NonNull
    public static c2 a(@NonNull View view) {
        int i2 = R.id.et_tag;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_tag);
        if (editText != null) {
            i2 = R.id.fl_tag_all;
            FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(view, R.id.fl_tag_all);
            if (flowLayout != null) {
                i2 = R.id.fl_tag_my;
                FlowLayout flowLayout2 = (FlowLayout) ViewBindings.findChildViewById(view, R.id.fl_tag_my);
                if (flowLayout2 != null) {
                    i2 = R.id.ll_add_tag;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_add_tag);
                    if (linearLayout != null) {
                        i2 = R.id.lv_auto_search;
                        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.lv_auto_search);
                        if (listView != null) {
                            i2 = R.id.nsv_view;
                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.nsv_view);
                            if (nestedScrollView != null) {
                                i2 = R.id.title_bar_layout;
                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                                if (findChildViewById != null) {
                                    sc0 a4 = sc0.a(findChildViewById);
                                    i2 = R.id.tv_report;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_report);
                                    if (textView != null) {
                                        i2 = R.id.tv_tag_add;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_tag_add);
                                        if (textView2 != null) {
                                            i2 = R.id.viewBg;
                                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.viewBg);
                                            if (findChildViewById2 != null) {
                                                return new c2((LinearLayout) view, editText, flowLayout, flowLayout2, linearLayout, listView, nestedScrollView, a4, textView, textView2, findChildViewById2);
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
    public static c2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_tag_add, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18724a;
    }
}
