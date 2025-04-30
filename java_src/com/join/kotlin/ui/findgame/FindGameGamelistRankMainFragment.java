package com.join.kotlin.ui.findgame;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.databinding.Cif;
import com.join.mgps.Util.c0;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.customview.d0;
import com.join.mgps.fragment.j2;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FindGameGamelistRankMainFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ&\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\u001a\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameGamelistRankMainFragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "onDestroyView", "view", "onViewCreated", "Lcom/join/mgps/customview/d0;", "adapter", "Lcom/join/mgps/customview/d0;", "getAdapter", "()Lcom/join/mgps/customview/d0;", "setAdapter", "(Lcom/join/mgps/customview/d0;)V", "Lcom/join/android/app/mgsim/wufun/databinding/if;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/if;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/if;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/if;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class FindGameGamelistRankMainFragment extends Fragment {
    public d0 adapter;
    public Cif binding;

    @NotNull
    public final d0 getAdapter() {
        d0 d0Var = this.adapter;
        if (d0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return d0Var;
    }

    @NotNull
    public final Cif getBinding() {
        Cif cif = this.binding;
        if (cif == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return cif;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Cif d4 = Cif.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "FindgameGamelistrankfrag…flater, container, false)");
        this.binding = d4;
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf("热门", "最新");
        ArrayList arrayList = new ArrayList();
        arrayList.add(j2.W(1));
        arrayList.add(j2.W(2));
        this.adapter = new d0(getChildFragmentManager(), arrayList, arrayListOf);
        Cif cif = this.binding;
        if (cif == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager = cif.f21154c;
        Intrinsics.checkNotNullExpressionValue(viewPager, "binding.viewPager");
        d0 d0Var = this.adapter;
        if (d0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        viewPager.setAdapter(d0Var);
        d0 d0Var2 = this.adapter;
        if (d0Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        d0Var2.notifyDataSetChanged();
        Cif cif2 = this.binding;
        if (cif2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        SlidingTabLayout6 slidingTabLayout6 = cif2.f21153b;
        Cif cif3 = this.binding;
        if (cif3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        slidingTabLayout6.setViewPager(cif3.f21154c);
        Cif cif4 = this.binding;
        if (cif4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return cif4.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        c0.a().e(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
    }

    public final void setAdapter(@NotNull d0 d0Var) {
        Intrinsics.checkNotNullParameter(d0Var, "<set-?>");
        this.adapter = d0Var;
    }

    public final void setBinding(@NotNull Cif cif) {
        Intrinsics.checkNotNullParameter(cif, "<set-?>");
        this.binding = cif;
    }
}
