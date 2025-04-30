package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.VipView;
/* compiled from: ItemRoomListPBinding.java */
/* loaded from: classes3.dex */
public final class tr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25290a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f25291b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f25292c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25293d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f25294e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f25295f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f25296g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f25297h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final VipView f25298i;

    private tr(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull VipView vipView) {
        this.f25290a = relativeLayout;
        this.f25291b = simpleDraweeView;
        this.f25292c = view;
        this.f25293d = imageView;
        this.f25294e = imageView2;
        this.f25295f = relativeLayout2;
        this.f25296g = imageView3;
        this.f25297h = imageView4;
        this.f25298i = vipView;
    }

    @NonNull
    public static tr a(@NonNull View view) {
        int i2 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.avatar);
        if (simpleDraweeView != null) {
            i2 = R.id.borderView;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.borderView);
            if (findChildViewById != null) {
                i2 = R.id.ivProficiencyLevel;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivProficiencyLevel);
                if (imageView != null) {
                    i2 = R.id.iv_state;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_state);
                    if (imageView2 != null) {
                        i2 = R.id.pMain;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.pMain);
                        if (relativeLayout != null) {
                            i2 = R.id.platformType;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.platformType);
                            if (imageView3 != null) {
                                i2 = R.id.tv_chenghao;
                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.tv_chenghao);
                                if (imageView4 != null) {
                                    i2 = R.id.vipView;
                                    VipView vipView = (VipView) ViewBindings.findChildViewById(view, R.id.vipView);
                                    if (vipView != null) {
                                        return new tr((RelativeLayout) view, simpleDraweeView, findChildViewById, imageView, imageView2, relativeLayout, imageView3, imageView4, vipView);
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
    public static tr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_room_list_p, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25290a;
    }
}
