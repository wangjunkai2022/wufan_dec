package com.join.kotlin.ui.findgame;

import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.common.utils.j;
import com.join.android.app.mgsim.wufun.databinding.hf;
import com.join.kotlin.ui.findgame.data.IntentClassfyEvent;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.c0;
import com.join.mgps.customview.SlidingTabLayout6;
import com.join.mgps.customview.d0;
import com.join.mgps.fragment.d4;
import com.join.mgps.fragment.k0;
import com.join.mgps.fragment.n0;
import com.psk.kotlin.ext.CommonExtKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FindGameMainFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J&\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\u001a\u0010\r\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0007R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/join/kotlin/ui/findgame/FindGameMainFragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "onDestroyView", "view", "onViewCreated", "", "hidden", "onHiddenChanged", "Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;", NotificationCompat.CATEGORY_EVENT, "recivedIntentEvent", "Lcom/join/android/app/mgsim/wufun/databinding/hf;", "binding", "Lcom/join/android/app/mgsim/wufun/databinding/hf;", "getBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/hf;", "setBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/hf;)V", "Lcom/join/mgps/customview/d0;", "adapter", "Lcom/join/mgps/customview/d0;", "getAdapter", "()Lcom/join/mgps/customview/d0;", "setAdapter", "(Lcom/join/mgps/customview/d0;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class FindGameMainFragment extends Fragment {
    public d0 adapter;
    public hf binding;

    @NotNull
    public final d0 getAdapter() {
        d0 d0Var = this.adapter;
        if (d0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return d0Var;
    }

    @NotNull
    public final hf getBinding() {
        hf hfVar = this.binding;
        if (hfVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return hfVar;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        hf d4 = hf.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "FindgameFragmentLayoutBi…flater, container, false)");
        this.binding = d4;
        if (Build.VERSION.SDK_INT >= 21) {
            if (d4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            View view = d4.f20773c;
            Intrinsics.checkNotNullExpressionValue(view, "binding.statubar");
            view.getLayoutParams().height = j.v(getContext());
        }
        arrayListOf = CollectionsKt__CollectionsKt.arrayListOf("闪玩", "精选", "排行", "分类", "游戏单");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new n0());
        arrayList.add(new FindGameChoiceFragment());
        arrayList.add(new d4());
        arrayList.add(new FindGameClassfyFragment());
        arrayList.add(new FindGameGamelistRankMainFragment());
        c0.a().d(this);
        this.adapter = new d0(getChildFragmentManager(), arrayList, arrayListOf);
        hf hfVar = this.binding;
        if (hfVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager = hfVar.f20775e;
        Intrinsics.checkNotNullExpressionValue(viewPager, "binding.viewPager");
        d0 d0Var = this.adapter;
        if (d0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        viewPager.setAdapter(d0Var);
        hf hfVar2 = this.binding;
        if (hfVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager2 = hfVar2.f20775e;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "binding.viewPager");
        viewPager2.setOffscreenPageLimit(5);
        Bundle arguments = getArguments();
        if (arguments != null) {
            int i2 = arguments.getInt("currTabNumber");
            if (i2 == 0) {
                hf hfVar3 = this.binding;
                if (hfVar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                ViewPager viewPager3 = hfVar3.f20775e;
                Intrinsics.checkNotNullExpressionValue(viewPager3, "binding.viewPager");
                viewPager3.setCurrentItem(1);
            } else if (i2 == 1) {
                hf hfVar4 = this.binding;
                if (hfVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                ViewPager viewPager4 = hfVar4.f20775e;
                Intrinsics.checkNotNullExpressionValue(viewPager4, "binding.viewPager");
                viewPager4.setCurrentItem(2);
            } else if (i2 == 2) {
                hf hfVar5 = this.binding;
                if (hfVar5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                ViewPager viewPager5 = hfVar5.f20775e;
                Intrinsics.checkNotNullExpressionValue(viewPager5, "binding.viewPager");
                viewPager5.setCurrentItem(3);
            } else if (i2 == 3) {
                hf hfVar6 = this.binding;
                if (hfVar6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                ViewPager viewPager6 = hfVar6.f20775e;
                Intrinsics.checkNotNullExpressionValue(viewPager6, "binding.viewPager");
                viewPager6.setCurrentItem(4);
            } else if (i2 == 4) {
                hf hfVar7 = this.binding;
                if (hfVar7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                ViewPager viewPager7 = hfVar7.f20775e;
                Intrinsics.checkNotNullExpressionValue(viewPager7, "binding.viewPager");
                viewPager7.setCurrentItem(0);
            }
        }
        d0 d0Var2 = this.adapter;
        if (d0Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        d0Var2.notifyDataSetChanged();
        hf hfVar8 = this.binding;
        if (hfVar8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        SlidingTabLayout6 slidingTabLayout6 = hfVar8.f20774d;
        hf hfVar9 = this.binding;
        if (hfVar9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        slidingTabLayout6.setViewPager(hfVar9.f20775e);
        hf hfVar10 = this.binding;
        if (hfVar10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ImageView imageView = hfVar10.f20772b;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.search");
        CommonExtKt.onClick(imageView, new Function0<Unit>() { // from class: com.join.kotlin.ui.findgame.FindGameMainFragment$onCreateView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                IntentUtil.getInstance().goSearchHintActivity(FindGameMainFragment.this.getContext());
            }
        });
        hf hfVar11 = this.binding;
        if (hfVar11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return hfVar11.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        c0.a().e(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
        if (z3) {
            return;
        }
        d0 d0Var = this.adapter;
        if (d0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        hf hfVar = this.binding;
        if (hfVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager = hfVar.f20775e;
        hf hfVar2 = this.binding;
        if (hfVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager2 = hfVar2.f20775e;
        Intrinsics.checkNotNullExpressionValue(viewPager2, "binding.viewPager");
        Object instantiateItem = d0Var.instantiateItem((ViewGroup) viewPager, viewPager2.getCurrentItem());
        Intrinsics.checkNotNullExpressionValue(instantiateItem, "adapter.instantiateItem(…ng.viewPager.currentItem)");
        hf hfVar3 = this.binding;
        if (hfVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        ViewPager viewPager3 = hfVar3.f20775e;
        Intrinsics.checkNotNullExpressionValue(viewPager3, "binding.viewPager");
        if (viewPager3.getCurrentItem() == 0 && (instantiateItem instanceof k0)) {
            ((k0) instantiateItem).i0();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void recivedIntentEvent(@NotNull IntentClassfyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int type = event.getType();
        if (type == 0) {
            hf hfVar = this.binding;
            if (hfVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            ViewPager viewPager = hfVar.f20775e;
            Intrinsics.checkNotNullExpressionValue(viewPager, "binding.viewPager");
            viewPager.setCurrentItem(1);
        } else if (type == 1) {
            hf hfVar2 = this.binding;
            if (hfVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            ViewPager viewPager2 = hfVar2.f20775e;
            Intrinsics.checkNotNullExpressionValue(viewPager2, "binding.viewPager");
            viewPager2.setCurrentItem(2);
        } else if (type == 2) {
            hf hfVar3 = this.binding;
            if (hfVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            ViewPager viewPager3 = hfVar3.f20775e;
            Intrinsics.checkNotNullExpressionValue(viewPager3, "binding.viewPager");
            viewPager3.setCurrentItem(3);
        } else if (type == 3) {
            hf hfVar4 = this.binding;
            if (hfVar4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            ViewPager viewPager4 = hfVar4.f20775e;
            Intrinsics.checkNotNullExpressionValue(viewPager4, "binding.viewPager");
            viewPager4.setCurrentItem(4);
        } else if (type != 4) {
        } else {
            hf hfVar5 = this.binding;
            if (hfVar5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            }
            ViewPager viewPager5 = hfVar5.f20775e;
            Intrinsics.checkNotNullExpressionValue(viewPager5, "binding.viewPager");
            viewPager5.setCurrentItem(0);
        }
    }

    public final void setAdapter(@NotNull d0 d0Var) {
        Intrinsics.checkNotNullParameter(d0Var, "<set-?>");
        this.adapter = d0Var;
    }

    public final void setBinding(@NotNull hf hfVar) {
        Intrinsics.checkNotNullParameter(hfVar, "<set-?>");
        this.binding = hfVar;
    }
}
