package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentFriendMsgReqBinding.java */
/* loaded from: classes3.dex */
public final class qg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23986a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23987b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView f23988c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f23989d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Group f23990e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23991f;

    private qg(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull XListView xListView, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull Group group, @NonNull TextView textView) {
        this.f23986a = constraintLayout;
        this.f23987b = imageView;
        this.f23988c = xListView;
        this.f23989d = ptrClassicFrameLayout;
        this.f23990e = group;
        this.f23991f = textView;
    }

    @NonNull
    public static qg a(@NonNull View view) {
        int i2 = R.id.imageView62;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView62);
        if (imageView != null) {
            i2 = R.id.listView;
            XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.listView);
            if (xListView != null) {
                i2 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    i2 = R.id.noRecord;
                    Group group = (Group) ViewBindings.findChildViewById(view, R.id.noRecord);
                    if (group != null) {
                        i2 = R.id.textView49;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView49);
                        if (textView != null) {
                            return new qg((ConstraintLayout) view, imageView, xListView, ptrClassicFrameLayout, group, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_friend_msg_req, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23986a;
    }
}
