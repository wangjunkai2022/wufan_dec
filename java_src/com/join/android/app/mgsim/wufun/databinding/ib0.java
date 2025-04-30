package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: SharePostsActivityBinding.java */
/* loaded from: classes3.dex */
public final class ib0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21114a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21115b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21116c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f21117d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final GridView f21118e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21119f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21120g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21121h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final EditText f21122i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final HListView f21123j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final EditText f21124k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final j00 f21125l;

    private ib0(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull GridView gridView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull EditText editText, @NonNull HListView hListView, @NonNull EditText editText2, @NonNull j00 j00Var) {
        this.f21114a = relativeLayout;
        this.f21115b = linearLayout;
        this.f21116c = textView;
        this.f21117d = linearLayout2;
        this.f21118e = gridView;
        this.f21119f = textView2;
        this.f21120g = textView3;
        this.f21121h = textView4;
        this.f21122i = editText;
        this.f21123j = hListView;
        this.f21124k = editText2;
        this.f21125l = j00Var;
    }

    @NonNull
    public static ib0 a(@NonNull View view) {
        int i2 = R.id.editMainContainer;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editMainContainer);
        if (linearLayout != null) {
            i2 = R.id.footer_tip;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.footer_tip);
            if (textView != null) {
                i2 = R.id.helpContainer;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.helpContainer);
                if (linearLayout2 != null) {
                    i2 = R.id.helpGrid;
                    GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.helpGrid);
                    if (gridView != null) {
                        i2 = R.id.helpTipV;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.helpTipV);
                        if (textView2 != null) {
                            i2 = R.id.helpTitle;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.helpTitle);
                            if (textView3 != null) {
                                i2 = R.id.myRemainHelpMoney;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.myRemainHelpMoney);
                                if (textView4 != null) {
                                    i2 = R.id.posts_content;
                                    EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.posts_content);
                                    if (editText != null) {
                                        i2 = R.id.posts_pic_hlist;
                                        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.posts_pic_hlist);
                                        if (hListView != null) {
                                            i2 = R.id.posts_title;
                                            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.posts_title);
                                            if (editText2 != null) {
                                                i2 = R.id.title;
                                                View findChildViewById = ViewBindings.findChildViewById(view, R.id.title);
                                                if (findChildViewById != null) {
                                                    return new ib0((RelativeLayout) view, linearLayout, textView, linearLayout2, gridView, textView2, textView3, textView4, editText, hListView, editText2, j00.a(findChildViewById));
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
    public static ib0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ib0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.share_posts_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21114a;
    }
}
