package com.join.mgps.helper;

import android.content.Context;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.j256.ormlite.dao.ForeignCollection;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.utils.a;
import com.join.mgps.business.CollectionBeanSubBusiness;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DownloadUrlBean;
import com.join.mgps.dto.FightSubGameInfoDataBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.va.overmind.e;
import g1.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n1.l;
/* loaded from: classes4.dex */
public class MGFightUtils {
    public static CollectionBeanSub collectionToTask(DownloadTask downloadTask) {
        CollectionBeanSub collectionBeanSub = new CollectionBeanSub();
        collectionBeanSub.setCfg_down_url(downloadTask.getCfg_down_url());
        collectionBeanSub.setCfg_ver_name(downloadTask.getCfg_ver_name());
        collectionBeanSub.setCfg_ver(downloadTask.getCfg_ver());
        collectionBeanSub.setGame_id(downloadTask.getCrc_link_type_val());
        collectionBeanSub.setGame_name(downloadTask.getShowName());
        collectionBeanSub.setVer(downloadTask.getVer());
        collectionBeanSub.setVer_name(downloadTask.getVer_name());
        collectionBeanSub.setIco_remote(downloadTask.getPortraitURL());
        collectionBeanSub.setPackage_name(downloadTask.getPackageName());
        collectionBeanSub.setScreenshot_pic(downloadTask.getScreenshot_pic());
        collectionBeanSub.setIs_fight(downloadTask.isIs_fight());
        collectionBeanSub.setFight_type(downloadTask.getFight_type());
        collectionBeanSub.setFight_screenshot_pic(downloadTask.getFight_screenshot_pic());
        collectionBeanSub.setPlugin_num(downloadTask.getPlugin_num());
        collectionBeanSub.setForum_switch(downloadTask.isPlugin_area());
        collectionBeanSub.setPlugin_num(downloadTask.getPlugin_num());
        collectionBeanSub.setForum_id(downloadTask.getPlugin_area_val());
        collectionBeanSub.setTag_info(downloadTask.getTipBeans());
        collectionBeanSub.setSize(downloadTask.getSize() + "");
        return collectionBeanSub;
    }

    public static void distinctItems(List<CollectionBeanSub> list, List<CollectionBeanSub> list2) {
        try {
            for (CollectionBeanSub collectionBeanSub : list) {
                Iterator<CollectionBeanSub> it2 = list2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (it2.next().getGame_id().equals(collectionBeanSub.getGame_id())) {
                            it2.remove();
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static List<CollectionBeanSub> getLoaclData(int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        List<DownloadTask> M = f.G().M(null);
        if (M != null && M.size() > 0) {
            for (DownloadTask downloadTask : M) {
                if (i2 == 4) {
                    if (downloadTask.isIs_fight() == 1) {
                        if (downloadTask.isOpen()) {
                            arrayList3.add(collectionToTask(downloadTask));
                        } else {
                            arrayList2.add(collectionToTask(downloadTask));
                        }
                    }
                } else if (i2 == downloadTask.getFight_type() && downloadTask.isIs_fight() == 1) {
                    if (downloadTask.isOpen()) {
                        arrayList3.add(collectionToTask(downloadTask));
                    } else {
                        arrayList2.add(collectionToTask(downloadTask));
                    }
                }
            }
        }
        arrayList.addAll(arrayList2);
        arrayList.addAll(arrayList3);
        return arrayList;
    }

    private List<CollectionBeanSub> removeLocalDbFromNetData(List<CollectionBeanSub> list, List<DownloadTask> list2) {
        Iterator<CollectionBeanSub> it2 = list.iterator();
        while (it2.hasNext()) {
            CollectionBeanSub next = it2.next();
            Iterator<DownloadTask> it3 = list2.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                } else if (next.getGame_id().equals(it3.next().getCrc_link_type_val())) {
                    it2.remove();
                    break;
                }
            }
        }
        return list;
    }

    public static FightSubGameInfoDataBean setMatchAndLocalData(WarMatchAndLocalTable warMatchAndLocalTable, DownloadTask downloadTask) {
        FightSubGameInfoDataBean fightSubGameInfoDataBean = new FightSubGameInfoDataBean();
        fightSubGameInfoDataBean.setCrc_sign_id(warMatchAndLocalTable.getCrc_link_type_val());
        fightSubGameInfoDataBean.setFight_screenshot_pic(warMatchAndLocalTable.getFight_screenshot_pic());
        fightSubGameInfoDataBean.setGame_name(warMatchAndLocalTable.getShowName());
        fightSubGameInfoDataBean.setPic_remote(warMatchAndLocalTable.getPic_remote());
        return fightSubGameInfoDataBean;
    }

    public static List<DownloadTask> updateFightStatus(List<DownloadTask> list, List<DownloadTask> list2) {
        if (list2 != null && list2.size() > 0) {
            for (DownloadTask downloadTask : list2) {
                Iterator<DownloadTask> it2 = list.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        DownloadTask next = it2.next();
                        if (downloadTask.getCrc_link_type_val().equals(next.getCrc_link_type_val())) {
                            updateFightTask(next, downloadTask);
                            break;
                        }
                    }
                }
            }
        }
        return list;
    }

