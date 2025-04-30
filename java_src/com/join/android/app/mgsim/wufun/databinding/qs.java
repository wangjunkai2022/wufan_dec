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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemStandaloneTagViewBinding.java */
/* loaded from: classes3.dex */
public final class qs implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24060a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f24061b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f24062c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24063d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f24064e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f24065f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24066g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f24067h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f24068i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f24069j;

    private qs(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3) {
        this.f24060a = linearLayout;
        this.f24061b = simpleDraweeView;
        this.f24062c = linearLayout2;
        this.f24063d = textView;
        this.f24064e = simpleDraweeView2;
        this.f24065f = linearLayout3;
        this.f24066g = textView2;
        this.f24067h = simpleDraweeView3;
        this.f24068i = linearLayout4;
        this.f24069j = textView3;
    }

    @NonNull
    public static qs a(@NonNull View view) {
        int i2 = R.id.standAloneTagOneIv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.standAloneTagOneIv);
        if (simpleDraweeView != null) {
            i2 = R.id.standAloneTagOneLl;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.standAloneTagOneLl);
            if (linearLayout != null) {
                i2 = R.id.standAloneTagOneTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.standAloneTagOneTv);
                if (textView != null) {
                    i2 = R.id.standAloneTagThreeIv;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.standAloneTagThreeIv);
                    if (simpleDraweeView2 != null) {
                        i2 = R.id.standAloneTagThreeLl;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.standAloneTagThreeLl);
                        if (linearLayout2 != null) {
                            i2 = R.id.standAloneTagThreeTv;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.standAloneTagThreeTv);
                            if (textView2 != null) {
                                i2 = R.id.standAloneTagTwoIv;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.standAloneTagTwoIv);
                                if (simpleDraweeView3 != null) {
                                    i2 = R.id.standAloneTagTwoLl;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.standAloneTagTwoLl);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.standAloneTagTwoTv;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.standAloneTagTwoTv);
                                        if (textView3 != null) {
                                            return new qs((LinearLayout) view, simpleDraweeView, linearLayout, textView, simpleDraweeView2, linearLayout2, textView2, simpleDraweeView3, linearLayout3, textView3);
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
    public static qs c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qs d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_standalone_tag_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24060a;
    }
}
