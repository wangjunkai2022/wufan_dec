package com.join.kotlin.ui.modleregin;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.z8;
import com.join.kotlin.ui.modleregin.adapter.GamelistAdapter;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.kotlin.ui.modleregin.viewModle.BtReginModle;
import com.join.kotlin.ui.modleregin.viewModle.GameListViewModle;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GameListFragment.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J&\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016R\u001d\u0010\u000f\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u00108F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\f\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0019\u001a\u00020\u00158F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\f\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u001b\u001a\u00020\u001a8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/modleregin/GameListFragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "viewModelMain$delegate", "Lkotlin/Lazy;", "getViewModelMain", "()Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "viewModelMain", "Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;", "adapter$delegate", "getAdapter", "()Lcom/join/kotlin/ui/modleregin/adapter/GamelistAdapter;", "adapter", "Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;", "viewModle$delegate", "getViewModle", "()Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;", "viewModle", "Lcom/join/android/app/mgsim/wufun/databinding/z8;", "dataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/z8;", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/z8;", "setDataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/z8;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class GameListFragment extends Fragment {
    @NotNull
    private final Lazy adapter$delegate;
    public z8 dataBinding;
    @NotNull
    private final Lazy viewModelMain$delegate;
    @NotNull
    private final Lazy viewModle$delegate;

    public GameListFragment() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<GameListViewModle>() { // from class: com.join.kotlin.ui.modleregin.GameListFragment$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GameListViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(GameListFragment.this, new ViewModelProvider.NewInstanceFactory()).get(GameListViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …istViewModle::class.java)");
                return (GameListViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<BtReginModle>() { // from class: com.join.kotlin.ui.modleregin.GameListFragment$viewModelMain$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BtReginModle invoke() {
                FragmentActivity activity = GameListFragment.this.getActivity();
                Intrinsics.checkNotNull(activity);
                ViewModel viewModel = new ViewModelProvider(activity, new ViewModelProvider.NewInstanceFactory()).get(BtReginModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …BtReginModle::class.java)");
                return (BtReginModle) viewModel;
            }
        });
        this.viewModelMain$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<GamelistAdapter>() { // from class: com.join.kotlin.ui.modleregin.GameListFragment$adapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GamelistAdapter invoke() {
                Context context = GameListFragment.this.getContext();
                Intrinsics.checkNotNull(context);
                Intrinsics.checkNotNullExpressionValue(context, "context!!");
                return new GamelistAdapter(context);
            }
        });
        this.adapter$delegate = lazy3;
    }

    @NotNull
    public final GamelistAdapter getAdapter() {
        return (GamelistAdapter) this.adapter$delegate.getValue();
    }

    @NotNull
    public final z8 getDataBinding() {
        z8 z8Var = this.dataBinding;
        if (z8Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return z8Var;
    }

    @NotNull
    public final BtReginModle getViewModelMain() {
        return (BtReginModle) this.viewModelMain$delegate.getValue();
    }

    @NotNull
    public final GameListViewModle getViewModle() {
        return (GameListViewModle) this.viewModle$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        ViewDataBinding inflate = DataBindingUtil.inflate(inflater, R.layout.datab_gamelist_layout, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "DataBindingUtil.inflate(…          false\n        )");
        this.dataBinding = (z8) inflate;
        Bundle arguments = getArguments();
        Intrinsics.checkNotNull(arguments);
        long j4 = arguments.getLong("time");
        List<BtOnlineGame> listBtOnlineGame = getViewModelMain().getListBtOnlineGame();
        if (!(listBtOnlineGame == null || listBtOnlineGame.isEmpty())) {
            getViewModle().showGameList(getViewModelMain().getListBtOnlineGame(), j4);
            getAdapter().notifyDataSetChanged();
        }
        z8 z8Var = this.dataBinding;
        if (z8Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        z8Var.E.setLoadingMoreEnabled(false);
        z8 z8Var2 = this.dataBinding;
        if (z8Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        z8Var2.setVariable(27, getViewModle());
        z8 z8Var3 = this.dataBinding;
        if (z8Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        z8Var3.setVariable(1, getAdapter());
        z8 z8Var4 = this.dataBinding;
        if (z8Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dataBinding");
        }
        return z8Var4.getRoot();
    }

    public final void setDataBinding(@NotNull z8 z8Var) {
        Intrinsics.checkNotNullParameter(z8Var, "<set-?>");
        this.dataBinding = z8Var;
    }
}
