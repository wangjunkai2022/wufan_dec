package com.join.kotlin.ui.coupon;

import android.os.Bundle;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.join.android.app.common.utils.f;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.p;
import com.join.kotlin.domain.common.LoadBindClickProxy;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.i2;
import com.join.mgps.dialog.b;
import com.join.mgps.dto.BTGameCouponBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CouponListActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b/\u00100J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u0010\u001a\u00020\u0006H\u0016J\b\u0010\u0011\u001a\u00020\u0006H\u0016R\"\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR2\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u000b0 j\b\u0012\u0004\u0012\u00020\u000b`!8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010)\u001a\u00020(8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00061"}, d2 = {"Lcom/join/kotlin/ui/coupon/CouponListActivity;", "Lcom/BaseAppCompatActivity;", "Lcom/join/kotlin/ui/coupon/ClickProxy;", "Lcom/join/kotlin/domain/common/LoadBindClickProxy;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "", "page", "loadData", "Lcom/join/mgps/dto/BTGameCouponBean;", "data", "onClickGet", "onClickBack", "onClickMore", "onClickReload", "onClickSetNetWork", "Lcom/join/android/app/mgsim/wufun/databinding/p;", "viewdataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/p;", "getViewdataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/p;", "setViewdataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/p;)V", "Lcom/join/kotlin/ui/coupon/CouponViewModle;", "couponViewModle", "Lcom/join/kotlin/ui/coupon/CouponViewModle;", "getCouponViewModle", "()Lcom/join/kotlin/ui/coupon/CouponViewModle;", "setCouponViewModle", "(Lcom/join/kotlin/ui/coupon/CouponViewModle;)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "datas", "Ljava/util/ArrayList;", "getDatas", "()Ljava/util/ArrayList;", "setDatas", "(Ljava/util/ArrayList;)V", "", "gameId", "Ljava/lang/String;", "getGameId", "()Ljava/lang/String;", "setGameId", "(Ljava/lang/String;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CouponListActivity extends BaseAppCompatActivity implements ClickProxy, LoadBindClickProxy {
    public CouponViewModle couponViewModle;
    public ArrayList<BTGameCouponBean> datas;
    @NotNull
    private String gameId = "";
    public p viewdataBinding;

    @NotNull
    public final CouponViewModle getCouponViewModle() {
        CouponViewModle couponViewModle = this.couponViewModle;
        if (couponViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
        }
        return couponViewModle;
    }

    @NotNull
    public final ArrayList<BTGameCouponBean> getDatas() {
        ArrayList<BTGameCouponBean> arrayList = this.datas;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datas");
        }
        return arrayList;
    }

    @NotNull
    public final String getGameId() {
        return this.gameId;
    }

    @NotNull
    public final p getViewdataBinding() {
        p pVar = this.viewdataBinding;
        if (pVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        return pVar;
    }

    public final void loadData(int i2) {
        if (i2 == 1) {
            CouponViewModle couponViewModle = this.couponViewModle;
            if (couponViewModle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
            }
            couponViewModle.getLoadDataBinding().setValue(new LoadBindindData(2));
        }
        RequestModel<CouponRequest> requestModel = new RequestModel<>();
        requestModel.setDefault(this);
        CouponRequest couponRequest = new CouponRequest();
        couponRequest.gameId = getIntent().getStringExtra("gameId");
        AccountUtil_ instance_ = AccountUtil_.getInstance_(this);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(this)");
        couponRequest.uid = instance_.getUid();
        requestModel.setArgs(couponRequest);
        if (f.j(this)) {
            CouponViewModle couponViewModle2 = this.couponViewModle;
            if (couponViewModle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
            }
            couponViewModle2.getRequest().requestCouponListData(requestModel);
            return;
        }
        CouponViewModle couponViewModle3 = this.couponViewModle;
        if (couponViewModle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
        }
        couponViewModle3.updateShowLoadUI(false);
    }

    @Override // com.join.kotlin.ui.coupon.ClickProxy
    public void onClickBack() {
        finish();
    }

    @Override // com.join.kotlin.ui.coupon.ClickProxy
    public void onClickGet(@NotNull BTGameCouponBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        new b(this, R.style.MyDialog).e(8).k("提示").g("请激活游戏，在游戏内领取").j("知道了").i(new b.c() { // from class: com.join.kotlin.ui.coupon.CouponListActivity$onClickGet$1
            @Override // com.join.mgps.dialog.b.c
            public void ClickCancleButn(@Nullable b bVar) {
            }

            @Override // com.join.mgps.dialog.b.c
            public void ClickOKButn(@Nullable b bVar) {
                if (bVar != null) {
                    bVar.dismiss();
                }
            }
        }).show();
    }

    @Override // com.join.kotlin.ui.coupon.ClickProxy
    public void onClickMore(@NotNull BTGameCouponBean data) {
        Intrinsics.checkNotNullParameter(data, "data");
        data.setShowDetial(!data.isShowDetial());
        p pVar = this.viewdataBinding;
        if (pVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        RecyclerView recyclerView = pVar.F;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "viewdataBinding.recycleView");
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickReload() {
        loadData(1);
    }

    @Override // com.join.kotlin.domain.common.LoadBindClickProxy
    public void onClickSetNetWork() {
        UtilsMy.I2(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, R.layout.activity_couponlist_activity);
        Intrinsics.checkNotNullExpressionValue(contentView, "DataBindingUtil.setConte…onlist_activity\n        )");
        this.viewdataBinding = (p) contentView;
        ViewModel viewModel = new ViewModelProvider(this, new ViewModelProvider.NewInstanceFactory()).get(CouponViewModle.class);
        Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(\n     …ponViewModle::class.java)");
        this.couponViewModle = (CouponViewModle) viewModel;
        p pVar = this.viewdataBinding;
        if (pVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        CouponViewModle couponViewModle = this.couponViewModle;
        if (couponViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
        }
        pVar.setVariable(29, couponViewModle);
        p pVar2 = this.viewdataBinding;
        if (pVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        pVar2.setVariable(7, this);
        p pVar3 = this.viewdataBinding;
        if (pVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        pVar3.setVariable(1, new CouponAdapterv2(this, this));
        p pVar4 = this.viewdataBinding;
        if (pVar4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        if (pVar4 != null) {
            pVar4.setVariable(19, this);
        }
        p pVar5 = this.viewdataBinding;
        if (pVar5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        pVar5.setLifecycleOwner(this);
        String stringExtra = getIntent().getStringExtra("gameId");
        if (stringExtra == null) {
            stringExtra = "";
        }
        this.gameId = stringExtra;
        CouponViewModle couponViewModle2 = this.couponViewModle;
        if (couponViewModle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
        }
        couponViewModle2.getDatas().observe(this, new Observer<ArrayList<BTGameCouponBean>>() { // from class: com.join.kotlin.ui.coupon.CouponListActivity$onCreate$1
            @Override // androidx.lifecycle.Observer
            public final void onChanged(ArrayList<BTGameCouponBean> arrayList) {
                RecyclerView recyclerView = CouponListActivity.this.getViewdataBinding().F;
                Intrinsics.checkNotNullExpressionValue(recyclerView, "viewdataBinding.recycleView");
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        });
        this.datas = new ArrayList<>();
        CouponViewModle couponViewModle3 = this.couponViewModle;
        if (couponViewModle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
        }
        MutableLiveData<ArrayList<BTGameCouponBean>> datas = couponViewModle3.getDatas();
        ArrayList<BTGameCouponBean> arrayList = this.datas;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("datas");
        }
        datas.setValue(arrayList);
        CouponViewModle couponViewModle4 = this.couponViewModle;
        if (couponViewModle4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
        }
        couponViewModle4.getRequest().getResultData().observe(this, new Observer<ResponseModel<Object>>() { // from class: com.join.kotlin.ui.coupon.CouponListActivity$onCreate$2
            @Override // androidx.lifecycle.Observer
            public final void onChanged(ResponseModel<Object> responseModel) {
                if (responseModel != null && responseModel.getCode() == 200) {
                    Object data = responseModel.getData();
                    Objects.requireNonNull(data, "null cannot be cast to non-null type com.join.kotlin.ui.coupon.CouponRequest");
                    CouponRequest couponRequest = (CouponRequest) data;
                    ArrayList<BTGameCouponBean> datas2 = CouponListActivity.this.getDatas();
                    ArrayList<BTGameCouponBean> arrayList2 = new ArrayList();
                    for (T t3 : datas2) {
                        if (Intrinsics.areEqual(((BTGameCouponBean) t3).getCoupon_id(), couponRequest.couponId)) {
                            arrayList2.add(t3);
                        }
                    }
                    for (BTGameCouponBean bTGameCouponBean : arrayList2) {
                        bTGameCouponBean.setReceivable(false);
                    }
                    RecyclerView recyclerView = CouponListActivity.this.getViewdataBinding().F;
                    Intrinsics.checkNotNullExpressionValue(recyclerView, "viewdataBinding.recycleView");
                    RecyclerView.Adapter adapter = recyclerView.getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                i2.a(CouponListActivity.this).b(responseModel != null ? responseModel.getMessage() : null);
            }
        });
        CouponViewModle couponViewModle5 = this.couponViewModle;
        if (couponViewModle5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("couponViewModle");
        }
        couponViewModle5.getRequest().getResultCouponListData().observe(this, new Observer<ResponseModel<CouponListMainData>>() { // from class: com.join.kotlin.ui.coupon.CouponListActivity$onCreate$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(ResponseModel<CouponListMainData> responseModel) {
                if (responseModel != null && responseModel.getCode() == 200) {
                    ArrayList<BTGameCouponBean> value = CouponListActivity.this.getCouponViewModle().getDatas().getValue();
                    if (value != null) {
                        CouponListMainData data = responseModel.getData();
                        Intrinsics.checkNotNullExpressionValue(data, "it.data");
                        value.addAll(data.getGame_coupon_for_bt_game());
                    }
                    RecyclerView recyclerView = CouponListActivity.this.getViewdataBinding().F;
                    Intrinsics.checkNotNullExpressionValue(recyclerView, "viewdataBinding.recycleView");
                    RecyclerView.Adapter adapter = recyclerView.getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                } else {
                    i2.a(CouponListActivity.this).b(responseModel != null ? responseModel.getMessage() : null);
                }
                CouponListActivity.this.getCouponViewModle().updateShowLoadUI(false);
            }
        });
        loadData(1);
    }

    public final void setCouponViewModle(@NotNull CouponViewModle couponViewModle) {
        Intrinsics.checkNotNullParameter(couponViewModle, "<set-?>");
        this.couponViewModle = couponViewModle;
    }

    public final void setDatas(@NotNull ArrayList<BTGameCouponBean> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.datas = arrayList;
    }

    public final void setGameId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.gameId = str;
    }

    public final void setViewdataBinding(@NotNull p pVar) {
        Intrinsics.checkNotNullParameter(pVar, "<set-?>");
        this.viewdataBinding = pVar;
    }
}
