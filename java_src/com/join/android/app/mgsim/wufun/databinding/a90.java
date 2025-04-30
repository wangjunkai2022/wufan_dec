package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
/* compiled from: PopoItemBinding.java */
/* loaded from: classes3.dex */
public final class a90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18070a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final EditText f18071b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f18072c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f18073d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18074e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18075f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f18076g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f18077h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18078i;

    private a90(@NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull XListView2 xListView2, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18070a = linearLayout;
        this.f18071b = editText;
        this.f18072c = xListView2;
        this.f18073d = linearLayout2;
        this.f18074e = linearLayout3;
        this.f18075f = linearLayout4;
        this.f18076g = linearLayout5;
        this.f18077h = textView;
        this.f18078i = textView2;
    }

    @NonNull
    public static a90 a(@NonNull View view) {
        int i2 = R.id.game_ed;
        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.game_ed);
        if (editText != null) {
            i2 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
            if (xListView2 != null) {
                i2 = R.id.ll_build;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_build);
                if (linearLayout != null) {
                    i2 = R.id.ll_dismiss;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_dismiss);
                    if (linearLayout2 != null) {
                        i2 = R.id.ll_our;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_our);
                        if (linearLayout3 != null) {
                            i2 = R.id.ll_show_finish;
                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_show_finish);
                            if (linearLayout4 != null) {
                                i2 = R.id.tv_finish;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_finish);
                                if (textView != null) {
                                    i2 = R.id.tv_show_tips;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_show_tips);
                                    if (textView2 != null) {
                                        return new a90((LinearLayout) view, editText, xListView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView, textView2);
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
    public static a90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.popo_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18070a;
    }
}
