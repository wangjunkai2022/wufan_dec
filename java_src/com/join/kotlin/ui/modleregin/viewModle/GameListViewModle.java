package com.join.kotlin.ui.modleregin.viewModle;

import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alipay.sdk.authjs.a;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.domain.common.AppListItemShowBean;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle;
import com.join.kotlin.ui.modleregin.modle.BtGameListItem;
import com.join.kotlin.ui.modleregin.modle.BtOnlineGame;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.CollectionBeanSub;
import com.psk.kotlin.util.CommonListMainData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GameListViewModle.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b8\u00109J\u001c\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\t\u001a\u00020\u0007H\u0016J3\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2!\u0010\u0011\u001a\u001d\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00070\fH\u0016R.\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR$\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R(\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u0016\u001a\u0004\b$\u0010\u0018\"\u0004\b%\u0010\u001aR*\u0010(\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R(\u0010/\u001a\b\u0012\u0004\u0012\u00020.0\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\u0016\u001a\u0004\b0\u0010\u0018\"\u0004\b1\u0010\u001aR\"\u00102\u001a\u00020\"8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006:"}, d2 = {"Lcom/join/kotlin/ui/modleregin/viewModle/GameListViewModle;", "Lcom/join/kotlin/ui/base/BaseHasDownloadActivityViewModle;", "", "Lcom/join/kotlin/ui/modleregin/modle/BtOnlineGame;", "onlineGames", "", "time", "", "showGameList", "updateProgressPartly", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "Lkotlin/Function1;", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "Lkotlin/ParameterName;", "name", "sub", a.f9679m, "updateDowStateList", "Landroidx/lifecycle/MutableLiveData;", "Lcom/psk/kotlin/util/CommonListMainData;", "showDatas", "Landroidx/lifecycle/MutableLiveData;", "getShowDatas", "()Landroidx/lifecycle/MutableLiveData;", "setShowDatas", "(Landroidx/lifecycle/MutableLiveData;)V", "Landroidx/recyclerview/widget/LinearLayoutManager;", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "", "recycleViewStatus", "getRecycleViewStatus", "setRecycleViewStatus", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "getAdapter", "()Landroidx/recyclerview/widget/RecyclerView$Adapter;", "setAdapter", "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "Lcom/join/kotlin/domain/common/LoadBindindData;", "loadBindData", "getLoadBindData", "setLoadBindData", "page", "I", "getPage", "()I", "setPage", "(I)V", "<init>", "()V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class GameListViewModle extends BaseHasDownloadActivityViewModle {
    @Nullable
    private RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
    @Nullable
    private LinearLayoutManager manager;
    @NotNull
    private MutableLiveData<List<CommonListMainData>> showDatas = new MutableLiveData<>();
    private int page = 1;
    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();
    @NotNull
    private MutableLiveData<Integer> recycleViewStatus = new MutableLiveData<>();

    public GameListViewModle() {
        this.showDatas.setValue(new ArrayList());
        this.recycleViewStatus.setValue(0);
        this.loadBindData.setValue(new LoadBindindData(2));
    }

    @Nullable
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> getAdapter() {
        return this.adapter;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @Nullable
    public final LinearLayoutManager getManager() {
        return this.manager;
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

    public final void setAdapter(@Nullable RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        this.adapter = adapter;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setManager(@Nullable LinearLayoutManager linearLayoutManager) {
        this.manager = linearLayoutManager;
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

    public final void showGameList(@NotNull List<BtOnlineGame> onlineGames, long j4) {
        Intrinsics.checkNotNullParameter(onlineGames, "onlineGames");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = onlineGames.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            if (((BtOnlineGame) next).getOnlineTime() == j4) {
                arrayList.add(next);
            }
        }
        if (!arrayList.isEmpty()) {
            List<CommonListMainData> value = this.showDatas.getValue();
            if (value != null) {
                value.clear();
            }
            for (CollectionBeanSub collectionBeanSub : ((BtOnlineGame) arrayList.get(0)).getGameEntityList()) {
                CollectionBeanSubBusiness collectionBeanSubBusiness = new CollectionBeanSubBusiness(collectionBeanSub);
                collectionBeanSubBusiness.set_from(0);
                collectionBeanSubBusiness.set_from_type(0);
                collectionBeanSubBusiness.setRecPosition(String.valueOf(collectionBeanSubBusiness.getIndex()));
                updateDowState(collectionBeanSubBusiness);
                try {
                    List<CommonListMainData> value2 = this.showDatas.getValue();
                    Intrinsics.checkNotNull(value2);
                    String ico_remote = collectionBeanSubBusiness.getIco_remote();
                    Intrinsics.checkNotNullExpressionValue(ico_remote, "be.ico_remote");
                    String gif_ico_remote = collectionBeanSubBusiness.getGif_ico_remote();
                    String game_name = collectionBeanSubBusiness.getGame_name();
                    Intrinsics.checkNotNullExpressionValue(game_name, "be.game_name");
                    String info = collectionBeanSubBusiness.getInfo();
                    Intrinsics.checkNotNullExpressionValue(info, "be.info");
                    value2.add(new CommonListMainData(2, new BtGameListItem(0, ico_remote, gif_ico_remote, game_name, collectionBeanSubBusiness.getGame_dimension() + ' ' + UtilsMy.Y1(collectionBeanSubBusiness.getActual_size()), info, collectionBeanSubBusiness, new AppListItemShowBean(collectionBeanSubBusiness, false)), null, null, 12, null));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
        }
        MutableLiveData<List<CommonListMainData>> mutableLiveData = this.showDatas;
        mutableLiveData.setValue(mutableLiveData.getValue());
    }

    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle
    public void updateDowStateList(@NotNull DownloadTask downloadTask, @NotNull Function1<? super CollectionBeanSubBusiness, Unit> func) {
        Intrinsics.checkNotNullParameter(downloadTask, "downloadTask");
        Intrinsics.checkNotNullParameter(func, "func");
        List<CommonListMainData> value = this.showDatas.getValue();
        if (value != null) {
            for (CommonListMainData commonListMainData : value) {
                if (commonListMainData.getType() == 2) {
                    Object any = commonListMainData.getAny();
                    Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.kotlin.ui.modleregin.modle.BtGameListItem");
                    func.invoke(((BtGameListItem) any).getGameInfo());
                }
            }
        }
        MutableLiveData<List<CommonListMainData>> mutableLiveData = this.showDatas;
        mutableLiveData.setValue(mutableLiveData.getValue());
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0073, code lost:
        throw new java.lang.NullPointerException("null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
     */
    @Override // com.join.kotlin.ui.base.BaseHasDownloadActivityViewModle
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateProgressPartly() {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$Adapter<androidx.recyclerview.widget.RecyclerView$ViewHolder> r0 = r5.adapter     // Catch: java.lang.Exception -> L79
            if (r0 != 0) goto L5
            return
        L5:
            androidx.recyclerview.widget.LinearLayoutManager r0 = r5.manager     // Catch: java.lang.Exception -> L79
            if (r0 != 0) goto La
            return
        La:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)     // Catch: java.lang.Exception -> L79
            int r0 = r0.findFirstVisibleItemPosition()     // Catch: java.lang.Exception -> L79
            androidx.recyclerview.widget.LinearLayoutManager r1 = r5.manager     // Catch: java.lang.Exception -> L79
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)     // Catch: java.lang.Exception -> L79
            int r1 = r1.findLastVisibleItemPosition()     // Catch: java.lang.Exception -> L79
            if (r0 > r1) goto L7d
        L1c:
            androidx.lifecycle.MutableLiveData<java.util.List<com.psk.kotlin.util.CommonListMainData>> r2 = r5.showDatas     // Catch: java.lang.Exception -> L79
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Exception -> L79
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L79
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Exception -> L79
            int r2 = r2.size()     // Catch: java.lang.Exception -> L79
            if (r0 < r2) goto L2e
            return
        L2e:
            androidx.lifecycle.MutableLiveData<java.util.List<com.psk.kotlin.util.CommonListMainData>> r2 = r5.showDatas     // Catch: java.lang.Exception -> L79
            java.lang.Object r2 = r2.getValue()     // Catch: java.lang.Exception -> L79
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L79
            java.util.List r2 = (java.util.List) r2     // Catch: java.lang.Exception -> L79
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Exception -> L79
            com.psk.kotlin.util.CommonListMainData r2 = (com.psk.kotlin.util.CommonListMainData) r2     // Catch: java.lang.Exception -> L79
            int r3 = r2.getType()     // Catch: java.lang.Exception -> L79
            r4 = 2
            if (r3 != r4) goto L74
            java.lang.Object r2 = r2.getAny()     // Catch: java.lang.Exception -> L79
            if (r2 == 0) goto L6c
            com.join.mgps.business.CollectionBeanSubBusiness r2 = (com.join.mgps.business.CollectionBeanSubBusiness) r2     // Catch: java.lang.Exception -> L79
            com.github.snowdream.android.app.downloader.DownloadTask r2 = r2.getDownloadTask()     // Catch: java.lang.Exception -> L79
            if (r2 == 0) goto L74
            int r3 = r2.getStatus()     // Catch: java.lang.Exception -> L79
            if (r3 == r4) goto L62
            int r2 = r2.getStatus()     // Catch: java.lang.Exception -> L79
            r3 = 12
            if (r2 != r3) goto L74
        L62:
            androidx.recyclerview.widget.RecyclerView$Adapter<androidx.recyclerview.widget.RecyclerView$ViewHolder> r2 = r5.adapter     // Catch: java.lang.Exception -> L79
            if (r2 == 0) goto L74
            java.lang.String r3 = "progress"
            r2.notifyItemChanged(r0, r3)     // Catch: java.lang.Exception -> L79
            goto L74
        L6c:
            java.lang.NullPointerException r0 = new java.lang.NullPointerException     // Catch: java.lang.Exception -> L79
            java.lang.String r1 = "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness"
            r0.<init>(r1)     // Catch: java.lang.Exception -> L79
            throw r0     // Catch: java.lang.Exception -> L79
        L74:
            if (r0 == r1) goto L7d
            int r0 = r0 + 1
            goto L1c
        L79:
            r0 = move-exception
            r0.printStackTrace()
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.kotlin.ui.modleregin.viewModle.GameListViewModle.updateProgressPartly():void");
    }
}
