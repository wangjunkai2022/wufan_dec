package com.join.kotlin.ui.modleregin.viewModle;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.alipay.sdk.authjs.a;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
/* compiled from: MustPlayViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b/\u00100J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\b\u0010\b\u001a\u00020\u0004H\u0016J3\u0010\u0011\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2!\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00040\u000bH\u0016R(\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u0014\u001a\u0004\b\u001b\u0010\u0016\"\u0004\b\u001c\u0010\u0018R\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R.\u0010&\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0014\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010\u0018R\"\u0010)\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00061"}, d2 = {"Lcom/join/kotlin/ui/modleregin/viewModle/MustPlayViewModle;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;", "Landroid/content/Context;", "context", "", "loadDatas", "", "pn", "updateProgressPartly", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "Lkotlin/Function1;", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "Lkotlin/ParameterName;", "name", "sub", a.f9679m, "updateDowStateList", "Landroidx/lifecycle/MutableLiveData;", "recycleViewStatus", "Landroidx/lifecycle/MutableLiveData;", "getRecycleViewStatus", "()Landroidx/lifecycle/MutableLiveData;", "setRecycleViewStatus", "(Landroidx/lifecycle/MutableLiveData;)V", "Lcom/join/kotlin/domain/common/LoadBindindData;", "loadBindData", "getLoadBindData", "setLoadBindData", "", "title", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "", "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;", "showDatas", "getShowDatas", "setShowDatas", "page", "I", "getPage", "()I", "setPage", "(I)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class MustPlayViewModle extends BaseHasDownloadActivityViewModle {
    @NotNull
    private MutableLiveData<List<MustplayItemBean>> showDatas = new MutableLiveData<>();
    private int page = 1;
    @NotNull
    private String title = "必玩大作";
    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> recycleViewStatus = new MutableLiveData<>();

    public MustPlayViewModle() {
        this.showDatas.setValue(new ArrayList());
        this.recycleViewStatus.setValue(0);
        this.loadBindData.setValue(new LoadBindindData(2));
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final MutableLiveData<Integer> getRecycleViewStatus() {
        return this.recycleViewStatus;
    }

    @NotNull
    public final MutableLiveData<List<MustplayItemBean>> getShowDatas() {
        return this.showDatas;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void loadDatas(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        loadDatas(context, this.page);
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setPage(int i2) {
        this.page = i2;
    }

    public final void setRecycleViewStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.recycleViewStatus = mutableLiveData;
    }

    public final void setShowDatas(@NotNull MutableLiveData<List<MustplayItemBean>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDatas = mutableLiveData;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle
    public void updateDowStateList(@NotNull DownloadTask downloadTask, @NotNull Function1<? super CollectionBeanSubBusiness, Unit> func) {
        Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
        Intrinsics.checkNotNullParameter(func, "func");
        try {
            List<MustplayItemBean> value = this.showDatas.getValue();
            Intrinsics.checkNotNull(value);
            for (MustplayItemBean mustplayItemBean : value) {
                func.invoke(mustplayItemBean.getGameinfo());
            }
            MutableLiveData<List<MustplayItemBean>> mutableLiveData = this.showDatas;
            mutableLiveData.setValue(mutableLiveData.getValue());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle
    public void updateProgressPartly() {
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.join.mgps.dto.RequestModel, T] */
    public final void loadDatas(@NotNull Context context, int i2) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.page = i2;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? requestModel = new RequestModel();
        objectRef.element = requestModel;
        ((RequestModel) requestModel).setDefault(context);
        ((RequestModel) objectRef.element).setArgs(new RequestGameIdArgs());
        Object args = ((RequestModel) objectRef.element).getArgs();
        Intrinsics.checkNotNullExpressionValue(args, "requestModel.args");
        ((RequestGameIdArgs) args).setPage(this.page);
        Object args2 = ((RequestModel) objectRef.element).getArgs();
        Intrinsics.checkNotNullExpressionValue(args2, "requestModel.args");
        AccountUtil_ instance_ = AccountUtil_.getInstance_(context);
        Intrinsics.checkNotNullExpressionValue(instance_, "AccountUtil_.getInstance_(context)");
        AccountBean accountData = instance_.getAccountData();
        Intrinsics.checkNotNullExpressionValue(accountData, "AccountUtil_.getInstance_(context).accountData");
        ((RequestGameIdArgs) args2).setUid(accountData.getUid());
        if (this.page == 1) {
            this.loadBindData.setValue(new LoadBindindData(2));
        }
        k.f(v1.f72528a, g1.c(), null, new MustPlayViewModle$loadDatas$job$1(this, objectRef, context, null), 2, null);
    }
}
