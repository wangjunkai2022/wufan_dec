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
import com.join.mgps.customview.ClouldItemView3;
/* compiled from: ItemCloudListItemBinding.java */
/* loaded from: classes3.dex */
public final class np implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22951a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ClouldItemView3 f22952b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f22953c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22954d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22955e;

    private np(@NonNull LinearLayout linearLayout, @NonNull ClouldItemView3 clouldItemView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22951a = linearLayout;
        this.f22952b = clouldItemView3;
        this.f22953c = linearLayout2;
        this.f22954d = textView;
        this.f22955e = textView2;
    }

    @NonNull
    public static np a(@NonNull View view) {
        int i2 = R.id.coulditem;
        ClouldItemView3 clouldItemView3 = (ClouldItemView3) ViewBindings.findChildViewById(view, R.id.coulditem);
        if (clouldItemView3 != null) {
            i2 = R.id.ll_show;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_show);
            if (linearLayout != null) {
                i2 = R.id.tv_today_id;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_today_id);
                if (textView != null) {
                    i2 = R.id.tv_zong_id;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_zong_id);
                    if (textView2 != null) {
                        return new np((LinearLayout) view, clouldItemView3, linearLayout, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static np c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static np d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_cloud_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22951a;
    }
}
