package com.join.kotlin.bindingadapter;

import androidx.databinding.BindingAdapter;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.viewpager.widget.ViewPager;
import com.join.mgps.customview.d0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewBindingViewPager.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a4\u0010\n\u001a\u00020\t2\u0006\u0010\u0001\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0007¨\u0006\u000b"}, d2 = {"Landroidx/viewpager/widget/ViewPager;", "viewPager", "", "Landroidx/fragment/app/Fragment;", "fragments", "", "titles", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "viewpagerFragment", "app_wufunNormalRelease"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class ViewBindingViewPagerKt {
    @BindingAdapter(requireAll = false, value = {"fragments", "titles", "fragmentManager"})
    public static final void viewpagerFragment(@NotNull ViewPager viewPager, @NotNull List<? extends Fragment> fragments, @NotNull List<String> titles, @NotNull FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(viewPager, "viewPager");
        Intrinsics.checkNotNullParameter(fragments, "fragments");
        Intrinsics.checkNotNullParameter(titles, "titles");
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(fragments);
        d0 d0Var = new d0(fragmentManager, arrayList, titles);
        d0Var.d(fragments, titles);
        viewPager.setAdapter(d0Var);
    }
}
