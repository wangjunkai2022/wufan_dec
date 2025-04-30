package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.zhy.view.flowlayout.TagFlowLayout2;
/* compiled from: SearchListActivityBinding.java */
/* loaded from: classes3.dex */
public final class sa0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24753a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24754b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f24755c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24756d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24757e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f24758f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TagFlowLayout2 f24759g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TagFlowLayout2 f24760h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final View f24761i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RelativeLayout f24762j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24763k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f24764l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final EditText f24765m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f24766n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final XListView2 f24767o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f24768p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ScrollView f24769q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f24770r;

    private sa0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ListView listView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull TagFlowLayout2 tagFlowLayout2, @NonNull TagFlowLayout2 tagFlowLayout22, @NonNull View view, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull EditText editText, @NonNull LinearLayout linearLayout, @NonNull XListView2 xListView2, @NonNull TextView textView3, @NonNull ScrollView scrollView, @NonNull TextView textView4) {
        this.f24753a = relativeLayout;
        this.f24754b = textView;
        this.f24755c = listView;
        this.f24756d = imageView;
        this.f24757e = imageView2;
        this.f24758f = relativeLayout2;
        this.f24759g = tagFlowLayout2;
        this.f24760h = tagFlowLayout22;
        this.f24761i = view;
        this.f24762j = relativeLayout3;
        this.f24763k = textView2;
        this.f24764l = imageView3;
        this.f24765m = editText;
        this.f24766n = linearLayout;
        this.f24767o = xListView2;
        this.f24768p = textView3;
        this.f24769q = scrollView;
        this.f24770r = textView4;
    }

    @NonNull
    public static sa0 a(@NonNull View view) {
        int i2 = R.id.empty;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.empty);
        if (textView != null) {
            i2 = R.id.historyListView;
            ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.historyListView);
            if (listView != null) {
                i2 = R.id.img_iconback;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_iconback);
                if (imageView != null) {
                    i2 = R.id.img_search;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.img_search);
                    if (imageView2 != null) {
                        i2 = R.id.lLayout_search;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.lLayout_search);
                        if (relativeLayout != null) {
                            i2 = R.id.language;
                            TagFlowLayout2 tagFlowLayout2 = (TagFlowLayout2) ViewBindings.findChildViewById(view, R.id.language);
                            if (tagFlowLayout2 != null) {
                                i2 = R.id.pingtai;
                                TagFlowLayout2 tagFlowLayout22 = (TagFlowLayout2) ViewBindings.findChildViewById(view, R.id.pingtai);
                                if (tagFlowLayout22 != null) {
                                    i2 = R.id.requestLayout;
                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.requestLayout);
                                    if (findChildViewById != null) {
                                        i2 = R.id.search_bar_layout;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.search_bar_layout);
                                        if (relativeLayout2 != null) {
                                            i2 = R.id.searchBySelector;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.searchBySelector);
                                            if (textView2 != null) {
                                                i2 = R.id.searchClear;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.searchClear);
                                                if (imageView3 != null) {
                                                    i2 = R.id.searchEditText;
                                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.searchEditText);
                                                    if (editText != null) {
                                                        i2 = R.id.search_list_fragment;
                                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.search_list_fragment);
                                                        if (linearLayout != null) {
                                                            i2 = R.id.searchListView;
                                                            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.searchListView);
                                                            if (xListView2 != null) {
                                                                i2 = R.id.select;
                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.select);
                                                                if (textView3 != null) {
                                                                    i2 = R.id.select_view;
                                                                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.select_view);
                                                                    if (scrollView != null) {
                                                                        i2 = R.id.topNull;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.topNull);
                                                                        if (textView4 != null) {
                                                                            return new sa0((RelativeLayout) view, textView, listView, imageView, imageView2, relativeLayout, tagFlowLayout2, tagFlowLayout22, findChildViewById, relativeLayout2, textView2, imageView3, editText, linearLayout, xListView2, textView3, scrollView, textView4);
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
    public static sa0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sa0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_list_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24753a;
    }
}
