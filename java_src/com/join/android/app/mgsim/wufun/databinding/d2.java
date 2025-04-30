package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
/* compiled from: ActivityTagReportBinding.java */
/* loaded from: classes3.dex */
public final class d2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19156a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f19157b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f19158c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FlowLayout f19159d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ListView f19160e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final sc0 f19161f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f19162g;

    private d2(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull EditText editText, @NonNull FlowLayout flowLayout, @NonNull ListView listView, @NonNull sc0 sc0Var, @NonNull View view) {
        this.f19156a = linearLayout;
        this.f19157b = button;
        this.f19158c = editText;
        this.f19159d = flowLayout;
        this.f19160e = listView;
        this.f19161f = sc0Var;
        this.f19162g = view;
    }

    @NonNull
    public static d2 a(@NonNull View view) {
        int i2 = R.id.btn_commit;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_commit);
        if (button != null) {
            i2 = R.id.et_reason_text;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_reason_text);
            if (editText != null) {
                i2 = R.id.fl_tag_all;
                FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(view, R.id.fl_tag_all);
                if (flowLayout != null) {
                    i2 = R.id.lv_reasons;
                    ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.lv_reasons);
                    if (listView != null) {
                        i2 = R.id.title_bar_layout;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                        if (findChildViewById != null) {
                            sc0 a4 = sc0.a(findChildViewById);
                            i2 = R.id.viewBg;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.viewBg);
                            if (findChildViewById2 != null) {
                                return new d2((LinearLayout) view, button, editText, flowLayout, listView, a4, findChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static d2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_tag_report, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19156a;
    }
}