    public static void updateFightTask(DownloadTask downloadTask, DownloadTask downloadTask2) {
        downloadTask.setCrc_link_type_val(downloadTask2.getCrc_link_type_val());
        downloadTask.setCfg_down_url(downloadTask2.getCfg_down_url());
        downloadTask.setCfg_ver_name(downloadTask2.getCfg_ver_name());
        downloadTask.setCfg_ver(downloadTask2.getCfg_ver());
        downloadTask.setDownloadTask(downloadTask2);
        downloadTask.setDownloadType(downloadTask2.getDownloadType());
        downloadTask.setDtype(downloadTask2.getDtype());
        downloadTask.setFinishTime(downloadTask2.getFinishTime());
        downloadTask.setFight_type(downloadTask2.getFight_type());
        downloadTask.setFight_screenshot_pic(downloadTask2.getFight_screenshot_pic());
        downloadTask.setFileType(downloadTask2.getFileType());
        downloadTask.setIs_fight(downloadTask2.isIs_fight());
        downloadTask.setStatus(downloadTask2.getStatus());
        downloadTask.setVer(downloadTask2.getVer());
        downloadTask.setVer_name(downloadTask2.getVer_name());
        downloadTask.setPortraitURL(downloadTask2.getPortraitURL());
        downloadTask.setPackageName(downloadTask2.getPackageName());
        downloadTask.setPlugin_area(downloadTask2.isPlugin_area());
        downloadTask.setPlugin_num(downloadTask2.getPlugin_num());
        downloadTask.setPlugin_area_val(downloadTask2.getPlugin_area_val());
        downloadTask.setScreenshot_pic(downloadTask2.getScreenshot_pic());
        downloadTask.setSource_down_path(downloadTask2.getSource_down_path());
        downloadTask.setSource_ver(downloadTask2.getSource_ver());
        downloadTask.setShowName(downloadTask2.getShowName());
        downloadTask.setRomType(downloadTask2.getRomType());
        downloadTask.setKeyword(downloadTask2.getKeyword());
        downloadTask.setMimeType(downloadTask2.getMimeType());
        downloadTask.setLastCompleteSize(downloadTask2.getLastCompleteSize());
        downloadTask.setGameZipPath(downloadTask2.getGameZipPath());
        if (downloadTask2.isOpen()) {
            downloadTask.setOpen(true);
        } else {
            downloadTask.setOpen(false);
        }
        downloadTask.setTips(downloadTask2.getTips());
        downloadTask.setSize(downloadTask2.getSize());
        downloadTask.setLastTime(downloadTask2.getLastTime());
    }

