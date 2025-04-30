package com.join.kotlin.ui.userrecom;

import android.os.Bundle;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.j;
import com.join.android.app.mgsim.wufun.R;
import com.join.android.app.mgsim.wufun.databinding.i2;
import com.join.kotlin.domain.adapter.BaseDataBindingAdapter;
import com.join.kotlin.ui.base.BaseHasDownloadActivity;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.event.l;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.p;
import com.psk.kotlin.util.CommonListMainData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UserRecomendActivity.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b3\u00104J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0014J\u0006\u0010\u0007\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0005J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0016J\u0006\u0010\f\u001a\u00020\u0005J\u0012\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010\u001f\u001a\u00020\u001e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\"\u0010&\u001a\u00020%8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010-\u001a\u00020,8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u00065"}, d2 = {"Lcom/join/kotlin/ui/userrecom/UserRecomendActivity;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivity;", "Landroid/view/View$OnClickListener;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "updataList", "loadDatas", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "onDownloadStatusEventReceved", "updateProgressPartly", "Landroid/view/View;", "v", "onClick", "Lcom/join/kotlin/ui/userrecom/RecomViewModle;", "viewModle", "Lcom/join/kotlin/ui/userrecom/RecomViewModle;", "getViewModle", "()Lcom/join/kotlin/ui/userrecom/RecomViewModle;", "setViewModle", "(Lcom/join/kotlin/ui/userrecom/RecomViewModle;)V", "Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;", "adapter", "Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;", "getAdapter", "()Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;", "setAdapter", "(Lcom/join/kotlin/ui/userrecom/UserRecomendAdapter;)V", "Landroid/view/GestureDetector;", "gestureDetector", "Landroid/view/GestureDetector;", "getGestureDetector", "()Landroid/view/GestureDetector;", "setGestureDetector", "(Landroid/view/GestureDetector;)V", "Landroidx/recyclerview/widget/LinearLayoutManager;", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "Lcom/join/android/app/mgsim/wufun/databinding/i2;", "viewdataBinding", "Lcom/join/android/app/mgsim/wufun/databinding/i2;", "getViewdataBinding", "()Lcom/join/android/app/mgsim/wufun/databinding/i2;", "setViewdataBinding", "(Lcom/join/android/app/mgsim/wufun/databinding/i2;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class UserRecomendActivity extends BaseHasDownloadActivity implements View.OnClickListener {
    @Nullable
    private UserRecomendAdapter adapter;
    public GestureDetector gestureDetector;
    public LinearLayoutManager manager;
    public RecomViewModle viewModle;
    public i2 viewdataBinding;

    @Nullable
    public final UserRecomendAdapter getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final GestureDetector getGestureDetector() {
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null) {
            Intrinsics.throwUninitializedPropertyAccessException("gestureDetector");
        }
        return gestureDetector;
    }

    @NotNull
    public final LinearLayoutManager getManager() {
        LinearLayoutManager linearLayoutManager = this.manager;
        if (linearLayoutManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("manager");
        }
        return linearLayoutManager;
    }

    @NotNull
    public final RecomViewModle getViewModle() {
        RecomViewModle recomViewModle = this.viewModle;
        if (recomViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        return recomViewModle;
    }

    @NotNull
    public final i2 getViewdataBinding() {
        i2 i2Var = this.viewdataBinding;
        if (i2Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        return i2Var;
    }

    public final void loadDatas() {
        Set<String> keySet;
        RequestModel<UserRecomRequestArgs> requestModel = new RequestModel<>();
        requestModel.setDefault(this);
        UserRecomRequestArgs userRecomRequestArgs = new UserRecomRequestArgs();
        RecomViewModle recomViewModle = this.viewModle;
        if (recomViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        HashMap<String, DownloadTask> value = recomViewModle.getDownloadTasksMap().getValue();
        userRecomRequestArgs.downloadedGameIdList = (value == null || (keySet = value.keySet()) == null) ? null : CollectionsKt___CollectionsKt.toList(keySet);
        Long d4 = new PrefDef_(this).userLastStartAPP().d();
        Intrinsics.checkNotNullExpressionValue(d4, "PrefDef_(this).userLastStartAPP().get()");
        userRecomRequestArgs.duration = System.currentTimeMillis() - d4.longValue();
        AccountUtil_ instance_ = AccountUtil_.getInstance_(this);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(this)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(this).accountData");
        userRecomRequestArgs.uid = accountData.getUid();
        requestModel.setArgs(userRecomRequestArgs);
        RecomViewModle recomViewModle2 = this.viewModle;
        if (recomViewModle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        recomViewModle2.getRequest().getUserRecomDatas(requestModel);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ViewDataBinding contentView = DataBindingUtil.setContentView(this, R.layout.activity_userrecom_activity);
        Intrinsics.checkNotNullExpressionValue(contentView, "DataBindingUtil.setConte…ivity_userrecom_activity)");
        this.viewdataBinding = (i2) contentView;
        ViewModel viewModel = new ViewModelProvider(this, new ViewModelProvider.NewInstanceFactory()).get(RecomViewModle.class);
        Intrinsics.checkNotNullExpressionValue(viewModel, "ViewModelProvider(this, …comViewModle::class.java)");
        this.viewModle = (RecomViewModle) viewModel;
        i2 i2Var = this.viewdataBinding;
        if (i2Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        i2Var.G.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.kotlin.ui.userrecom.UserRecomendActivity$onCreate$1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return UserRecomendActivity.this.getGestureDetector().onTouchEvent(motionEvent);
            }
        });
        final int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.wdp30);
        this.gestureDetector = new GestureDetector(this, new GestureDetector.SimpleOnGestureListener() { // from class: com.join.kotlin.ui.userrecom.UserRecomendActivity$onCreate$2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(@Nullable MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(@Nullable MotionEvent motionEvent, @Nullable MotionEvent motionEvent2, float f4, float f5) {
                Intrinsics.checkNotNull(motionEvent);
                float x3 = motionEvent.getX();
                Intrinsics.checkNotNull(motionEvent2);
                if (x3 - motionEvent2.getX() <= dimensionPixelOffset && motionEvent2.getX() - motionEvent.getX() <= dimensionPixelOffset && motionEvent.getY() - motionEvent2.getY() <= dimensionPixelOffset) {
                    return motionEvent2.getY() - motionEvent.getY() > ((float) dimensionPixelOffset);
                }
                UserRecomendActivity.this.finish();
                return true;
            }
        });
        long longExtra = getIntent().getLongExtra("range", 1L);
        RecomViewModle recomViewModle = this.viewModle;
        if (recomViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        MutableLiveData<String> titleMessage = recomViewModle.getTitleMessage();
        titleMessage.setValue(longExtra + "天不见，为你推荐以下游戏");
        this.adapter = new UserRecomendAdapter(this);
        RecomViewModle recomViewModle2 = this.viewModle;
        if (recomViewModle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        recomViewModle2.getShowDataList().setValue(new ArrayList<>());
        i2 i2Var2 = this.viewdataBinding;
        if (i2Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        RecomViewModle recomViewModle3 = this.viewModle;
        if (recomViewModle3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        i2Var2.setVariable(29, recomViewModle3);
        i2 i2Var3 = this.viewdataBinding;
        if (i2Var3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        i2Var3.setVariable(1, this.adapter);
        i2 i2Var4 = this.viewdataBinding;
        if (i2Var4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        i2Var4.setVariable(7, this);
        RecomViewModle recomViewModle4 = this.viewModle;
        if (recomViewModle4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        recomViewModle4.getShowDataList().observe(this, new Observer<ArrayList<CommonListMainData>>() { // from class: com.join.kotlin.ui.userrecom.UserRecomendActivity$onCreate$3
            @Override // androidx.lifecycle.Observer
            public final void onChanged(ArrayList<CommonListMainData> arrayList) {
                UserRecomendAdapter adapter = UserRecomendActivity.this.getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        });
        i2 i2Var5 = this.viewdataBinding;
        if (i2Var5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        RecyclerView recyclerView = i2Var5.E;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "viewdataBinding.recycleView");
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        this.manager = (LinearLayoutManager) layoutManager;
        RecomViewModle recomViewModle5 = this.viewModle;
        if (recomViewModle5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        recomViewModle5.getRequest().getResultData().observe(this, new Observer<ResponseModel<List<? extends CollectionBeanSub>>>() { // from class: com.join.kotlin.ui.userrecom.UserRecomendActivity$onCreate$4
            @Override // androidx.lifecycle.Observer
            public /* bridge */ /* synthetic */ void onChanged(ResponseModel<List<? extends CollectionBeanSub>> responseModel) {
                onChanged2((ResponseModel<List<CollectionBeanSub>>) responseModel);
            }

            /* renamed from: onChanged  reason: avoid collision after fix types in other method */
            public final void onChanged2(ResponseModel<List<CollectionBeanSub>> responseModel) {
                if (responseModel == null || responseModel.getCode() != 200) {
                    return;
                }
                List<CollectionBeanSub> data = responseModel.getData();
                Intrinsics.checkNotNullExpressionValue(data, "it.data");
                for (CollectionBeanSub collectionBeanSub : data) {
                    CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                    UserRecomendActivity.this.getViewModle().updateDowState(collectionBeanSubBusiness);
                    ArrayList<CommonListMainData> value = UserRecomendActivity.this.getViewModle().getShowDataList().getValue();
                    Intrinsics.checkNotNull(value);
                    value.add(new CommonListMainData(2, collectionBeanSubBusiness, null, null, 12, null));
                }
                UserRecomendAdapter adapter = UserRecomendActivity.this.getAdapter();
                if (adapter != null) {
                    adapter.notifyDataSetChanged();
                }
            }
        });
        UserRecomendAdapter userRecomendAdapter = this.adapter;
        if (userRecomendAdapter != null) {
            userRecomendAdapter.setOnItemClickListener(new BaseDataBindingAdapter.OnItemClickListener<CommonListMainData>() { // from class: com.join.kotlin.ui.userrecom.UserRecomendActivity$onCreate$5
                @Override // com.join.kotlin.domain.adapter.BaseDataBindingAdapter.OnItemClickListener
                public void onItemClick(int i2, @NotNull CommonListMainData item, int i4) {
                    Intrinsics.checkNotNullParameter(item, "item");
                    IntentUtil intentUtil = IntentUtil.getInstance();
                    UserRecomendActivity userRecomendActivity = UserRecomendActivity.this;
                    Object any = item.getAny();
                    Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
                    intentUtil.intentActivity(userRecomendActivity, ((CollectionBeanSubBusiness) any).getIntentDataBean());
                }
            });
        }
        updataList();
        p.l(this).K1(Event.recGamesOldUser, new Ext());
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivity
    public void onDownloadStatusEventReceved(@NotNull l downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        RecomViewModle recomViewModle = this.viewModle;
        if (recomViewModle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        if (recomViewModle != null) {
            recomViewModle.onEventMainThread(downloadTaskEvent);
        }
        if (downloadTaskEvent.c() != 8) {
            UserRecomendAdapter userRecomendAdapter = this.adapter;
            if (userRecomendAdapter != null) {
                userRecomendAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        RecomViewModle recomViewModle2 = this.viewModle;
        if (recomViewModle2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModle");
        }
        Intrinsics.checkNotNull(recomViewModle2);
        HashMap<String, DownloadTask> value = recomViewModle2.getDownloadTasksMap().getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "viewModle!!.downloadTasksMap.value!!");
        if (!value.isEmpty()) {
            updateProgressPartly();
        }
    }

    public final void setAdapter(@Nullable UserRecomendAdapter userRecomendAdapter) {
        this.adapter = userRecomendAdapter;
    }

    public final void setGestureDetector(@NotNull GestureDetector gestureDetector) {
        Intrinsics.checkNotNullParameter(gestureDetector, "<set-?>");
        this.gestureDetector = gestureDetector;
    }

    public final void setManager(@NotNull LinearLayoutManager linearLayoutManager) {
        Intrinsics.checkNotNullParameter(linearLayoutManager, "<set-?>");
        this.manager = linearLayoutManager;
    }

    public final void setViewModle(@NotNull RecomViewModle recomViewModle) {
        Intrinsics.checkNotNullParameter(recomViewModle, "<set-?>");
        this.viewModle = recomViewModle;
    }

    public final void setViewdataBinding(@NotNull i2 i2Var) {
        Intrinsics.checkNotNullParameter(i2Var, "<set-?>");
        this.viewdataBinding = i2Var;
    }

    public final void updataList() {
        Serializable serializableExtra = getIntent().getSerializableExtra("listDatas");
        if (serializableExtra == null) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.wdp162);
        int k4 = ((j.n(this).k(this) - getResources().getDimensionPixelOffset(R.dimen.wdp262)) - j.t(this)) - j.v(this);
        List list = (List) serializableExtra;
        i2 i2Var = this.viewdataBinding;
        if (i2Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        RecyclerView recyclerView = i2Var.E;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "viewdataBinding.recycleView");
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        if (list.size() * dimensionPixelSize > k4) {
            layoutParams2.height = k4;
        } else {
            layoutParams2.height = dimensionPixelSize * list.size();
        }
        i2 i2Var2 = this.viewdataBinding;
        if (i2Var2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewdataBinding");
        }
        RecyclerView recyclerView2 = i2Var2.E;
        Intrinsics.checkNotNullExpressionValue(recyclerView2, "viewdataBinding.recycleView");
        recyclerView2.setLayoutParams(layoutParams2);
        for (CollectionBeanSub collectionBeanSub : (Iterable) serializableExtra) {
            CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
            collectionBeanSubBusiness.set_from(144);
            collectionBeanSubBusiness.set_from_type(144);
            collectionBeanSubBusiness.setRecPosition(String.valueOf(collectionBeanSubBusiness.getIndex()));
            RecomViewModle recomViewModle = this.viewModle;
            if (recomViewModle == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModle");
            }
            recomViewModle.updateDowState(collectionBeanSubBusiness);
            RecomViewModle recomViewModle2 = this.viewModle;
            if (recomViewModle2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModle");
            }
            ArrayList<CommonListMainData> value = recomViewModle2.getShowDataList().getValue();
            Intrinsics.checkNotNull(value);
            value.add(new CommonListMainData(2, collectionBeanSubBusiness, null, null, 12, null));
        }
        UserRecomendAdapter userRecomendAdapter = this.adapter;
        if (userRecomendAdapter != null) {
            userRecomendAdapter.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0090, code lost:
        throw new java.lang.NullPointerException("null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateProgressPartly() {
        /*
            r5 = this;
            androidx.recyclerview.widget.LinearLayoutManager r0 = r5.manager     // Catch: java.lang.Exception -> L96
            java.lang.String r1 = "manager"
            if (r0 != 0) goto L9
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)     // Catch: java.lang.Exception -> L96
        L9:
            int r0 = r0.findFirstVisibleItemPosition()     // Catch: java.lang.Exception -> L96
            androidx.recyclerview.widget.LinearLayoutManager r2 = r5.manager     // Catch: java.lang.Exception -> L96
            if (r2 != 0) goto L14
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)     // Catch: java.lang.Exception -> L96
        L14:
            int r1 = r2.findLastVisibleItemPosition()     // Catch: java.lang.Exception -> L96
            if (r0 > r1) goto L9a
        L1a:
            com.join.kotlin.ui.userrecom.RecomViewModle r2 = r5.viewModle     // Catch: java.lang.Exception -> L96
            java.lang.String r3 = "viewModle"
            if (r2 != 0) goto L23
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)     // Catch: java.lang.Exception -> L96
        L23:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L96
            androidx.lifecycle.MutableLiveData r2 = r2.getShowDataList()     // Catch: java.lang.Exception -> L96
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Exception -> L96
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L96
            java.util.ArrayList r2 = (java.util.ArrayList) r2     // Catch: java.lang.Exception -> L96
            int r2 = r2.size()     // Catch: java.lang.Exception -> L96
            if (r0 < r2) goto L3a
            return
        L3a:
            com.join.kotlin.ui.userrecom.RecomViewModle r2 = r5.viewModle     // Catch: java.lang.Exception -> L96
            if (r2 != 0) goto L41
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)     // Catch: java.lang.Exception -> L96
        L41:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L96
            androidx.lifecycle.MutableLiveData r2 = r2.getShowDataList()     // Catch: java.lang.Exception -> L96
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Exception -> L96
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L96
            java.util.ArrayList r2 = (java.util.ArrayList) r2     // Catch: java.lang.Exception -> L96
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Exception -> L96
            java.lang.String r3 = "viewModle!!.showDataList.value!![index]"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)     // Catch: java.lang.Exception -> L96
            com.psk.kotlin.util.CommonListMainData r2 = (com.psk.kotlin.util.CommonListMainData) r2     // Catch: java.lang.Exception -> L96
            int r3 = r2.getType()     // Catch: java.lang.Exception -> L96
            r4 = 2
            if (r3 != r4) goto L91
            java.lang.Object r2 = r2.getAny()     // Catch: java.lang.Exception -> L96
            if (r2 == 0) goto L89
            com.join.mgps.business.CollectionBeanSubBusiness r2 = (com.join.mgps.business.CollectionBeanSubBusiness) r2     // Catch: java.lang.Exception -> L96
            com.github.snowdream.android.app.downloader.DownloadTask r2 = r2.getDownloadTask()     // Catch: java.lang.Exception -> L96
            if (r2 == 0) goto L91
            int r3 = r2.getStatus()     // Catch: java.lang.Exception -> L96
            if (r3 == r4) goto L7f
            int r2 = r2.getStatus()     // Catch: java.lang.Exception -> L96
            r3 = 12
            if (r2 != r3) goto L91
        L7f:
            com.join.kotlin.ui.userrecom.UserRecomendAdapter r2 = r5.adapter     // Catch: java.lang.Exception -> L96
            if (r2 == 0) goto L91
            java.lang.String r3 = "progress"
            r2.notifyItemChanged(r0, r3)     // Catch: java.lang.Exception -> L96
            goto L91
        L89:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException     // Catch: java.lang.Exception -> L96
            java.lang.String r1 = "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness"
            r0.<init>(r1)     // Catch: java.lang.Exception -> L96
            throw r0     // Catch: java.lang.Exception -> L96
        L91:
            if (r0 == r1) goto L9a
            int r0 = r0 + 1
            goto L1a
        L96:
            r0 = move-exception
            r0.printStackTrace()
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.userrecom.UserRecomendActivity.updateProgressPartly():void");
    }
}
