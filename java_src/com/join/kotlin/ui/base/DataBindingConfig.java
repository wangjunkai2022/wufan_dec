package com.join.kotlin.ui.base;

import android.util.SparseArray;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DataBindingConfig.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0007\u001a\u0004\b\u000b\u0010\tR(\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0014\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/ui/base/DataBindingConfig;", "", "", "variableId", "any", "addBindingParam", "layout", "I", "getLayout", "()I", "vmVariableId", "getVmVariableId", "Landroid/util/SparseArray;", "bindingParms", "Landroid/util/SparseArray;", "getBindingParms", "()Landroid/util/SparseArray;", "setBindingParms", "(Landroid/util/SparseArray;)V", "Landroidx/lifecycle/ViewModel;", "stateViewModle", "Landroidx/lifecycle/ViewModel;", "getStateViewModle", "()Landroidx/lifecycle/ViewModel;", "<init>", "(IILandroidx/lifecycle/ViewModel;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class DataBindingConfig {
    @NotNull
    private SparseArray<Object> bindingParms;
    private final int layout;
    @NotNull
    private final ViewModel stateViewModle;
    private final int vmVariableId;

    public DataBindingConfig(int i2, int i4, @NotNull ViewModel stateViewModle) {
        Intrinsics.checkNotNullParameter(stateViewModle, "stateViewModle");
        this.layout = i2;
        this.vmVariableId = i4;
        this.stateViewModle = stateViewModle;
        this.bindingParms = new SparseArray<>();
    }

    @NotNull
    public final DataBindingConfig addBindingParam(int i2, @NotNull Object any) {
        Intrinsics.checkNotNullParameter(any, "any");
        if (this.bindingParms.get(i2) == null) {
            this.bindingParms.put(i2, any);
        }
        return this;
    }

    @NotNull
    public final SparseArray<Object> getBindingParms() {
        return this.bindingParms;
    }

    public final int getLayout() {
        return this.layout;
    }

    @NotNull
    public final ViewModel getStateViewModle() {
        return this.stateViewModle;
    }

    public final int getVmVariableId() {
        return this.vmVariableId;
    }

    public final void setBindingParms(@NotNull SparseArray<Object> sparseArray) {
        Intrinsics.checkNotNullParameter(sparseArray, "<set-?>");
        this.bindingParms = sparseArray;
    }
}
