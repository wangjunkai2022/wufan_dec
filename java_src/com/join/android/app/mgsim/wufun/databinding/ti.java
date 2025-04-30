package com.join.android.app.mgsim.wufun.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.bindingadapter.ViewbindingRecycleviewAdapterKt;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.cloudarchive.ModGameCloudViewModle;
import com.psk.kotlin.util.CommonListMainData;
import java.util.List;
/* compiled from: GameDetailModCloudListLayoutDatabindingBindingImpl.java */
/* loaded from: classes3.dex */
public class ti extends si {
    @Nullable

    /* renamed from: o0  reason: collision with root package name */
    private static final ViewDataBinding.IncludedLayouts f25237o0;
    @Nullable

    /* renamed from: p0  reason: collision with root package name */
    private static final SparseIntArray f25238p0;
    @NonNull
    private final RelativeLayout J;
    @NonNull
    private final NestedScrollView K;

    /* renamed from: n0  reason: collision with root package name */
    private long f25239n0;

    static {
        ViewDataBinding.IncludedLayouts includedLayouts = new ViewDataBinding.IncludedLayouts(4);
        f25237o0 = includedLayouts;
        includedLayouts.setIncludes(1, new String[]{"bindding_load_layout_include"}, new int[]{3}, new int[]{R.layout.bindding_load_layout_include});
        f25238p0 = null;
    }

    public ti(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.T(dataBindingComponent, view, 4, f25237o0, f25238p0));
    }

    private boolean l1(w3 w3Var, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f25239n0 |= 1;
            }
            return true;
        }
        return false;
    }

    private boolean m1(MutableLiveData<List<CommonListMainData>> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f25239n0 |= 4;
            }
            return true;
        }
        return false;
    }

    private boolean n1(MutableLiveData<LoadBindindData> mutableLiveData, int i2) {
        if (i2 == 0) {
            synchronized (this) {
                this.f25239n0 |= 2;
            }
            return true;
        }
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean W(int i2, Object obj, int i4) {
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return false;
                }
                return m1((MutableLiveData) obj, i4);
            }
            return n1((MutableLiveData) obj, i4);
        }
        return l1((w3) obj, i4);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.f25239n0 != 0) {
                return true;
            }
            return this.E.hasPendingBindings();
        }
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.si
    public void i1(@Nullable RecyclerView.Adapter adapter) {
        this.H = adapter;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f25239n0 = 64L;
        }
        this.E.invalidateAll();
        n0();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.si
    public void j1(@Nullable LoadBindClickProxy loadBindClickProxy) {
        this.I = loadBindClickProxy;
        synchronized (this) {
            this.f25239n0 |= 16;
        }
        notifyPropertyChanged(19);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void k() {
        long j4;
        List<CommonListMainData> list;
        LoadBindindData loadBindindData;
        int i2;
        LoadBindindData loadBindindData2;
        synchronized (this) {
            j4 = this.f25239n0;
            this.f25239n0 = 0L;
        }
        ModGameCloudViewModle modGameCloudViewModle = this.G;
        LoadBindClickProxy loadBindClickProxy = this.I;
        if ((78 & j4) != 0) {
            long j5 = j4 & 74;
            if (j5 != 0) {
                MutableLiveData<LoadBindindData> loadBindData = modGameCloudViewModle != null ? modGameCloudViewModle.getLoadBindData() : null;
                U0(1, loadBindData);
                loadBindindData2 = loadBindData != null ? loadBindData.getValue() : null;
                boolean z3 = (loadBindindData2 != null ? loadBindindData2.getShowStatus() : 0) == 1;
                if (j5 != 0) {
                    j4 |= z3 ? 256L : 128L;
                }
                i2 = z3 ? 0 : 8;
            } else {
                i2 = 0;
                loadBindindData2 = null;
            }
            if ((j4 & 76) != 0) {
                MutableLiveData<List<CommonListMainData>> listArchive = modGameCloudViewModle != null ? modGameCloudViewModle.getListArchive() : null;
                U0(2, listArchive);
                if (listArchive != null) {
                    list = listArchive.getValue();
                    loadBindindData = loadBindindData2;
                }
            }
            loadBindindData = loadBindindData2;
            list = null;
        } else {
            list = null;
            loadBindindData = null;
            i2 = 0;
        }
        long j6 = 80 & j4;
        if ((74 & j4) != 0) {
            this.E.h1(loadBindindData);
            this.F.setVisibility(i2);
        }
        if (j6 != 0) {
            this.E.i1(loadBindClickProxy);
        }
        if ((j4 & 76) != 0) {
            ViewbindingRecycleviewAdapterKt.recycleviewdataBinding(this.F, list);
        }
        ViewDataBinding.n(this.E);
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.si
    public void k1(@Nullable ModGameCloudViewModle modGameCloudViewModle) {
        this.G = modGameCloudViewModle;
        synchronized (this) {
            this.f25239n0 |= 8;
        }
        notifyPropertyChanged(27);
        super.n0();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.E.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i2, @Nullable Object obj) {
        if (27 == i2) {
            k1((ModGameCloudViewModle) obj);
            return true;
        } else if (19 == i2) {
            j1((LoadBindClickProxy) obj);
            return true;
        } else if (1 == i2) {
            i1((RecyclerView.Adapter) obj);
            return true;
        } else {
            return false;
        }
    }

    private ti(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (w3) objArr[3], (XRecyclerView) objArr[2]);
        this.f25239n0 = -1L;
        z0(this.E);
        RelativeLayout relativeLayout = (RelativeLayout) objArr[0];
        this.J = relativeLayout;
        relativeLayout.setTag(null);
        NestedScrollView nestedScrollView = (NestedScrollView) objArr[1];
        this.K = nestedScrollView;
        nestedScrollView.setTag(null);
        this.F.setTag(null);
        A0(view);
        invalidateAll();
    }
}
