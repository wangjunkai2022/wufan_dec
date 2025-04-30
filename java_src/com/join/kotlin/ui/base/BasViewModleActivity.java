package com.join.kotlin.ui.base;

import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.BaseAppCompatActivity;
import com.MApplication;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BasViewModleActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0011\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b!\u0010\"J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0004J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\b\u0010\b\u001a\u00020\u0006H&J\b\u0010\n\u001a\u00020\tH&J'\u0010\u000f\u001a\u00028\u0000\"\b\b\u0000\u0010\f*\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0011\u001a\u00028\u0000\"\b\b\u0000\u0010\f*\u00020\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0014¢\u0006\u0004\b\u0011\u0010\u0010R\u001d\u0010\u0017\u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001d\u0010 \u001a\u00020\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0014\u001a\u0004\b\u001f\u0010\u0016¨\u0006#"}, d2 = {"Lcom/join/kotlin/ui/base/BasViewModleActivity;", "Lcom/BaseAppCompatActivity;", "Landroidx/databinding/ViewDataBinding;", "getViewBinding", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "initViewModel", "Lcom/join/kotlin/ui/base/DataBindingConfig;", "getDataBindingConfig", "Landroidx/lifecycle/ViewModel;", "T", "Ljava/lang/Class;", "modelClass", "getActivityScopeViewModel", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "getApplicationScopeViewModel", "Landroidx/lifecycle/ViewModelProvider;", "mActivityProvider$delegate", "Lkotlin/Lazy;", "getMActivityProvider", "()Landroidx/lifecycle/ViewModelProvider;", "mActivityProvider", "dataBindingx", "Landroidx/databinding/ViewDataBinding;", "getDataBindingx", "()Landroidx/databinding/ViewDataBinding;", "setDataBindingx", "(Landroidx/databinding/ViewDataBinding;)V", "mApplicationProvider$delegate", "getMApplicationProvider", "mApplicationProvider", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public abstract class BasViewModleActivity extends BaseAppCompatActivity {
    @Nullable
    private ViewDataBinding dataBindingx;
    private final Lazy mActivityProvider$delegate;
    private final Lazy mApplicationProvider$delegate;

    public BasViewModleActivity() {
        Lazy lazy;
        Lazy lazy2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<ViewModelProvider>() { // from class: com.join.kotlin.ui.base.BasViewModleActivity$mActivityProvider$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelProvider invoke() {
                return new ViewModelProvider(BasViewModleActivity.this, new ViewModelProvider.NewInstanceFactory());
            }
        });
        this.mActivityProvider$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ViewModelProvider>() { // from class: com.join.kotlin.ui.base.BasViewModleActivity$mApplicationProvider$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ViewModelProvider invoke() {
                Context applicationContext = BasViewModleActivity.this.getApplicationContext();
                Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.MApplication");
                return new ViewModelProvider((MApplication) applicationContext, ViewModelProvider.AndroidViewModelFactory.getInstance(BasViewModleActivity.this.getApplication()));
            }
        });
        this.mApplicationProvider$delegate = lazy2;
    }

    private final ViewModelProvider getMActivityProvider() {
        return (ViewModelProvider) this.mActivityProvider$delegate.getValue();
    }

    private final ViewModelProvider getMApplicationProvider() {
        return (ViewModelProvider) this.mApplicationProvider$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public <T extends ViewModel> T getActivityScopeViewModel(@NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        T t3 = (T) getMActivityProvider().get(modelClass);
        Intrinsics.checkNotNullExpressionValue(t3, "mActivityProvider.get(modelClass)");
        return t3;
    }

    @NotNull
    protected <T extends ViewModel> T getApplicationScopeViewModel(@NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        T t3 = (T) getMApplicationProvider().get(modelClass);
        Intrinsics.checkNotNullExpressionValue(t3, "mApplicationProvider.get(modelClass)");
        return t3;
    }

    @NotNull
    public abstract DataBindingConfig getDataBindingConfig();

    @Nullable
    public final ViewDataBinding getDataBindingx() {
        return this.dataBindingx;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final ViewDataBinding getViewBinding() {
        return this.dataBindingx;
    }

    public abstract void initViewModel();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        initViewModel();
        DataBindingConfig dataBindingConfig = getDataBindingConfig();
        ViewDataBinding dataBinding = DataBindingUtil.setContentView(this, dataBindingConfig.getLayout());
        this.dataBindingx = dataBinding;
        Intrinsics.checkNotNullExpressionValue(dataBinding, "dataBinding");
        dataBinding.setLifecycleOwner(this);
        dataBinding.setVariable(dataBindingConfig.getVmVariableId(), dataBindingConfig.getStateViewModle());
        SparseArray<Object> bindingParms = dataBindingConfig.getBindingParms();
        if (bindingParms == null || bindingParms.size() <= 0) {
            return;
        }
        int i2 = 0;
        int size = bindingParms.size();
        if (size < 0) {
            return;
        }
        while (true) {
            dataBinding.setVariable(bindingParms.keyAt(i2), bindingParms.valueAt(i2));
            if (i2 == size) {
                return;
            }
            i2++;
        }
    }

    public final void setDataBindingx(@Nullable ViewDataBinding viewDataBinding) {
        this.dataBindingx = viewDataBinding;
    }
}