    public static void updateStatus(Context context, List<CollectionBeanSubBusiness> list, List<DownloadTask> list2, Map<String, DownloadTask> map) {
        if (list2 == null) {
            return;
        }
        for (CollectionBeanSubBusiness collectionBeanSubBusiness : list) {
            Iterator<DownloadTask> it2 = list2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    DownloadTask next = it2.next();
                    if (collectionBeanSubBusiness.getMod_info() != null) {
                        ModInfoBean mod_info = collectionBeanSubBusiness.getMod_info();
                        DownloadTask downloadTask = map.get(mod_info.getMain_game_id());
                        boolean z3 = false;
                        boolean c4 = (downloadTask == null || downloadTask.getStatus() != 5) ? false : a.g0(context).c(context, downloadTask.getPackageName());
                        DownloadTask downloadTask2 = map.get(mod_info.getMod_game_id());
                        if (downloadTask2 != null && downloadTask2.getStatus() == 5) {
                            z3 = e.p().D(downloadTask2.getPackageName());
                        }
                        if (!z3 || !c4) {
                            if (z3) {
                                if (collectionBeanSubBusiness.getMod_info() != null && next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getMod_info().getMod_game_id())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            } else if (c4) {
                                if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            } else {
                                DownloadTask B = collectionBeanSubBusiness.getMod_info() != null ? f.G().B(collectionBeanSubBusiness.getMod_info().getMod_game_id()) : null;
                                if (B == null) {
                                    B = f.G().B(collectionBeanSubBusiness.getCrc_sign_id());
                                }
                                if (B != null && next.getCrc_link_type_val().equals(B.getCrc_link_type_val())) {
                                    collectionBeanSubBusiness.setDownloadTask(next);
                                    break;
                                }
                            }
                        } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                            collectionBeanSubBusiness.setDownloadTask(next);
                            break;
                        }
                    } else if (next.getCrc_link_type_val().equals(collectionBeanSubBusiness.getCrc_sign_id())) {
                        collectionBeanSubBusiness.setDownloadTask(next);
                        break;
                    }
                }
            }
        }
    }

    public static WarMatchAndLocalTable warDataToTable(FightSubGameInfoDataBean fightSubGameInfoDataBean) {
        WarMatchAndLocalTable warMatchAndLocalTable = new WarMatchAndLocalTable();
        warMatchAndLocalTable.setAppSize(fightSubGameInfoDataBean.getAppSize());
        warMatchAndLocalTable.setCfg_down_url(fightSubGameInfoDataBean.getCfg_down_url());
        warMatchAndLocalTable.setCfg_ver(fightSubGameInfoDataBean.getCfg_ver());
        warMatchAndLocalTable.setCfg_ver_name(fightSubGameInfoDataBean.getCfg_ver_name());
        warMatchAndLocalTable.setCrc_link_type_val(fightSubGameInfoDataBean.getCrc_sign_id());
        warMatchAndLocalTable.setCdn_down_switch(fightSubGameInfoDataBean.getCdn_down_switch());
        warMatchAndLocalTable.setDown_url_remote(fightSubGameInfoDataBean.getDown_url_remote());
        warMatchAndLocalTable.setForum_switch(fightSubGameInfoDataBean.getForum_switch());
        warMatchAndLocalTable.setFight_screenshot_pic(fightSubGameInfoDataBean.getFight_screenshot_pic());
        warMatchAndLocalTable.setFight_fun(fightSubGameInfoDataBean.getFight_funv2());
        warMatchAndLocalTable.setFight_type(fightSubGameInfoDataBean.getFight_type());
        warMatchAndLocalTable.setForum_id(fightSubGameInfoDataBean.getForum_id());
        warMatchAndLocalTable.setGame_info_tpl_type(fightSubGameInfoDataBean.getGame_info_tpl_type());
        warMatchAndLocalTable.setGame_name(fightSubGameInfoDataBean.getGame_name());
        warMatchAndLocalTable.setIco_remote(fightSubGameInfoDataBean.getIco_remote());
        warMatchAndLocalTable.setInfo(fightSubGameInfoDataBean.getInfo());
        warMatchAndLocalTable.setIs_fight(1);
        warMatchAndLocalTable.setIs_network(fightSubGameInfoDataBean.getIs_network());
        warMatchAndLocalTable.setIs_world(fightSubGameInfoDataBean.getIs_world());
        warMatchAndLocalTable.setLock_sp(fightSubGameInfoDataBean.getLock_sp());
        warMatchAndLocalTable.setOther_down_switch(fightSubGameInfoDataBean.getOther_down_switch());
        warMatchAndLocalTable.setPackageName(fightSubGameInfoDataBean.getPackageName());
        warMatchAndLocalTable.setPlugin_lowest_ver(fightSubGameInfoDataBean.getPlugin_lowest_ver());
        warMatchAndLocalTable.setPlugin_num(fightSubGameInfoDataBean.getPlugin_num());
        warMatchAndLocalTable.setPlugin_screenshot(fightSubGameInfoDataBean.getPlugin_screenshot());
        warMatchAndLocalTable.setPic_remote(fightSubGameInfoDataBean.getPic_remote());
        warMatchAndLocalTable.setPlugin_lowest_ver_name(fightSubGameInfoDataBean.getPlugin_lowest_ver_name());
        warMatchAndLocalTable.setSource_ver(fightSubGameInfoDataBean.getSource_ver());
        warMatchAndLocalTable.setSource_down_url(fightSubGameInfoDataBean.getSource_down_url());
        warMatchAndLocalTable.setSource_ver_name(fightSubGameInfoDataBean.getSource_ver_name());
        warMatchAndLocalTable.setSync_memory(fightSubGameInfoDataBean.getSync_memory());
        warMatchAndLocalTable.setShowName(fightSubGameInfoDataBean.getGame_name());
        warMatchAndLocalTable.setScreenshot_pic(fightSubGameInfoDataBean.getScreenshot_pic());
        warMatchAndLocalTable.setDown_status(fightSubGameInfoDataBean.getDown_status());
        List<DownloadUrlBean> tp_down_url = fightSubGameInfoDataBean.getTp_down_url();
        if (tp_down_url == null) {
            tp_down_url = new ArrayList<>();
        }
        for (int i2 = 0; i2 < tp_down_url.size(); i2++) {
            DownloadUrlTable downloadUrlTable = new DownloadUrlTable(tp_down_url.get(i2));
            downloadUrlTable.setWarMatchAndLocalTable(warMatchAndLocalTable);
            l.n().m(downloadUrlTable);
        }
        warMatchAndLocalTable.setTips(JsonMapper.getInstance().toJson(fightSubGameInfoDataBean.getTag_info()));
        warMatchAndLocalTable.setUnzip_size(fightSubGameInfoDataBean.getUnzip_size());
        warMatchAndLocalTable.setVer(fightSubGameInfoDataBean.getVer());
        warMatchAndLocalTable.setVer_name(fightSubGameInfoDataBean.getVer_name());
        warMatchAndLocalTable.setWorld_shop(fightSubGameInfoDataBean.getWorld_shop());
        warMatchAndLocalTable.setWorld_area(fightSubGameInfoDataBean.getWorld_area());
        warMatchAndLocalTable.setGift_package_switch(fightSubGameInfoDataBean.getGift_package_switch());
        return warMatchAndLocalTable;
    }

    public static DownloadTask warDataToTask(WarMatchAndLocalTable warMatchAndLocalTable) {
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setDown_status(warMatchAndLocalTable.getDown_status());
        downloadTask.setCdn_down_switch(warMatchAndLocalTable.getCdn_down_switch());
        downloadTask.setCrc_link_type_val(warMatchAndLocalTable.getCrc_link_type_val());
        downloadTask.setCfg_down_url(warMatchAndLocalTable.getCfg_down_url());
        downloadTask.setCfg_ver_name(warMatchAndLocalTable.getCfg_ver_name());
        downloadTask.setCfg_ver(warMatchAndLocalTable.getCfg_ver());
        downloadTask.setDescribe(warMatchAndLocalTable.getInfo());
        downloadTask.setFight_fun(warMatchAndLocalTable.getFight_fun());
        downloadTask.setFight_type(warMatchAndLocalTable.getFight_type());
        downloadTask.setFight_screenshot_pic(warMatchAndLocalTable.getFight_screenshot_pic());
        downloadTask.setGame_info_tpl_type(warMatchAndLocalTable.getGame_info_tpl_type());
        downloadTask.setIs_fight(1);
        downloadTask.setIs_network(warMatchAndLocalTable.getIs_network());
        downloadTask.setIs_world(warMatchAndLocalTable.getIs_world());
        downloadTask.setLock_sp(warMatchAndLocalTable.getLock_sp());
        downloadTask.setName(warMatchAndLocalTable.getShowName());
        downloadTask.setOther_down_switch(warMatchAndLocalTable.getOther_down_switch());
        downloadTask.setPackageName(warMatchAndLocalTable.getPackageName());
        downloadTask.setPlugin_area(warMatchAndLocalTable.getForum_switch());
        downloadTask.setPlugin_area_val(warMatchAndLocalTable.getForum_id());
        downloadTask.setPlugin_num(warMatchAndLocalTable.getPlugin_num() + "");
        downloadTask.setPlugin_screenshot(warMatchAndLocalTable.getPlugin_screenshot());
        downloadTask.setPortraitURL(warMatchAndLocalTable.getIco_remote());
        downloadTask.setRomType(warMatchAndLocalTable.getPlugin_num() + "");
        downloadTask.setStatus(0);
        downloadTask.setShowSize(warMatchAndLocalTable.getAppSize());
        downloadTask.setScreenshot_pic(warMatchAndLocalTable.getScreenshot_pic());
        downloadTask.setSource_down_path(warMatchAndLocalTable.getSource_down_url());
        downloadTask.setSource_ver(warMatchAndLocalTable.getSource_ver());
        downloadTask.setShowName(warMatchAndLocalTable.getShowName());
        downloadTask.setSync_memory(warMatchAndLocalTable.getSync_memory());
        downloadTask.setSource_ver_name(warMatchAndLocalTable.getSource_ver_name());
        downloadTask.setTips(warMatchAndLocalTable.getTips());
        downloadTask.setPay_game_amount(warMatchAndLocalTable.getPay_game_amount());
        ForeignCollection<DownloadUrlTable> tp_down_url = warMatchAndLocalTable.getTp_down_url();
        ArrayList arrayList = new ArrayList();
        for (DownloadUrlTable downloadUrlTable : tp_down_url) {
            arrayList.add(downloadUrlTable.getDownUrlBean());
        }
        downloadTask.setTp_down_url(arrayList);
        downloadTask.setUnzip_size(warMatchAndLocalTable.getUnzip_size());
        downloadTask.setUrl(warMatchAndLocalTable.getDown_url_remote());
        downloadTask.setVer(warMatchAndLocalTable.getVer());
        downloadTask.setVer_name(warMatchAndLocalTable.getVer_name());
        downloadTask.setWorld_area(warMatchAndLocalTable.getWorld_area());
        downloadTask.setWorld_shop(warMatchAndLocalTable.getWorld_shop());
        downloadTask.setGift_package_switch(warMatchAndLocalTable.getGift_package_switch());
        downloadTask.setPay_game_amount(warMatchAndLocalTable.getGift_package_switch());
        downloadTask.setDownloadTask(downloadTask);
        return downloadTask;
    }
}
