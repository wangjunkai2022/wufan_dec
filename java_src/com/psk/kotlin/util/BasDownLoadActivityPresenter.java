package com.psk.kotlin.util;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.event.l;
import g1.f;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BasDownLoadActivityPresenter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B%\u0012\u0006\u00107\u001a\u000206\u0012\u0006\u0010+\u001a\u00020*\u0012\f\u0010(\u001a\b\u0012\u0004\u0012\u00020'0&¢\u0006\u0004\b=\u0010>J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\u0013\u001a\u00020\u00042\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010J\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\bR(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR.\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020'0&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\"\u0010+\u001a\u00020*8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R(\u00101\u001a\b\u0012\u0004\u0012\u00020\u00020&8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b1\u0010)\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u00107\u001a\u0002068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<¨\u0006?"}, d2 = {"Lcom/psk/kotlin/util/BasDownLoadActivityPresenter;", "", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "", "receiveStart", "receiveSuccess", "receiveDelete", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "item", "recivedDeleteFinal", "receiveError", "updateProgressPartly", "sub", "updateDowStateListFinal", "updateDowStateList", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "adapterx", "initData", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "onEventMainThread", "updateDowState", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "getAdapter", "()Landroidx/recyclerview/widget/RecyclerView$Adapter;", "setAdapter", "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "", "", "downloadTasksMap", "Ljava/util/Map;", "getDownloadTasksMap", "()Ljava/util/Map;", "setDownloadTasksMap", "(Ljava/util/Map;)V", "", "Lcom/psk/kotlin/util/CommonListMainData;", "showDataList", "Ljava/util/List;", "Landroidx/recyclerview/widget/RecyclerView;", "recycleView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecycleView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecycleView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "downloadTasks", "getDownloadTasks", "()Ljava/util/List;", "setDownloadTasks", "(Ljava/util/List;)V", "Landroidx/recyclerview/widget/LinearLayoutManager;", "manager", "Landroidx/recyclerview/widget/LinearLayoutManager;", "getManager", "()Landroidx/recyclerview/widget/LinearLayoutManager;", "setManager", "(Landroidx/recyclerview/widget/LinearLayoutManager;)V", "<init>", "(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class BasDownLoadActivityPresenter {
    public RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
    public List<DownloadTask> downloadTasks;
    @NotNull
    private Map<String, DownloadTask> downloadTasksMap;
    @NotNull
    private LinearLayoutManager manager;
    @NotNull
    private RecyclerView recycleView;
    private List<CommonListMainData> showDataList;

    public BasDownLoadActivityPresenter(@NotNull LinearLayoutManager manager, @NotNull RecyclerView recycleView, @NotNull List<CommonListMainData> showDataList) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(recycleView, "recycleView");
        Intrinsics.checkNotNullParameter(showDataList, "showDataList");
        this.manager = manager;
        this.recycleView = recycleView;
        this.showDataList = showDataList;
        this.downloadTasksMap = new LinkedHashMap();
    }

    private final void receiveDelete(DownloadTask downloadTask) {
        List<DownloadTask> list = this.downloadTasks;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadTasks");
        }
        Iterator<DownloadTask> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            DownloadTask next = it2.next();
            String crc_link_type_val = next.getCrc_link_type_val();
            Intrinsics.checkNotNull(downloadTask);
            if (Intrinsics.areEqual(crc_link_type_val, downloadTask.getCrc_link_type_val())) {
                this.downloadTasksMap.remove(next.getCrc_link_type_val());
                it2.remove();
                for (CommonListMainData commonListMainData : this.showDataList) {
                    if (commonListMainData.getType() == 2) {
                        Object any = commonListMainData.getAny();
                        Objects.requireNonNull(any, "null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
                        recivedDeleteFinal((CollectionBeanSubBusiness) any, downloadTask);
                    } else if (commonListMainData.getType() == 3) {
                        Object any2 = commonListMainData.getAny();
                        Objects.requireNonNull(any2, "null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
                        CollectionBeanSubBusiness game_info = ((FindChoiceBannerData) any2).getGame_info();
                        Intrinsics.checkNotNullExpressionValue(game_info, "subp.game_info");
                        recivedDeleteFinal(game_info, downloadTask);
                    }
                }
            }
        }
        RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        adapter.notifyDataSetChanged();
    }

    private final void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.C3(map.get(downloadTask.getCrc_link_type_val()));
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            if (adapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            }
            adapter.notifyDataSetChanged();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private final void receiveStart(DownloadTask downloadTask) {
        UtilsMy.C3(downloadTask);
        Map<String, DownloadTask> map = this.downloadTasksMap;
        Intrinsics.checkNotNull(downloadTask);
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            List<DownloadTask> list = this.downloadTasks;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("downloadTasks");
            }
            list.add(downloadTask);
            Map<String, DownloadTask> map2 = this.downloadTasksMap;
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            Intrinsics.checkNotNullExpressionValue(crc_link_type_val, "downloadTask.crc_link_type_val");
            map2.put(crc_link_type_val, downloadTask);
        }
        updateDowStateList(downloadTask);
        RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        adapter.notifyDataSetChanged();
    }

    private final void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            List<DownloadTask> list = this.downloadTasks;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("downloadTasks");
            }
            list.add(downloadTask);
            Map<String, DownloadTask> map2 = this.downloadTasksMap;
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            Intrinsics.checkNotNullExpressionValue(crc_link_type_val, "downloadTask.crc_link_type_val");
            map2.put(crc_link_type_val, downloadTask);
        }
        updateDowStateList(downloadTask);
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 != null) {
            downloadTask2.setStatus(downloadTask.getStatus());
            downloadTask2.setVer(downloadTask.getVer());
            downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
            downloadTask2.setSource_ver(downloadTask.getSource_ver());
            RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
            if (adapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            }
            adapter.notifyDataSetChanged();
        }
    }

    private final void recivedDeleteFinal(CollectionBeanSubBusiness collectionBeanSubBusiness, DownloadTask downloadTask) {
        if (collectionBeanSubBusiness.getMod_info() != null) {
            Map<String, DownloadTask> map = this.downloadTasksMap;
            ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
            Intrinsics.checkNotNullExpressionValue(mod_info, "item.mod_info");
            DownloadTask downloadTask2 = map.get(mod_info.getMod_game_id());
            DownloadTask downloadTask3 = this.downloadTasksMap.get(collectionBeanSubBusiness.getGame_id());
            if (downloadTask2 == null && downloadTask3 == null) {
                collectionBeanSubBusiness.setDownloadTask(null);
            } else if (downloadTask2 != null) {
                collectionBeanSubBusiness.setDownloadTask(downloadTask2);
            } else if (downloadTask3 != null) {
                collectionBeanSubBusiness.setDownloadTask(downloadTask3);
            } else if (Intrinsics.areEqual(collectionBeanSubBusiness.getGame_id(), downloadTask.getCrc_link_type_val())) {
                collectionBeanSubBusiness.setDownloadTask(null);
            }
        } else if (Intrinsics.areEqual(collectionBeanSubBusiness.getGame_id(), downloadTask.getCrc_link_type_val())) {
            collectionBeanSubBusiness.setDownloadTask(null);
        }
    }

    private final void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CommonListMainData commonListMainData : this.showDataList) {
                if (commonListMainData.getType() == 2) {
                    Object any = commonListMainData.getAny();
                    if (any != null) {
                        updateDowStateListFinal((CollectionBeanSubBusiness) any, downloadTask);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
                    }
                } else if (commonListMainData.getType() != 3) {
                    continue;
                } else {
                    Object any2 = commonListMainData.getAny();
                    if (any2 != null) {
                        CollectionBeanSubBusiness game_info = ((FindChoiceBannerData) any2).getGame_info();
                        Intrinsics.checkNotNullExpressionValue(game_info, "subp.game_info");
                        updateDowStateListFinal(game_info, downloadTask);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private final void updateDowStateListFinal(CollectionBeanSubBusiness collectionBeanSubBusiness, DownloadTask downloadTask) {
        if (collectionBeanSubBusiness.getMod_info() != null) {
            ModInfoBean modInfoBean = collectionBeanSubBusiness.getMod_info();
            Map<String, DownloadTask> map = this.downloadTasksMap;
            Intrinsics.checkNotNullExpressionValue(modInfoBean, "modInfoBean");
            DownloadTask downloadTask2 = map.get(modInfoBean.getMain_game_id());
            boolean z3 = true;
            boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
            DownloadTask downloadTask3 = this.downloadTasksMap.get(modInfoBean.getMod_game_id());
            z3 = (downloadTask3 == null || downloadTask3.getStatus() != 5) ? false : false;
            if (z3 && z4) {
                if (Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), collectionBeanSubBusiness.getCrc_sign_id())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                }
            } else if (z3) {
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    String crc_link_type_val = downloadTask.getCrc_link_type_val();
                    ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                    Intrinsics.checkNotNullExpressionValue(mod_info, "sub.mod_info");
                    if (Intrinsics.areEqual(crc_link_type_val, mod_info.getMod_game_id())) {
                        collectionBeanSubBusiness.setDownloadTask(downloadTask);
                    }
                }
            } else if (z4) {
                if (Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), collectionBeanSubBusiness.getCrc_sign_id())) {
                    collectionBeanSubBusiness.setDownloadTask(downloadTask);
                }
            } else {
                DownloadTask downloadTask4 = null;
                if (collectionBeanSubBusiness.getMod_info() != null) {
                    f G = f.G();
                    ModInfoBean mod_info2 = collectionBeanSubBusiness.getMod_info();
                    Intrinsics.checkNotNullExpressionValue(mod_info2, "sub.mod_info");
                    downloadTask4 = G.B(mod_info2.getMod_game_id());
                }
                if (downloadTask4 == null) {
                    downloadTask4 = f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                }
                if (downloadTask4 == null || !Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), downloadTask4.getCrc_link_type_val())) {
                    return;
                }
                collectionBeanSubBusiness.setDownloadTask(downloadTask);
            }
        } else if (Intrinsics.areEqual(collectionBeanSubBusiness.getGame_id(), downloadTask.getCrc_link_type_val())) {
            collectionBeanSubBusiness.setDownloadTask(downloadTask);
        }
    }

    private final void updateProgressPartly() {
        List<CommonListMainData> list = this.showDataList;
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            int findFirstVisibleItemPosition = this.manager.findFirstVisibleItemPosition();
            int findLastVisibleItemPosition = this.manager.findLastVisibleItemPosition();
            if (findFirstVisibleItemPosition <= findLastVisibleItemPosition) {
                while (findFirstVisibleItemPosition < this.showDataList.size()) {
                    if (findFirstVisibleItemPosition >= 0) {
                        CommonListMainData commonListMainData = this.showDataList.get(findFirstVisibleItemPosition);
                        if (commonListMainData.getType() == 2) {
                            Object any = commonListMainData.getAny();
                            if (any != null) {
                                DownloadTask downloadTask = ((CollectionBeanSubBusiness) any).getDownloadTask();
                                if (downloadTask != null && (downloadTask.getStatus() == 2 || downloadTask.getStatus() == 12)) {
                                    RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
                                    if (adapter == null) {
                                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                                    }
                                    adapter.notifyItemChanged(findFirstVisibleItemPosition, "progress");
                                }
                            } else {
                                throw new NullPointerException("null cannot be cast to non-null type com.join.mgps.business.CollectionBeanSubBusiness");
                            }
                        }
                    }
                    if (findFirstVisibleItemPosition == findLastVisibleItemPosition) {
                        return;
                    }
                    findFirstVisibleItemPosition++;
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    @NotNull
    public final RecyclerView.Adapter<RecyclerView.ViewHolder> getAdapter() {
        RecyclerView.Adapter<RecyclerView.ViewHolder> adapter = this.adapter;
        if (adapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        }
        return adapter;
    }

    @NotNull
    public final List<DownloadTask> getDownloadTasks() {
        List<DownloadTask> list = this.downloadTasks;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadTasks");
        }
        return list;
    }

    @NotNull
    public final Map<String, DownloadTask> getDownloadTasksMap() {
        return this.downloadTasksMap;
    }

    @NotNull
    public final LinearLayoutManager getManager() {
        return this.manager;
    }

    @NotNull
    public final RecyclerView getRecycleView() {
        return this.recycleView;
    }

    public final void initData(@NotNull RecyclerView.Adapter<RecyclerView.ViewHolder> adapterx) {
        Intrinsics.checkNotNullParameter(adapterx, "adapterx");
        List<DownloadTask> d4 = f.G().d();
        Intrinsics.checkNotNullExpressionValue(d4, "DownloadTaskManager.getInstance().findAll()");
        this.downloadTasks = d4;
        if (d4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("downloadTasks");
        }
        if (d4.size() > 0) {
            List<DownloadTask> list = this.downloadTasks;
            if (list == null) {
                Intrinsics.throwUninitializedPropertyAccessException("downloadTasks");
            }
            for (DownloadTask downloadTask : list) {
                Map<String, DownloadTask> map = this.downloadTasksMap;
                String crc_link_type_val = downloadTask.getCrc_link_type_val();
                Intrinsics.checkNotNullExpressionValue(crc_link_type_val, "task.crc_link_type_val");
                map.put(crc_link_type_val, downloadTask);
            }
        }
        this.adapter = adapterx;
    }

    public final void onEventMainThread(@NotNull l downloadTaskEvent) {
        Intrinsics.checkNotNullParameter(downloadTaskEvent, "downloadTaskEvent");
        DownloadTask a4 = downloadTaskEvent.a();
        int c4 = downloadTaskEvent.c();
        if (c4 != 2 && c4 != 3) {
            if (c4 != 5) {
                if (c4 == 6) {
                    receiveError(a4);
                    return;
                } else if (c4 == 7) {
                    receiveDelete(a4);
                    return;
                } else if (c4 == 8) {
                    if (!this.downloadTasksMap.isEmpty()) {
                        updateProgressPartly();
                        return;
                    }
                    return;
                } else if (c4 != 48) {
                    switch (c4) {
                        case 10:
                        case 12:
                        case 13:
                            break;
                        case 11:
                            break;
                        default:
                            return;
                    }
                }
            }
            receiveSuccess(a4);
            return;
        }
        receiveStart(a4);
    }

    public final void setAdapter(@NotNull RecyclerView.Adapter<RecyclerView.ViewHolder> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "<set-?>");
        this.adapter = adapter;
    }

    public final void setDownloadTasks(@NotNull List<DownloadTask> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.downloadTasks = list;
    }

    public final void setDownloadTasksMap(@NotNull Map<String, DownloadTask> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.downloadTasksMap = map;
    }

    public final void setManager(@NotNull LinearLayoutManager linearLayoutManager) {
        Intrinsics.checkNotNullParameter(linearLayoutManager, "<set-?>");
        this.manager = linearLayoutManager;
    }

    public final void setRecycleView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "<set-?>");
        this.recycleView = recyclerView;
    }

    public final void updateDowState(@NotNull CollectionBeanSubBusiness sub) {
        Intrinsics.checkNotNullParameter(sub, "sub");
        if (sub.getMod_info() != null) {
            ModInfoBean modInfoBean = sub.getMod_info();
            Map<String, DownloadTask> map = this.downloadTasksMap;
            Intrinsics.checkNotNullExpressionValue(modInfoBean, "modInfoBean");
            DownloadTask downloadTask = map.get(modInfoBean.getMain_game_id());
            boolean z3 = true;
            boolean z4 = downloadTask != null && downloadTask.getStatus() == 5;
            DownloadTask downloadTask2 = this.downloadTasksMap.get(modInfoBean.getMod_game_id());
            z3 = (downloadTask2 == null || downloadTask2.getStatus() != 5) ? false : false;
            DownloadTask downloadTask3 = null;
            if (z3 && z4) {
                if (Intrinsics.areEqual(downloadTask != null ? downloadTask.getCrc_link_type_val() : null, sub.getCrc_sign_id())) {
                    sub.setDownloadTask(downloadTask);
                    return;
                }
                return;
            } else if (z3) {
                if (sub.getMod_info() != null) {
                    String crc_link_type_val = downloadTask2 != null ? downloadTask2.getCrc_link_type_val() : null;
                    ModInfoBean mod_info = sub.getMod_info();
                    Intrinsics.checkNotNullExpressionValue(mod_info, "sub.mod_info");
                    if (Intrinsics.areEqual(crc_link_type_val, mod_info.getMod_game_id())) {
                        sub.setDownloadTask(downloadTask2);
                        return;
                    }
                    return;
                }
                return;
            } else if (z4) {
                if (Intrinsics.areEqual(downloadTask != null ? downloadTask.getCrc_link_type_val() : null, sub.getCrc_sign_id())) {
                    sub.setDownloadTask(downloadTask);
                    return;
                }
                return;
            } else {
                if (sub.getMod_info() != null) {
                    f G = f.G();
                    ModInfoBean mod_info2 = sub.getMod_info();
                    Intrinsics.checkNotNullExpressionValue(mod_info2, "sub.mod_info");
                    downloadTask3 = G.B(mod_info2.getMod_game_id());
                }
                if (downloadTask3 == null) {
                    downloadTask3 = f.G().B(sub.getCrc_sign_id());
                }
                sub.setDownloadTask(downloadTask3);
                return;
            }
        }
        DownloadTask downloadTask4 = this.downloadTasksMap.get(sub.getGame_id());
        if (downloadTask4 != null) {
            sub.setDownloadTask(downloadTask4);
        }
    }
}
