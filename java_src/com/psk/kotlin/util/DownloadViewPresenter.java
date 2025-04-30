package com.psk.kotlin.util;

import androidx.recyclerview.widget.RecyclerView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.kotlin.ui.findgame.data.FindChoiceBannerData;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.event.l;
import g1.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DownloadViewPresenter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010*\u001a\b\u0012\u0004\u0012\u00020)0\u001c¢\u0006\u0004\b+\u0010\"J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0014\u0010\r\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nJ\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011R.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R(\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020)0\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u001e¨\u0006,"}, d2 = {"Lcom/psk/kotlin/util/DownloadViewPresenter;", "", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "downloadTask", "", "receiveStart", "receiveSuccess", "receiveDelete", "receiveError", "updateDowStateList", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "adapterx", "initData", "Lcom/join/mgps/event/l;", "downloadTaskEvent", "onEventMainThread", "Lcom/join/mgps/business/CollectionBeanSubBusiness;", "collectionBeanSubBusiness", "updateDowState", "", "", "downloadTasksMap", "Ljava/util/Map;", "getDownloadTasksMap", "()Ljava/util/Map;", "setDownloadTasksMap", "(Ljava/util/Map;)V", "", "downloadTasks", "Ljava/util/List;", "getDownloadTasks", "()Ljava/util/List;", "setDownloadTasks", "(Ljava/util/List;)V", "adapter", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "getAdapter", "()Landroidx/recyclerview/widget/RecyclerView$Adapter;", "setAdapter", "(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V", "Lcom/psk/kotlin/util/CommonListMainData;", "showDataList", "<init>", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes4.dex */
public final class DownloadViewPresenter {
    public RecyclerView.Adapter<RecyclerView.ViewHolder> adapter;
    @NotNull
    private List<DownloadTask> downloadTasks;
    @NotNull
    private Map<String, DownloadTask> downloadTasksMap;
    private List<CommonListMainData> showDataList;

    public DownloadViewPresenter(@NotNull List<CommonListMainData> showDataList) {
        Intrinsics.checkNotNullParameter(showDataList, "showDataList");
        this.showDataList = showDataList;
        this.downloadTasksMap = new LinkedHashMap();
        this.downloadTasks = new ArrayList();
    }

    private final void receiveDelete(DownloadTask downloadTask) {
        Iterator<DownloadTask> it2 = this.downloadTasks.iterator();
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
                        CollectionBeanSubBusiness collectionBeanSubBusiness = (CollectionBeanSubBusiness) any;
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
            this.downloadTasks.add(downloadTask);
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
            this.downloadTasks.add(downloadTask);
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

    private final void updateDowStateList(DownloadTask downloadTask) {
        try {
            for (CommonListMainData commonListMainData : this.showDataList) {
                if (commonListMainData.getType() == 3) {
                    Object any = commonListMainData.getAny();
                    if (any != null) {
                        CollectionBeanSubBusiness game_info = ((FindChoiceBannerData) any).getGame_info();
                        Intrinsics.checkNotNullExpressionValue(game_info, "subp.game_info");
                        if (game_info.getMod_info() != null) {
                            ModInfoBean modInfoBean = game_info.getMod_info();
                            Map<String, DownloadTask> map = this.downloadTasksMap;
                            Intrinsics.checkNotNullExpressionValue(modInfoBean, "modInfoBean");
                            DownloadTask downloadTask2 = map.get(modInfoBean.getMain_game_id());
                            boolean z3 = true;
                            boolean z4 = downloadTask2 != null && downloadTask2.getStatus() == 5;
                            DownloadTask downloadTask3 = this.downloadTasksMap.get(modInfoBean.getMod_game_id());
                            if (downloadTask3 == null || downloadTask3.getStatus() != 5) {
                                z3 = false;
                            }
                            if (z3 && z4) {
                                if (Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), game_info.getCrc_sign_id())) {
                                    game_info.setDownloadTask(downloadTask);
                                    return;
                                }
                            } else if (z3) {
                                if (game_info.getMod_info() != null) {
                                    String crc_link_type_val = downloadTask.getCrc_link_type_val();
                                    ModInfoBean mod_info = game_info.getMod_info();
                                    Intrinsics.checkNotNullExpressionValue(mod_info, "sub.mod_info");
                                    if (Intrinsics.areEqual(crc_link_type_val, mod_info.getMod_game_id())) {
                                        game_info.setDownloadTask(downloadTask);
                                        return;
                                    }
                                } else {
                                    continue;
                                }
                            } else if (z4) {
                                if (Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), game_info.getCrc_sign_id())) {
                                    game_info.setDownloadTask(downloadTask);
                                    return;
                                }
                            } else {
                                DownloadTask downloadTask4 = null;
                                if (game_info.getMod_info() != null) {
                                    f G = f.G();
                                    ModInfoBean mod_info2 = game_info.getMod_info();
                                    Intrinsics.checkNotNullExpressionValue(mod_info2, "sub.mod_info");
                                    downloadTask4 = G.B(mod_info2.getMod_game_id());
                                }
                                if (downloadTask4 == null) {
                                    downloadTask4 = f.G().B(game_info.getCrc_sign_id());
                                }
                                if (downloadTask4 != null && Intrinsics.areEqual(downloadTask.getCrc_link_type_val(), downloadTask4.getCrc_link_type_val())) {
                                    game_info.setDownloadTask(downloadTask);
                                    return;
                                }
                            }
                        } else if (Intrinsics.areEqual(game_info.getGame_id(), downloadTask.getCrc_link_type_val())) {
                            game_info.setDownloadTask(downloadTask);
                            return;
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type com.join.kotlin.ui.findgame.data.FindChoiceBannerData");
                    }
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
        return this.downloadTasks;
    }

    @NotNull
    public final Map<String, DownloadTask> getDownloadTasksMap() {
        return this.downloadTasksMap;
    }

    public final void initData(@NotNull RecyclerView.Adapter<RecyclerView.ViewHolder> adapterx) {
        Intrinsics.checkNotNullParameter(adapterx, "adapterx");
        List<DownloadTask> d4 = f.G().d();
        Intrinsics.checkNotNullExpressionValue(d4, "DownloadTaskManager.getInstance().findAll()");
        this.downloadTasks = d4;
        if (d4.size() > 0) {
            for (DownloadTask downloadTask : this.downloadTasks) {
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

    public final void updateDowState(@NotNull CollectionBeanSubBusiness collectionBeanSubBusiness) {
        Intrinsics.checkNotNullParameter(collectionBeanSubBusiness, "collectionBeanSubBusiness");
        if (this.downloadTasksMap.get(collectionBeanSubBusiness.getGame_id()) != null) {
            collectionBeanSubBusiness.setDownloadTask(this.downloadTasksMap.get(collectionBeanSubBusiness.getGame_id()));
        }
    }
}
