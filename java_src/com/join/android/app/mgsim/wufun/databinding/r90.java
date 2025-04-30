package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: RecomentActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class r90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24280a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24281b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24282c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f24283d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24284e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f24285f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RecyclerView f24286g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24287h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24288i;

    private r90(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView2, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f24280a = linearLayout;
        this.f24281b = textView;
        this.f24282c = imageView;
        this.f24283d = constraintLayout;
        this.f24284e = imageView2;
        this.f24285f = view;
        this.f24286g = recyclerView;
        this.f24287h = textView2;
        this.f24288i = textView3;
    }

    @NonNull
    public static r90 a(@NonNull View view) {
        int i2 = R.id.enterGame;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.enterGame);
        if (textView != null) {
            i2 = R.id.lodingImg;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingImg);
            if (imageView != null) {
                i2 = R.id.protocol;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.protocol);
                if (constraintLayout != null) {
                    i2 = R.id.protocolCheck;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.protocolCheck);
                    if (imageView2 != null) {
                        i2 = R.id.protocolCheckPlaceholder;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.protocolCheckPlaceholder);
                        if (findChildViewById != null) {
                            i2 = R.id.recycleView;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycleView);
                            if (recyclerView != null) {
                                i2 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                if (textView2 != null) {
                                    i2 = R.id.userProtocolTxt;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.userProtocolTxt);
                                    if (textView3 != null) {
                                        return new r90((LinearLayout) view, textView, imageView, constraintLayout, imageView2, findChildViewById, recyclerView, textView2, textView3);
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
    public static r90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.recoment_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24280a;
    }
}
