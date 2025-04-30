package com.join.kotlin.ui.userrecom;

import androidx.lifecycle.MutableLiveData;
import com.alipay.sdk.authjs.a;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RecomViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b,\u0010-J\b\u0010\u0003\u001a\u00020\u0002H\u0016J3\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042!\u0010\u000b\u001a\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u00020\u0006H\u0016R(\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R.\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\"0\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0010\u001a\u0004\b$\u0010\u0012\"\u0004\b%\u0010\u0014R8\u0010)\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020'0&j\b\u0012\u0004\u0012\u00020'`(0\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010\u0010\u001a\u0004\b*\u0010\u0012\"\u0004\b+\u0010\u0014¨\u0006."}, d2 = {"Lcom/join/kotlin/ui/userrecom/RecomViewModle;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;", "", "updateProgressPartly", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "Lkotlin/Function1;", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "Lkotlin/ParameterName;", "name", "sub", a.f9679m, "updateDowStateList", "Landroidx/lifecycle/MutableLiveData;", "", "titleMessage", "Landroidx/lifecycle/MutableLiveData;", "getTitleMessage", "()Landroidx/lifecycle/MutableLiveData;", "setTitleMessage", "(Landroidx/lifecycle/MutableLiveData;)V", "Lcom/join/kotlin/ui/userrecom/UserRecomRequest;", "request", "Lcom/join/kotlin/ui/userrecom/UserRecomRequest;", "getRequest", "()Lcom/join/kotlin/ui/userrecom/UserRecomRequest;", "setRequest", "(Lcom/join/kotlin/ui/userrecom/UserRecomRequest;)V", "recycleViewH", "Ljava/lang/String;", "getRecycleViewH", "()Ljava/lang/String;", "setRecycleViewH", "(Ljava/lang/String;)V", "", "gameIdlist", "getGameIdlist", "setGameIdlist", "Ljava/util/ArrayList;", "Lcom/psk/kotlin/util/CommonListMainData;", "Lkotlin/collections/ArrayList;", "showDataList", "getShowDataList", "setShowDataList", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class RecomViewModle extends BaseHasDownloadActivityViewModle {
    @NotNull
    private MutableLiveData<String> titleMessage = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<List<String>> gameIdlist = new MutableLiveData<>();
    @NotNull
    private String recycleViewH = "300px";
    @NotNull
    private UserRecomRequest request = new UserRecomRequest();
    @NotNull
    private MutableLiveData<ArrayList<CommonListMainData>> showDataList = new MutableLiveData<>();

    @NotNull
    public final MutableLiveData<List<String>> getGameIdlist() {
        return this.gameIdlist;
    }

    @NotNull
    public final String getRecycleViewH() {
        return this.recycleViewH;
    }

    @NotNull
    public final UserRecomRequest getRequest() {
        return this.request;
    }

    @NotNull
    public final MutableLiveData<ArrayList<CommonListMainData>> getShowDataList() {
        return this.showDataList;
    }

    @NotNull
    public final MutableLiveData<String> getTitleMessage() {
        return this.titleMessage;
    }

    public final void setGameIdlist(@NotNull MutableLiveData<List<String>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.gameIdlist = mutableLiveData;
    }

    public final void setRecycleViewH(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.recycleViewH = str;
    }

    public final void setRequest(@NotNull UserRecomRequest userRecomRequest) {
        Intrinsics.checkNotNullParameter(userRecomRequest, "<set-?>");
        this.request = userRecomRequest;
    }

    public final void setShowDataList(@NotNull MutableLiveData<ArrayList<CommonListMainData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDataList = mutableLiveData;
    }

    public final void setTitleMessage(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.titleMessage = mutableLiveData;
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle
    public void updateDowStateList(@NotNull DownloadTask downloadTask, @NotNull Function1<? super CollectionBeanSubBusiness, Unit> func) {
        Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
        Intrinsics.checkNotNullParameter(func, "func");
        try {
            ArrayList<CommonListMainData> value = this.showDataList.getValue();
            Intrinsics.checkNotNull(value);
            Iterator<CommonListMainData> it2 = value.iterator();
            while (it2.hasNext()) {
                CommonListMainData next = it2.next();
                if (next.getType() == 2) {
                    Object any = next.getAny();
                    if (any != null) {
                        func.invoke((CollectionBeanSubBusiness) any);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
                    }
                } else if (next.getType() != 3) {
                    continue;
                } else {
                    Object any2 = next.getAny();
                    if (any2 != null) {
                        CollectionBeanSubBusiness game_info = ((FindChoiceBannerData) any2).getGame_info();
                        Intrinsics.checkNotNullExpressionValue(game_info, "subp.game_info");
                        func.invoke(game_info);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle
    public void updateProgressPartly() {
    }
}
