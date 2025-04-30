package com.join.kotlin.ui.cloudarchive;

import android.os.Bundle;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.BaseAppCompatActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.k2;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.ui.cloudarchive.VASingleGameViewModle;
import com.join.mgps.Util.UtilsMy;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: VASingleGameIndexActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\b\u0010\u0007\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0005H\u0016R\u001d\u0010\u000e\u001a\u00020\t8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001d\u0010\u0013\u001a\u00020\u000f8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameIndexActivity;", "Lcom/BaseAppCompatActivity;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "onClickReload", "onClickSetNetWork", "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;", "viewModle$delegate", "Lkotlin/Lazy;", "getViewModle", "()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;", "viewModle", "Lcom/join/android/app/mgsim/wufun/databinding/k2;", "dataBinding$delegate", "getDataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/k2;", "dataBinding", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class VASingleGameIndexActivity extends BaseAppCompatActivity implements LoadBindClickProxy {
    @NotNull
    private final Lazy dataBinding$delegate;
    @NotNull
    private final Lazy viewModle$delegate;

    public VASingleGameIndexActivity() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<k2>() { // from class: com.join.kotlin.ui.cloudarchive.VASingleGameIndexActivity$dataBinding$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final k2 invoke() {
                return (k2) DataBindingUtil.setContentView(VASingleGameIndexActivity.this, R.layout.activity_vasingle_game_index);
            }
        });
        this.dataBinding$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<VASingleGameViewModle>() { // from class: com.join.kotlin.ui.cloudarchive.VASingleGameIndexActivity$viewModle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VASingleGameViewModle invoke() {
                ViewModel viewModel = new ViewModelProvider(VASingleGameIndexActivity.this, new ViewModelProvider.NewInstanceFactory()).get(VASingleGameViewModle.class);
                Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …ameViewModle::class.java)");
                return (VASingleGameViewModle) viewModel;
            }
        });
        this.viewModle$delegate = lazy2;
    }

    @NotNull
    public final k2 getDataBinding() {
        return (k2) this.dataBinding$delegate.getValue();
    }

    @NotNull
    public final VASingleGameViewModle getViewModle() {
        return (VASingleGameViewModle) this.viewModle$delegate.getValue();
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        getViewModle().loadDatas(this);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        getViewModle().setListener(new VASingleGameViewModle.Listener() { // from class: com.join.kotlin.ui.cloudarchive.VASingleGameIndexActivity$onCreate$1
            @Override // com.join.kotlin.ui.cloudarchive.VASingleGameViewModle.Listener
            public void onCLickBack() {
                VASingleGameIndexActivity.this.finish();
            }
        });
        getDataBinding().setLifecycleOwner(this);
        getDataBinding().setVariable(27, getViewModle());
        getDataBinding().setVariable(19, this);
        String stringExtra = getIntent().getStringExtra("gameId");
        if (stringExtra != null) {
            getViewModle().initDatas(stringExtra);
        }
        getViewModle().loadDatas(this);
        getViewModle().getShowStatus().observe(this, new Observer<Integer>() { // from class: com.join.kotlin.ui.cloudarchive.VASingleGameIndexActivity$onCreate$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Integer num) {
                if (num != null && num.intValue() == 1) {
                    return;
                }
                if ((num != null && num.intValue() == 2) || num == null) {
                    return;
                }
                num.intValue();
            }
        });
    }
}
