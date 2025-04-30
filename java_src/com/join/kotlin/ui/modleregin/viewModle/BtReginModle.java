package com.join.kotlin.ui.modleregin.viewModle;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alipay.sdk.authjs.a;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle;
import com.join.kotlin.ui.modleregin.modle.BTDynamicMain;
import com.join.kotlin.ui.modleregin.modle.BTDynamicModle;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.kotlin.ui.modleregin.modle.BtReginResultMain;
import com.join.kotlin.ui.modleregin.modle.BtTagSelecterBean;
import com.join.kotlin.ui.modleregin.modle.BtVideodata;
import com.join.kotlin.ui.modleregin.modle.MustplayItemBean;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TipBean;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.v1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import test.b;
/* compiled from: BtReginModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bT\u0010UJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bJ\b\u0010\u000e\u001a\u00020\u0007H\u0016J3\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000f2!\u0010\u0016\u001a\u001d\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0004\u0012\u00020\u00070\u0011H\u0016R(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010!\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R(\u0010(\u001a\b\u0012\u0004\u0012\u00020\t0'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010.\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R(\u00105\u001a\b\u0012\u0004\u0012\u0002040\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010\u001b\u001a\u0004\b6\u0010\u001d\"\u0004\b7\u0010\u001fR(\u00108\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010\u001b\u001a\u0004\b9\u0010\u001d\"\u0004\b:\u0010\u001fR$\u0010<\u001a\u0004\u0018\u00010;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\"\u0010B\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010/\u001a\u0004\bC\u00101\"\u0004\bD\u00103R.\u0010E\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00180'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bE\u0010)\u001a\u0004\bF\u0010+\"\u0004\bG\u0010-R(\u0010I\u001a\b\u0012\u0004\u0012\u00020H0'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010)\u001a\u0004\bJ\u0010+\"\u0004\bK\u0010-R*\u0010N\u001a\n\u0012\u0004\u0012\u00020M\u0018\u00010L8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010O\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010S¨\u0006V"}, d2 = {"Lcom/join/kotlin/ui/modleregin/viewModle/BtReginModle;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;", "madeTestData", "Landroid/content/Context;", "context", "", "loadDatas", "", "pn", "Lcom/join/kotlin/ui/modleregin/modle/BtTagSelecterBean;", "titleInfo", "updateTitles", "updateProgressPartly", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "Lkotlin/Function1;", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "Lkotlin/ParameterName;", "name", "sub", a.f9679m, "updateDowStateList", "", "Lcom/psk/kotlin/util/CommonListMainData;", "tagList", "Ljava/util/List;", "getTagList", "()Ljava/util/List;", "setTagList", "(Ljava/util/List;)V", "", "title", "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "Landroidx/lifecycle/MutableLiveData;", "recycleViewStatus", "Landroidx/lifecycle/MutableLiveData;", "getRecycleViewStatus", "()Landroidx/lifecycle/MutableLiveData;", "setRecycleViewStatus", "(Landroidx/lifecycle/MutableLiveData;)V", "tagListPosition", "I", "getTagListPosition", "()I", "setTagListPosition", "(I)V", "Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;", "listBtOnlineGame", "getListBtOnlineGame", "setListBtOnlineGame", "onlineGameTitles", "getOnlineGameTitles", "setOnlineGameTitles", "Landroidx/recyclerview/widget/LinearLayoutManager;", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "page", "getPage", "setPage", "showDatas", "getShowDatas", "setShowDatas", "Lcom/join/kotlin/domain/common/LoadBindindData;", "loadBindData", "getLoadBindData", "setLoadBindData", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "getAdapter", "()Landroidx/recyclerview/widget/RecyclerView$Adapter;", "setAdapter", "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class BtReginModle extends BaseHasDownloadActivityViewModle {
    @Nullable
    private RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
    @Nullable
    private LinearLayoutManager manager;
    @NotNull
    private List<CommonListMainData> tagList;
    private int tagListPosition;
    @NotNull
    private MutableLiveData<List<CommonListMainData>> showDatas = new MutableLiveData<>();
    @NotNull
    private List<BtOnlineGame> listBtOnlineGame = new ArrayList();
    @NotNull
    private List<BtTagSelecterBean> onlineGameTitles = new ArrayList();
    private int page = 1;
    @NotNull
    private String title = "BT手游";
    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> recycleViewStatus = new MutableLiveData<>();

    public BtReginModle() {
        this.showDatas.setValue(new ArrayList());
        this.recycleViewStatus.setValue(0);
        this.loadBindData.setValue(new LoadBindindData(2));
        this.tagList = new ArrayList();
    }

    private final ResponseModel<BtReginResultMain> madeTestData() {
        int i2;
        int random;
        int random2;
        int random3;
        ResponseModel<BtReginResultMain> responseModel;
        int i4;
        int i5;
        ArrayList arrayList;
        int i6;
        int i7;
        int random4;
        ResponseModel<BtReginResultMain> responseModel2 = new ResponseModel<>();
        responseModel2.setCode(200);
        ArrayList arrayList2 = new ArrayList();
        int i8 = 0;
        int i9 = 0;
        while (true) {
            if (i9 > 10) {
                break;
            }
            BannerBean a4 = b.a();
            Intrinsics.checkNotNullExpressionValue(a4, "TestGameInfo.getBannerBean()");
            arrayList2.add(a4);
            i9++;
        }
        ArrayList arrayList3 = new ArrayList();
        for (int i10 = 0; i10 <= 10; i10++) {
            ArrayList arrayList4 = new ArrayList();
            for (int i11 = 0; i11 <= 3; i11++) {
                CollectionBeanSub b4 = b.b();
                Intrinsics.checkNotNullExpressionValue(b4, "TestGameInfo.getgameinfo()");
                arrayList4.add(b4);
            }
            arrayList3.add(new BtOnlineGame(System.currentTimeMillis() / 1000, arrayList4));
        }
        ArrayList arrayList5 = new ArrayList();
        int i12 = 1;
        int i13 = 1;
        for (i2 = 10; i13 <= i2; i2 = 10) {
            ArrayList arrayList6 = new ArrayList();
            IntRange intRange = new IntRange(i8, i2);
            Random.Default r4 = Random.Default;
            random = RangesKt___RangesKt.random(intRange, r4);
            random2 = RangesKt___RangesKt.random(new IntRange(i8, i2), r4);
            random3 = RangesKt___RangesKt.random(new IntRange(i8, i2), r4);
            if (random <= 5 && random2 <= 5 && random3 <= 5) {
                random2 = 10;
            }
            if (random > 5) {
                ArrayList arrayList7 = new ArrayList();
                for (int i14 = 1; i14 <= i2; i14++) {
                    CollectionBeanSub b5 = b.b();
                    Intrinsics.checkNotNullExpressionValue(b5, "TestGameInfo.getgameinfo()");
                    arrayList7.add(b5);
                }
                i4 = random2;
                i5 = random3;
                arrayList = arrayList6;
                i6 = i13;
                responseModel = responseModel2;
                i7 = 1;
                arrayList.add(new BTDynamicModle(Integer.valueOf(i12), 0, "3118765087", PayCenterOrderRequest.PAY_TYPE_RECHARGE, arrayList7, null));
            } else {
                responseModel = responseModel2;
                i4 = random2;
                i5 = random3;
                arrayList = arrayList6;
                i6 = i13;
                i7 = 1;
            }
            if (i4 > 5) {
                arrayList.add(new BTDynamicModle(3, 0, "", "", null, b.b()));
            }
            if (i5 > 5) {
                ArrayList arrayList8 = new ArrayList();
                random4 = RangesKt___RangesKt.random(new IntRange(3, 5), Random.Default);
                if (i7 <= random4) {
                    int i15 = 1;
                    while (true) {
                        CollectionBeanSub b6 = b.b();
                        Intrinsics.checkNotNullExpressionValue(b6, "TestGameInfo.getgameinfo()");
                        arrayList8.add(b6);
                        if (i15 == random4) {
                            break;
                        }
                        i15++;
                    }
                }
                arrayList.add(new BTDynamicModle(2, 0, "", "", arrayList8, null));
            }
            arrayList5.add(new BTDynamicMain(arrayList, "标题", "副标题"));
            i13 = i6 + 1;
            responseModel2 = responseModel;
            i8 = 0;
            i12 = 1;
        }
        ResponseModel<BtReginResultMain> responseModel3 = responseModel2;
        CollectionBeanSub b7 = b.b();
        Intrinsics.checkNotNullExpressionValue(b7, "TestGameInfo.getgameinfo()");
        responseModel3.setData(new BtReginResultMain(arrayList2, new BtVideodata(0L, "https://static-v.myyx618.com/android2019/xjjy~1.mp4", "https://t7.baidu.com/it/u=1819248061,230866778&fm=193&f=GIF", b7), arrayList3, arrayList5));
        return responseModel3;
    }

    @Nullable
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final List<BtOnlineGame> getListBtOnlineGame() {
        return this.listBtOnlineGame;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @Nullable
    public final LinearLayoutManager getManager() {
        return this.manager;
    }

    @NotNull
    public final List<BtTagSelecterBean> getOnlineGameTitles() {
        return this.onlineGameTitles;
    }

    public final int getPage() {
        return this.page;
    }

    @NotNull
    public final MutableLiveData<Integer> getRecycleViewStatus() {
        return this.recycleViewStatus;
    }

    @NotNull
    public final MutableLiveData<List<CommonListMainData>> getShowDatas() {
        return this.showDatas;
    }

    @NotNull
    public final List<CommonListMainData> getTagList() {
        return this.tagList;
    }

    public final int getTagListPosition() {
        return this.tagListPosition;
    }

    @NotNull
    public final String getTitle() {
        return this.title;
    }

    public final void loadDatas(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        loadDatas(context, this.page);
    }

    public final void setAdapter(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        this.adapter = adapter;
    }

    public final void setListBtOnlineGame(@NotNull List<BtOnlineGame> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.listBtOnlineGame = list;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setManager(@Nullable LinearLayoutManager linearLayoutManager) {
        this.manager = linearLayoutManager;
    }

    public final void setOnlineGameTitles(@NotNull List<BtTagSelecterBean> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.onlineGameTitles = list;
    }

    public final void setPage(int i2) {
        this.page = i2;
    }

    public final void setRecycleViewStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.recycleViewStatus = mutableLiveData;
    }

    public final void setShowDatas(@NotNull MutableLiveData<List<CommonListMainData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showDatas = mutableLiveData;
    }

    public final void setTagList(@NotNull List<CommonListMainData> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.tagList = list;
    }

    public final void setTagListPosition(int i2) {
        this.tagListPosition = i2;
    }

    public final void setTitle(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle
    public void updateDowStateList(@NotNull DownloadTask downloadTask, @NotNull Function1<? super CollectionBeanSubBusiness, Unit> func) {
        AppListItemShowBean appitemShow;
        Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
        Intrinsics.checkNotNullParameter(func, "func");
        List<CommonListMainData> value = this.showDatas.getValue();
        if (value != null) {
            for (CommonListMainData commonListMainData : value) {
                int type = commonListMainData.getType();
                if (type == 2) {
                    Object any = commonListMainData.getAny();
                    Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
                    BtGameListItem btGameListItem = (BtGameListItem) any;
                    CollectionBeanSubBusiness gameInfo = btGameListItem.getGameInfo();
                    func.invoke(gameInfo);
                    if (gameInfo.getDownloadTask() != null && (appitemShow = btGameListItem.getAppitemShow()) != null) {
                        DownloadTask downloadTask2 = gameInfo.getDownloadTask();
                        Intrinsics.checkNotNullExpressionValue(downloadTask2, "sub.downloadTask");
                        appitemShow.setDownloadStatus(downloadTask2.getStatus());
                    }
                } else if (type == 4) {
                    Object any2 = commonListMainData.getAny();
                    Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.MustplayItemBean");
                    func.invoke(((MustplayItemBean) any2).getGameinfo());
                } else if (type == 7) {
                    Object any3 = commonListMainData.getAny();
                    Objects.requireNonNull(any3, "null cannot be cast to non-null type kotlin.collections.List<com.join.mgps.business.CollectionBeanSubBusiness>");
                    for (CollectionBeanSubBusiness collectionBeanSubBusiness : (List) any3) {
                        func.invoke(collectionBeanSubBusiness);
                    }
                }
            }
        }
        MutableLiveData<List<CommonListMainData>> mutableLiveData = this.showDatas;
        mutableLiveData.setValue(mutableLiveData.getValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
        throw new java.lang.NullPointerException("null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
     */
    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateProgressPartly() {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$Adapter<androidx.recyclerview.widget.RecyclerView$ViewHolder> r0 = r5.adapter     // Catch: java.lang.Exception -> L7d
            if (r0 != 0) goto L5
            return
        L5:
            androidx.recyclerview.widget.LinearLayoutManager r0 = r5.manager     // Catch: java.lang.Exception -> L7d
            if (r0 != 0) goto La
            return
        La:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: java.lang.Exception -> L7d
            int r0 = r0.findFirstVisibleItemPosition()     // Catch: java.lang.Exception -> L7d
            androidx.recyclerview.widget.LinearLayoutManager r1 = r5.manager     // Catch: java.lang.Exception -> L7d
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)     // Catch: java.lang.Exception -> L7d
            int r1 = r1.findLastVisibleItemPosition()     // Catch: java.lang.Exception -> L7d
            if (r0 > r1) goto L81
        L1c:
            androidx.lifecycle.MutableLiveData<java.util.List<com.psk.kotlin.util.CommonListMainData>> r2 = r5.showDatas     // Catch: java.lang.Exception -> L7d
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Exception -> L7d
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L7d
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Exception -> L7d
            int r2 = r2.size()     // Catch: java.lang.Exception -> L7d
            if (r0 < r2) goto L2e
            return
        L2e:
            androidx.lifecycle.MutableLiveData<java.util.List<com.psk.kotlin.util.CommonListMainData>> r2 = r5.showDatas     // Catch: java.lang.Exception -> L7d
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Exception -> L7d
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L7d
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Exception -> L7d
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Exception -> L7d
            com.psk.kotlin.util.CommonListMainData r2 = (com.psk.kotlin.util.CommonListMainData) r2     // Catch: java.lang.Exception -> L7d
            int r3 = r2.getType()     // Catch: java.lang.Exception -> L7d
            r4 = 2
            if (r3 != r4) goto L78
            java.lang.Object r2 = r2.getAny()     // Catch: java.lang.Exception -> L7d
            if (r2 == 0) goto L70
            com.join.kotlin.ui.modleregin.modle.BtGameListItem r2 = (com.join.kotlin.ui.modleregin.modle.BtGameListItem) r2     // Catch: java.lang.Exception -> L7d
            com.join.mgps.business.CollectionBeanSubBusiness r2 = r2.getGameInfo()     // Catch: java.lang.Exception -> L7d
            com.github.snowdream.android.app.downloader.DownloadTask r2 = r2.getDownloadTask()     // Catch: java.lang.Exception -> L7d
            if (r2 == 0) goto L78
            int r3 = r2.getStatus()     // Catch: java.lang.Exception -> L7d
            if (r3 == r4) goto L66
            int r2 = r2.getStatus()     // Catch: java.lang.Exception -> L7d
            r3 = 12
            if (r2 != r3) goto L78
        L66:
            androidx.recyclerview.widget.RecyclerView$Adapter<androidx.recyclerview.widget.RecyclerView$ViewHolder> r2 = r5.adapter     // Catch: java.lang.Exception -> L7d
            if (r2 == 0) goto L78
            java.lang.String r3 = "progress"
            r2.notifyItemChanged(r0, r3)     // Catch: java.lang.Exception -> L7d
            goto L78
        L70:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException     // Catch: java.lang.Exception -> L7d
            java.lang.String r1 = "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem"
            r0.<init>(r1)     // Catch: java.lang.Exception -> L7d
            throw r0     // Catch: java.lang.Exception -> L7d
        L78:
            if (r0 == r1) goto L81
            int r0 = r0 + 1
            goto L1c
        L7d:
            r0 = move-exception
            r0.printStackTrace()
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.modleregin.viewModle.BtReginModle.updateProgressPartly():void");
    }

    public final void updateTitles(@NotNull BtTagSelecterBean titleInfo) {
        String str;
        Intrinsics.checkNotNullParameter(titleInfo, "titleInfo");
        Iterator<T> it2 = this.onlineGameTitles.iterator();
        while (true) {
            boolean z3 = true;
            if (!it2.hasNext()) {
                break;
            }
            BtTagSelecterBean btTagSelecterBean = (BtTagSelecterBean) it2.next();
            if (btTagSelecterBean.getTime() != titleInfo.getTime()) {
                z3 = false;
            }
            btTagSelecterBean.setStatus(z3);
        }
        List<CommonListMainData> value = this.showDatas.getValue();
        if (value != null) {
            value.removeAll(this.tagList);
        }
        this.tagList.clear();
        List<BtOnlineGame> list = this.listBtOnlineGame;
        ArrayList<BtOnlineGame> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((BtOnlineGame) obj).getOnlineTime() == titleInfo.getTime()) {
                arrayList.add(obj);
            }
        }
        for (BtOnlineGame btOnlineGame : arrayList) {
            for (CollectionBeanSub collectionBeanSub : btOnlineGame.getGameEntityList()) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                collectionBeanSubBusiness.set_from(146);
                collectionBeanSubBusiness.set_from_type(146);
                collectionBeanSubBusiness.setRecPosition(String.valueOf(collectionBeanSubBusiness.getIndex()));
                updateDowState(collectionBeanSubBusiness);
                String str2 = "";
                if (collectionBeanSubBusiness.getTag_info() != null) {
                    String str3 = "";
                    for (TipBean tipBean : collectionBeanSubBusiness.getTag_info().subList(0, Math.min(3, collectionBeanSubBusiness.getTag_info().size()))) {
                        Intrinsics.checkNotNullExpressionValue(tipBean, "tipBean");
                        if (tipBean.getId() != null && !Intrinsics.areEqual(tipBean.getId(), "") && !Intrinsics.areEqual(tipBean.getId(), "44") && !Intrinsics.areEqual(tipBean.getId(), "45") && !Intrinsics.areEqual(tipBean.getId(), "47") && !Intrinsics.areEqual(tipBean.getId(), "48") && !Intrinsics.areEqual(tipBean.getId(), "25") && !Intrinsics.areEqual(tipBean.getId(), "154") && !Intrinsics.areEqual(tipBean.getId(), "7")) {
                            str3 = Intrinsics.stringPlus(str3, tipBean.getName() + " · ");
                        }
                    }
                    str2 = str3;
                }
                List<CommonListMainData> list2 = this.tagList;
                String ico_remote = collectionBeanSubBusiness.getIco_remote();
                Intrinsics.checkNotNullExpressionValue(ico_remote, "be.ico_remote");
                String gif_ico_remote = collectionBeanSubBusiness.getGif_ico_remote();
                String game_name = collectionBeanSubBusiness.getGame_name();
                Intrinsics.checkNotNullExpressionValue(game_name, "be.game_name");
                StringBuilder sb = new StringBuilder();
                if (str2 != null) {
                    str = str2.substring(0, Math.max(0, str2.length() - 2));
                    Intrinsics.checkNotNullExpressionValue(str, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                } else {
                    str = null;
                }
                sb.append(str);
                sb.append("| ");
                sb.append(UtilsMy.Y1(collectionBeanSubBusiness.getActual_size()));
                String sb2 = sb.toString();
                String info = collectionBeanSubBusiness.getInfo();
                Intrinsics.checkNotNullExpressionValue(info, "be.info");
                list2.add(new CommonListMainData(2, new BtGameListItem(999, ico_remote, gif_ico_remote, game_name, sb2, info, collectionBeanSubBusiness, new AppListItemShowBean(collectionBeanSubBusiness, false)), null, null, 12, null));
            }
        }
        List<CommonListMainData> value2 = this.showDatas.getValue();
        if (value2 != null) {
            value2.addAll(this.tagListPosition, this.tagList);
        }
        MutableLiveData<List<CommonListMainData>> mutableLiveData = this.showDatas;
        mutableLiveData.setValue(mutableLiveData.getValue());
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
        k.f(v1.f72528a, g1.c(), null, new BtReginModle$loadDatas$job$1(this, objectRef, context, null), 2, null);
    }
}
