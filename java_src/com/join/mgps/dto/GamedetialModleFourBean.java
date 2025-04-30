package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.d2;
import com.join.mgps.activity.gamedetail.GamedetailViewbean;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.GameCommitListBean;
import com.join.mgps.dto.GameFromPopoWinBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class GamedetialModleFourBean extends DownloadPointBase {
    private List<BTActivityBean> activities;
    private GamedetialBottomEntry activity_entry;
    private long actual_size;
    private String allow_start_up_ad;
    private String appSize;
    private GameDetialAuxiliaryBean auxiliary_tool;
    private String background_color;
    private List<BannerBean> banner;
    private String bbs_strategy_contribute_url;
    private int bbs_strategy_switch;
    private String bespeak_count;
    private int bespeak_switch;
    private int bt_game_coupon_count;
    private List<RecommendGameBean> bt_game_recommend;
    private int bt_game_switch;
    private int cdn_down_switch;
    private String cfg_down_url;
    private String cfg_lowest_ver;
    private String cfg_ver;
    private String cfg_ver_name;
    private String comment_count;
    private String comment_score_switch;
    private int comment_switch;
    private List<CommentBaseBean> commitDataBeanList;
    private List<GameCommitListBean.GameCommitList> commitListData;
    private int community_entrance_switch;
    private String community_entrance_tag;
    private String company_name;
    private List<RecommendGameBean> company_recommend;
    private String crc_sign_id;
    private List<TipBean> custom_tag_info;
    private int del_tag;
    private String dev_info;
    private List<RecommendGameBean> down_and_down;
    private int down_count;
    private int down_count_manual;
    private int down_status;
    private String down_url_remote;
    private int down_weight;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String edit_recommend;
    private List<BannerBean> fast_entry_no4;
    private String fight_funv2;
    private String fight_screenshot_pic;
    private int fight_type;
    private String follow_background_img;
    private int formula_weight;
    private long forum_id;
    private int forum_switch;
    private int game_book;
    private List<GameDetialBookTag> game_book_tag;
    private List<TipBean> game_bt_tag;
    private String game_buy_rebate;
    private String game_comment_count;
    private String game_company_id;
    private List<BTGameCouponBean> game_coupon_for_bt_game;
    private List<GameVoucherBean> game_coupon_list;
    private String game_describe_second;
    private GamedetialMoreBean game_detailed;
    private String game_exclusive_benefits;
    private String game_exclusive_benefits_qq;
    private List<GameFromPopoWinBean.DataBean> game_favorites_top5;
    private int game_follow;
    private List<GiftPackageDataInfoBean> game_gift_package;
    private RecomDatabean game_handle_entrance;
    private String game_ico_remote;
    private String game_id;
    private String game_info;
    private String game_info_top_pic;
    private String game_info_top_video_url;
    private String game_info_tpl_type;
    private String game_name;
    private int game_open_switch;
    private long game_open_time;
    private List<GamePromptBean> game_prompt;
    private GameDetailRankingTag game_ranking_pos;
    private GameScore game_score;
    private List<ScreenshotGamedetialBean> game_screen_shot;
    private List<ServiceState> game_server_state;
    private int game_server_switch;
    private GameDetialStrategy game_strategy;
    private String game_upgrade_info;
    private int game_upgrade_info_switch;
    private int game_upgrade_state;
    private BtGameWelfare game_welfare;
    private String gif_slide_pic;
    private int gift_package_switch;
    private boolean has_more_activities;
    private String ico_remote;
    private String info;
    private int is_fight;
    private int is_network;
    private int is_started;
    private int is_world;
    private int last_week_down_count;
    private int lock_sp;
    private int max_an_compatible_ver;
    private int max_battle_count;
    private int max_battle_view_count;
    private int min_an_compatible_ver;
    private ModInfoBean mod_info;
    private int other_down_switch;
    private String packageName;
    private PanelSwitch panel_switch;
    private String papa_explain;
    PayTagInfo pay_tag_info;
    private List<DetialShowImageBean> pic_info;
    private int pic_position;
    private String player_qq;
    private String plugin_lowest_ver;
    private String plugin_lowest_ver_name;
    private String plugin_num = "";
    private int plugin_screenshot;
    private String qq_qun;
    private RankingInfoBean ranking_info;
    private int ranking_weight;
    private int recommend_adinfo_switch;
    private List<RecommendGameBean> recommend_game;
    private String recommend_game_big_gif;
    private String recommend_game_big_pic;
    private int recommend_game_switch;
    private List<RecommendInfomationBean> recommend_information;
    private int recommend_information_switch;
    private long residual_time;
    private String rom_lowest_ver;
    private GameDetailRoomCfgInfo room_cfg_info;
    private String score;
    private String score_count;
    private String score_count_manual;
    private String screenshot_pic;
    private String sdk_active_id;
    private CommentAllListBean.SelfCommentBean self_comment;
    private String server_qq;
    private DetialShareData share_config;
    private String share_url;
    private String sharer;
    private List<CollectionBeanSub> similar_games_recommend;
    private SingleGameModInfoBean single_game_mod_info;
    private String size;
    private String slide_position;
    private String source_down_url;
    private String source_lowest_ver;
    private String source_ver;
    private String source_ver_name;
    private TipNew sp_tag_info;
    private int sp_tpl_two_banner_switch;
    private int sp_tpl_two_position;
    private StandaloneCloudArchive standalone_cloud_archive;
    private int start_count;
    private String sync_memory;
    private ArrayList<TipBean> tag_info;
    private long times;
    private List<DownloadUrlBean> tp_down_url;
    private String unzip_size;
    private String vedio_cover_pic;
    private String vedio_url;
    private String ver;
    private String ver_name;
    private GamedetailViewbean video_and_cover;
    private int world_area;
    private int world_shop;

    public List<BTActivityBean> getActivities() {
        return this.activities;
    }

    public GamedetialBottomEntry getActivity_entry() {
        return this.activity_entry;
    }

    public long getActual_size() {
        return this.actual_size;
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getAppSize() {
        return this.appSize;
    }

    public GameDetialAuxiliaryBean getAuxiliary_tool() {
        return this.auxiliary_tool;
    }

    public String getBackground_color() {
        return this.background_color;
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public String getBbs_strategy_contribute_url() {
        return this.bbs_strategy_contribute_url;
    }

    public int getBbs_strategy_switch() {
        return this.bbs_strategy_switch;
    }

    public String getBespeak_count() {
        return this.bespeak_count;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public int getBt_game_coupon_count() {
        return this.bt_game_coupon_count;
    }

    public List<RecommendGameBean> getBt_game_recommend() {
        return this.bt_game_recommend;
    }

    public int getBt_game_switch() {
        return this.bt_game_switch;
    }

    public int getCdn_down_switch() {
        return this.cdn_down_switch;
    }

    public String getCfg_down_url() {
        return this.cfg_down_url;
    }

    public String getCfg_lowest_ver() {
        return this.cfg_lowest_ver;
    }

    public String getCfg_ver() {
        return this.cfg_ver;
    }

    public String getCfg_ver_name() {
        return this.cfg_ver_name;
    }

    public String getComment_count() {
        return this.comment_count;
    }

    public String getComment_score_switch() {
        return this.comment_score_switch;
    }

    public int getComment_switch() {
        return this.comment_switch;
    }

    public List<CommentBaseBean> getCommitDataBeanList() {
        return this.commitDataBeanList;
    }

    public List<GameCommitListBean.GameCommitList> getCommitListData() {
        return this.commitListData;
    }

    public int getCommunity_entrance_switch() {
        return this.community_entrance_switch;
    }

    public String getCommunity_entrance_tag() {
        return this.community_entrance_tag;
    }

    public String getCompany_name() {
        return this.company_name;
    }

    public List<RecommendGameBean> getCompany_recommend() {
        return this.company_recommend;
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public List<TipBean> getCustom_tag_info() {
        return this.custom_tag_info;
    }

    public int getDel_tag() {
        return this.del_tag;
    }

    public String getDev_info() {
        return this.dev_info;
    }

    public List<RecommendGameBean> getDown_and_down() {
        return this.down_and_down;
    }

    public int getDown_count() {
        return this.down_count;
    }

    public int getDown_count_manual() {
        return this.down_count_manual;
    }

    public int getDown_status() {
        int i2 = this.down_status;
        if (i2 == 2 && this.bespeak_switch == 1) {
            return 6;
        }
        return i2;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public int getDown_weight() {
        return this.down_weight;
    }

    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public DownloadTask getDownloadtaskDown() {
        DownloadTask downloadTask = new DownloadTask();
        int i2 = this.down_status;
        if (i2 == 2 && this.bespeak_switch == 1) {
            downloadTask.setDown_status(6);
        } else {
            downloadTask.setDown_status(i2);
        }
        downloadTask.setPackageName(this.packageName);
        downloadTask.setPortraitURL(this.ico_remote);
        downloadTask.setShowName(this.game_name);
        downloadTask.setUrl(this.down_url_remote);
        downloadTask.setTipBeans(this.tag_info);
        downloadTask.setCrc_link_type_val(this.crc_sign_id);
        downloadTask.setVer(this.ver);
        downloadTask.setVer_name(this.ver_name);
        downloadTask.setRomType(this.plugin_num);
        downloadTask.setStatus(0);
        downloadTask.setDescribe(this.info);
        downloadTask.setShowSize(this.size);
        downloadTask.setCfg_ver(this.cfg_ver);
        downloadTask.setCfg_ver_name(this.cfg_ver_name);
        downloadTask.setCfg_down_url(this.cfg_down_url);
        downloadTask.setDownloadType(0);
        downloadTask.setScreenshot_pic(this.screenshot_pic);
        downloadTask.setPlugin_num(this.plugin_num);
        downloadTask.setIs_world(this.is_world);
        downloadTask.setIs_network(this.is_network);
        downloadTask.setSource_ver(this.source_ver);
        downloadTask.setSource_ver_name(this.source_ver_name);
        downloadTask.setSource_down_url(this.source_down_url);
        downloadTask.setPlugin_screenshot(this.plugin_screenshot);
        downloadTask.setPlugin_area(this.forum_switch);
        downloadTask.setPlugin_area_val(this.forum_id);
        downloadTask.setWorld_shop(this.world_shop);
        downloadTask.setWorld_area(this.world_area);
        downloadTask.setIs_fight(this.is_fight);
        downloadTask.setFight_type(this.fight_type);
        downloadTask.setFight_fun(this.fight_funv2);
        downloadTask.setGame_info_tpl_type(this.game_info_tpl_type);
        downloadTask.setLock_sp(this.lock_sp);
        downloadTask.setUnzip_size(this.unzip_size);
        downloadTask.setSync_memory(this.sync_memory);
        downloadTask.setGift_package_switch(this.gift_package_switch);
        downloadTask.setActual_size(this.actual_size);
        downloadTask.setGame_info_top_pic(this.game_info_top_pic);
        downloadTask.setDown_count(this.down_count);
        downloadTask.setSp_tpl_two_position(this.sp_tpl_two_position);
        downloadTask.setSp_tag_info(this.sp_tag_info);
        downloadTask.setScore(this.score);
        PayTagInfo payTagInfo = this.pay_tag_info;
        downloadTask.setPay_game_amount(payTagInfo != null ? payTagInfo.getPay_game_amount() : 0);
        downloadTask.setDownload_source_url(this.download_source_url);
        downloadTask.setDownload_outside_url(this.download_outside_url);
        downloadTask.setDownload_original_switch(this.download_original_switch);
        downloadTask.setDownload_source_switch_v1(this.download_source_switch_v1);
        downloadTask.setDownload_source_switch_v2(this.download_source_switch_v2);
        downloadTask.setAllow_start_up_ad(this.allow_start_up_ad);
        downloadTask.set_from(get_from());
        downloadTask.set_from_type(get_from_type());
        downloadTask.setMin_an_compatible_ver(this.min_an_compatible_ver);
        downloadTask.setMax_an_compatible_ver(this.max_an_compatible_ver);
        if (d2.i(this.cfg_down_url)) {
            downloadTask.setResource_url_remote(this.cfg_down_url);
        }
        ModInfoBean modInfoBean = this.mod_info;
        if (modInfoBean != null) {
            if (modInfoBean.getMod_game_id().equals(this.crc_sign_id)) {
                downloadTask.setResource_url_remote(this.mod_info.getDown_url());
                downloadTask.setRef_crc_sign_id(this.mod_info.getMain_game_id());
            } else {
                downloadTask.setRef_crc_sign_id(this.mod_info.getMod_game_id());
            }
            downloadTask.setMod_info(JsonMapper.toJsonString(this.mod_info));
        }
        SingleGameModInfoBean singleGameModInfoBean = this.single_game_mod_info;
        if (singleGameModInfoBean != null) {
            downloadTask.setResource_url_remote(singleGameModInfoBean.getDownUrl());
            downloadTask.setSingle_game_mod_info(JsonMapper.toJsonString(this.single_game_mod_info));
        }
        ExtBean extBean = new ExtBean();
        extBean.setFrom(get_from() + "");
        extBean.set_from_type(get_from_type());
        extBean.setRecPosition(getRecPosition());
        extBean.setNodeId(getNodeId());
        extBean.setVolcanoOther(getPosition_path() != null ? JsonMapper.toJsonString(getPosition_path()) : "");
        extBean.setReMarks(getReMarks());
        downloadTask.setExt(JsonMapper.toJsonString(extBean));
        return downloadTask;
    }

    public String getEdit_recommend() {
        return this.edit_recommend;
    }

    public List<BannerBean> getFast_entry_no4() {
        return this.fast_entry_no4;
    }

    public String getFight_funv2() {
        return this.fight_funv2;
    }

    public String getFight_screenshot_pic() {
        return this.fight_screenshot_pic;
    }

    public int getFight_type() {
        return this.fight_type;
    }

    public String getFollow_background_img() {
        return this.follow_background_img;
    }

    public int getFormula_weight() {
        return this.formula_weight;
    }

    public long getForum_id() {
        return this.forum_id;
    }

    public int getForum_switch() {
        return this.forum_switch;
    }

    public int getGame_book() {
        return this.game_book;
    }

    public List<GameDetialBookTag> getGame_book_tag() {
        return this.game_book_tag;
    }

    public List<TipBean> getGame_bt_tag() {
        return this.game_bt_tag;
    }

    public String getGame_buy_rebate() {
        return this.game_buy_rebate;
    }

    public String getGame_comment_count() {
        return this.game_comment_count;
    }

    public String getGame_company_id() {
        return this.game_company_id;
    }

    public List<BTGameCouponBean> getGame_coupon_for_bt_game() {
        return this.game_coupon_for_bt_game;
    }

    public List<GameVoucherBean> getGame_coupon_list() {
        return this.game_coupon_list;
    }

    public String getGame_describe_second() {
        return this.game_describe_second;
    }

    public GamedetialMoreBean getGame_detailed() {
        return this.game_detailed;
    }

    public String getGame_exclusive_benefits() {
        return this.game_exclusive_benefits;
    }

    public String getGame_exclusive_benefits_qq() {
        return this.game_exclusive_benefits_qq;
    }

    public List<GameFromPopoWinBean.DataBean> getGame_favorites_top5() {
        return this.game_favorites_top5;
    }

    public int getGame_follow() {
        return this.game_follow;
    }

    public List<GiftPackageDataInfoBean> getGame_gift_package() {
        return this.game_gift_package;
    }

    public RecomDatabean getGame_handle_entrance() {
        return this.game_handle_entrance;
    }

    public String getGame_ico_remote() {
        return this.game_ico_remote;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_info() {
        return this.game_info;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
    }

    public String getGame_info_top_video_url() {
        return this.game_info_top_video_url;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGame_open_switch() {
        return this.game_open_switch;
    }

    public long getGame_open_time() {
        return this.game_open_time;
    }

    public List<GamePromptBean> getGame_prompt() {
        return this.game_prompt;
    }

    public GameDetailRankingTag getGame_ranking_pos() {
        return this.game_ranking_pos;
    }

    public GameScore getGame_score() {
        return this.game_score;
    }

    public List<ScreenshotGamedetialBean> getGame_screen_shot() {
        return this.game_screen_shot;
    }

    public List<ServiceState> getGame_server_state() {
        return this.game_server_state;
    }

    public int getGame_server_switch() {
        return this.game_server_switch;
    }

    public GameDetialStrategy getGame_strategy() {
        return this.game_strategy;
    }

    public String getGame_upgrade_info() {
        return this.game_upgrade_info;
    }

    public int getGame_upgrade_info_switch() {
        return this.game_upgrade_info_switch;
    }

    public int getGame_upgrade_state() {
        return this.game_upgrade_state;
    }

    public BtGameWelfare getGame_welfare() {
        return this.game_welfare;
    }

    public String getGif_slide_pic() {
        return this.gif_slide_pic;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getInfo() {
        return this.info;
    }

    public int getIs_fight() {
        return this.is_fight;
    }

    public int getIs_network() {
        return this.is_network;
    }

    public int getIs_started() {
        return this.is_started;
    }

    public int getIs_world() {
        return this.is_world;
    }

    public int getLast_week_down_count() {
        return this.last_week_down_count;
    }

    public int getLock_sp() {
        return this.lock_sp;
    }

    public int getMax_an_compatible_ver() {
        return this.max_an_compatible_ver;
    }

    public int getMax_battle_count() {
        return this.max_battle_count;
    }

    public int getMax_battle_view_count() {
        return this.max_battle_view_count;
    }

    public int getMin_an_compatible_ver() {
        return this.min_an_compatible_ver;
    }

    public ModInfoBean getMod_info() {
        return this.mod_info;
    }

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public PanelSwitch getPanel_switch() {
        return this.panel_switch;
    }

    public String getPapa_explain() {
        return this.papa_explain;
    }

    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
    }

    public List<DetialShowImageBean> getPic_info() {
        return this.pic_info;
    }

    public int getPic_position() {
        return this.pic_position;
    }

    public String getPlayer_qq() {
        return this.player_qq;
    }

    public String getPlugin_lowest_ver() {
        return this.plugin_lowest_ver;
    }

    public String getPlugin_lowest_ver_name() {
        return this.plugin_lowest_ver_name;
    }

    public String getPlugin_num() {
        return this.plugin_num;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public String getQq_qun() {
        return this.qq_qun;
    }

    public RankingInfoBean getRanking_info() {
        return this.ranking_info;
    }

    public int getRanking_weight() {
        return this.ranking_weight;
    }

    public int getRecommend_adinfo_switch() {
        return this.recommend_adinfo_switch;
    }

    public List<RecommendGameBean> getRecommend_game() {
        return this.recommend_game;
    }

    public String getRecommend_game_big_gif() {
        return this.recommend_game_big_gif;
    }

    public String getRecommend_game_big_pic() {
        return this.recommend_game_big_pic;
    }

    public int getRecommend_game_switch() {
        return this.recommend_game_switch;
    }

    public List<RecommendInfomationBean> getRecommend_information() {
        return this.recommend_information;
    }

    public int getRecommend_information_switch() {
        return this.recommend_information_switch;
    }

    public long getResidual_time() {
        return this.residual_time;
    }

    public String getRom_lowest_ver() {
        return this.rom_lowest_ver;
    }

    public GameDetailRoomCfgInfo getRoom_cfg_info() {
        return this.room_cfg_info;
    }

    public String getScore() {
        return this.score;
    }

    public String getScore_count() {
        return this.score_count;
    }

    public String getScore_count_manual() {
        return this.score_count_manual;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getSdk_active_id() {
        return this.sdk_active_id;
    }

    public CommentAllListBean.SelfCommentBean getSelf_comment() {
        return this.self_comment;
    }

    public String getServer_qq() {
        return this.server_qq;
    }

    public DetialShareData getShare_config() {
        return this.share_config;
    }

    public String getShare_url() {
        return this.share_url;
    }

    public String getSharer() {
        return this.sharer;
    }

    public List<CollectionBeanSub> getSimilar_games_recommend() {
        return this.similar_games_recommend;
    }

    public SingleGameModInfoBean getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    public String getSize() {
        return this.size;
    }

    public String getSlide_position() {
        return this.slide_position;
    }

    public String getSource_down_url() {
        return this.source_down_url;
    }

    public String getSource_lowest_ver() {
        return this.source_lowest_ver;
    }

    public String getSource_ver() {
        return this.source_ver;
    }

    public String getSource_ver_name() {
        return this.source_ver_name;
    }

    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    public int getSp_tpl_two_banner_switch() {
        return this.sp_tpl_two_banner_switch;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public StandaloneCloudArchive getStandalone_cloud_archive() {
        return this.standalone_cloud_archive;
    }

    public int getStart_count() {
        return this.start_count;
    }

    public String getSync_memory() {
        return this.sync_memory;
    }

    public ArrayList<TipBean> getTag_info() {
        return this.tag_info;
    }

    public long getTimes() {
        return this.times;
    }

    public List<DownloadUrlBean> getTp_down_url() {
        return this.tp_down_url;
    }

    public String getUnzip_size() {
        return this.unzip_size;
    }

    public String getVedio_cover_pic() {
        return this.vedio_cover_pic;
    }

    public String getVedio_url() {
        return this.vedio_url;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public GamedetailViewbean getVideo_and_cover() {
        return this.video_and_cover;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    public boolean isHas_more_activities() {
        return this.has_more_activities;
    }

    public void setActivities(List<BTActivityBean> list) {
        this.activities = list;
    }

    public void setActivity_entry(GamedetialBottomEntry gamedetialBottomEntry) {
        this.activity_entry = gamedetialBottomEntry;
    }

    public void setActual_size(long j4) {
        this.actual_size = j4;
    }

    public void setAllow_start_up_ad(String str) {
        this.allow_start_up_ad = str;
    }

    public void setAppSize(String str) {
        this.appSize = str;
    }

    public void setAuxiliary_tool(GameDetialAuxiliaryBean gameDetialAuxiliaryBean) {
        this.auxiliary_tool = gameDetialAuxiliaryBean;
    }

    public void setBackground_color(String str) {
        this.background_color = str;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    public void setBbs_strategy_contribute_url(String str) {
        this.bbs_strategy_contribute_url = str;
    }

    public void setBbs_strategy_switch(int i2) {
        this.bbs_strategy_switch = i2;
    }

    public void setBespeak_count(String str) {
        this.bespeak_count = str;
    }

    public void setBespeak_switch(int i2) {
        this.bespeak_switch = i2;
    }

    public void setBt_game_coupon_count(int i2) {
        this.bt_game_coupon_count = i2;
    }

    public void setBt_game_recommend(List<RecommendGameBean> list) {
        this.bt_game_recommend = list;
    }

    public void setBt_game_switch(int i2) {
        this.bt_game_switch = i2;
    }

    public void setCdn_down_switch(int i2) {
        this.cdn_down_switch = i2;
    }

    public void setCfg_down_url(String str) {
        this.cfg_down_url = str;
    }

    public void setCfg_lowest_ver(String str) {
        this.cfg_lowest_ver = str;
    }

    public void setCfg_ver(String str) {
        this.cfg_ver = str;
    }

    public void setCfg_ver_name(String str) {
        this.cfg_ver_name = str;
    }

    public void setComment_count(String str) {
        this.comment_count = str;
    }

    public void setComment_score_switch(String str) {
        this.comment_score_switch = str;
    }

    public void setComment_switch(int i2) {
        this.comment_switch = i2;
    }

    public void setCommitDataBeanList(List<CommentBaseBean> list) {
        this.commitDataBeanList = list;
    }

    public void setCommitListData(List<GameCommitListBean.GameCommitList> list) {
        this.commitListData = list;
    }

    public void setCommunity_entrance_switch(int i2) {
        this.community_entrance_switch = i2;
    }

    public void setCommunity_entrance_tag(String str) {
        this.community_entrance_tag = str;
    }

    public void setCompany_name(String str) {
        this.company_name = str;
    }

    public void setCompany_recommend(List<RecommendGameBean> list) {
        this.company_recommend = list;
    }

    public void setCrc_sign_id(String str) {
        this.crc_sign_id = str;
    }

    public void setCustom_tag_info(List<TipBean> list) {
        this.custom_tag_info = list;
    }

    public void setDel_tag(int i2) {
        this.del_tag = i2;
    }

    public void setDev_info(String str) {
        this.dev_info = str;
    }

    public void setDown_and_down(List<RecommendGameBean> list) {
        this.down_and_down = list;
    }

    public void setDown_count(int i2) {
        this.down_count = i2;
    }

    public void setDown_count_manual(int i2) {
        this.down_count_manual = i2;
    }

    public void setDown_status(int i2) {
        this.down_status = i2;
    }

    public void setDown_url_remote(String str) {
        this.down_url_remote = str;
    }

    public void setDown_weight(int i2) {
        this.down_weight = i2;
    }

    public void setDownload_original_switch(String str) {
        this.download_original_switch = str;
    }

    public void setDownload_outside_url(String str) {
        this.download_outside_url = str;
    }

    public void setDownload_source_switch_v1(String str) {
        this.download_source_switch_v1 = str;
    }

    public void setDownload_source_switch_v2(String str) {
        this.download_source_switch_v2 = str;
    }

    public void setDownload_source_url(String str) {
        this.download_source_url = str;
    }

    public void setEdit_recommend(String str) {
        this.edit_recommend = str;
    }

    public void setFast_entry_no4(List<BannerBean> list) {
        this.fast_entry_no4 = list;
    }

    public void setFight_funv2(String str) {
        this.fight_funv2 = str;
    }

    public void setFight_screenshot_pic(String str) {
        this.fight_screenshot_pic = str;
    }

    public void setFight_type(int i2) {
        this.fight_type = i2;
    }

    public void setFollow_background_img(String str) {
        this.follow_background_img = str;
    }

    public void setFormula_weight(int i2) {
        this.formula_weight = i2;
    }

    public void setForum_id(long j4) {
        this.forum_id = j4;
    }

    public void setForum_switch(int i2) {
        this.forum_switch = i2;
    }

    public void setGame_book(int i2) {
        this.game_book = i2;
    }

    public void setGame_book_tag(List<GameDetialBookTag> list) {
        this.game_book_tag = list;
    }

    public void setGame_bt_tag(List<TipBean> list) {
        this.game_bt_tag = list;
    }

    public void setGame_buy_rebate(String str) {
        this.game_buy_rebate = str;
    }

    public void setGame_comment_count(String str) {
        this.game_comment_count = str;
    }

    public void setGame_company_id(String str) {
        this.game_company_id = str;
    }

    public void setGame_coupon_for_bt_game(List<BTGameCouponBean> list) {
        this.game_coupon_for_bt_game = list;
    }

    public void setGame_coupon_list(List<GameVoucherBean> list) {
        this.game_coupon_list = list;
    }

    public void setGame_describe_second(String str) {
        this.game_describe_second = str;
    }

    public void setGame_detailed(GamedetialMoreBean gamedetialMoreBean) {
        this.game_detailed = gamedetialMoreBean;
    }

    public void setGame_exclusive_benefits(String str) {
        this.game_exclusive_benefits = str;
    }

    public void setGame_exclusive_benefits_qq(String str) {
        this.game_exclusive_benefits_qq = str;
    }

    public void setGame_favorites_top5(List<GameFromPopoWinBean.DataBean> list) {
        this.game_favorites_top5 = list;
    }

    public void setGame_follow(int i2) {
        this.game_follow = i2;
    }

    public void setGame_gift_package(List<GiftPackageDataInfoBean> list) {
        this.game_gift_package = list;
    }

    public void setGame_handle_entrance(RecomDatabean recomDatabean) {
        this.game_handle_entrance = recomDatabean;
    }

    public void setGame_ico_remote(String str) {
        this.game_ico_remote = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setGame_info(String str) {
        this.game_info = str;
    }

    public void setGame_info_top_pic(String str) {
        this.game_info_top_pic = str;
    }

    public void setGame_info_top_video_url(String str) {
        this.game_info_top_video_url = str;
    }

    public void setGame_info_tpl_type(String str) {
        this.game_info_tpl_type = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGame_open_switch(int i2) {
        this.game_open_switch = i2;
    }

    public void setGame_open_time(long j4) {
        this.game_open_time = j4;
    }

    public void setGame_prompt(List<GamePromptBean> list) {
        this.game_prompt = list;
    }

    public void setGame_ranking_pos(GameDetailRankingTag gameDetailRankingTag) {
        this.game_ranking_pos = gameDetailRankingTag;
    }

    public void setGame_score(GameScore gameScore) {
        this.game_score = gameScore;
    }

    public void setGame_screen_shot(List<ScreenshotGamedetialBean> list) {
        this.game_screen_shot = list;
    }

    public void setGame_server_state(List<ServiceState> list) {
        this.game_server_state = list;
    }

    public void setGame_server_switch(int i2) {
        this.game_server_switch = i2;
    }

    public void setGame_strategy(GameDetialStrategy gameDetialStrategy) {
        this.game_strategy = gameDetialStrategy;
    }

    public void setGame_upgrade_info(String str) {
        this.game_upgrade_info = str;
    }

    public void setGame_upgrade_info_switch(int i2) {
        this.game_upgrade_info_switch = i2;
    }

    public void setGame_upgrade_state(int i2) {
        this.game_upgrade_state = i2;
    }

    public void setGame_welfare(BtGameWelfare btGameWelfare) {
        this.game_welfare = btGameWelfare;
    }

    public void setGif_slide_pic(String str) {
        this.gif_slide_pic = str;
    }

    public void setGift_package_switch(int i2) {
        this.gift_package_switch = i2;
    }

    public void setHas_more_activities(boolean z3) {
        this.has_more_activities = z3;
    }

    public void setIco_remote(String str) {
        this.ico_remote = str;
    }

    public void setInfo(String str) {
        this.info = str;
    }

    public void setIs_fight(int i2) {
        this.is_fight = i2;
    }

    public void setIs_network(int i2) {
        this.is_network = i2;
    }

    public void setIs_started(int i2) {
        this.is_started = i2;
    }

    public void setIs_world(int i2) {
        this.is_world = i2;
    }

    public void setLast_week_down_count(int i2) {
        this.last_week_down_count = i2;
    }

    public void setLock_sp(int i2) {
        this.lock_sp = i2;
    }

    public void setMax_an_compatible_ver(int i2) {
        this.max_an_compatible_ver = i2;
    }

    public void setMax_battle_count(int i2) {
        this.max_battle_count = i2;
    }

    public void setMax_battle_view_count(int i2) {
        this.max_battle_view_count = i2;
    }

    public void setMin_an_compatible_ver(int i2) {
        this.min_an_compatible_ver = i2;
    }

    public void setMod_info(ModInfoBean modInfoBean) {
        this.mod_info = modInfoBean;
    }

    public void setOther_down_switch(int i2) {
        this.other_down_switch = i2;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPanel_switch(PanelSwitch panelSwitch) {
        this.panel_switch = panelSwitch;
    }

    public void setPapa_explain(String str) {
        this.papa_explain = str;
    }

    public void setPay_tag_info(PayTagInfo payTagInfo) {
        this.pay_tag_info = payTagInfo;
    }

    public void setPic_info(List<DetialShowImageBean> list) {
        this.pic_info = list;
    }

    public void setPic_position(int i2) {
        this.pic_position = i2;
    }

    public void setPlayer_qq(String str) {
        this.player_qq = str;
    }

    public void setPlugin_lowest_ver(String str) {
        this.plugin_lowest_ver = str;
    }

    public void setPlugin_lowest_ver_name(String str) {
        this.plugin_lowest_ver_name = str;
    }

    public void setPlugin_num(String str) {
        this.plugin_num = str;
    }

    public void setPlugin_screenshot(int i2) {
        this.plugin_screenshot = i2;
    }

    public void setQq_qun(String str) {
        this.qq_qun = str;
    }

    public void setRanking_info(RankingInfoBean rankingInfoBean) {
        this.ranking_info = rankingInfoBean;
    }

    public void setRanking_weight(int i2) {
        this.ranking_weight = i2;
    }

    public void setRecommend_adinfo_switch(int i2) {
        this.recommend_adinfo_switch = i2;
    }

    public void setRecommend_game(List<RecommendGameBean> list) {
        this.recommend_game = list;
    }

    public void setRecommend_game_big_gif(String str) {
        this.recommend_game_big_gif = str;
    }

    public void setRecommend_game_big_pic(String str) {
        this.recommend_game_big_pic = str;
    }

    public void setRecommend_game_switch(int i2) {
        this.recommend_game_switch = i2;
    }

    public void setRecommend_information(List<RecommendInfomationBean> list) {
        this.recommend_information = list;
    }

    public void setRecommend_information_switch(int i2) {
        this.recommend_information_switch = i2;
    }

    public void setResidual_time(long j4) {
        this.residual_time = j4;
    }

    public void setRom_lowest_ver(String str) {
        this.rom_lowest_ver = str;
    }

    public void setRoom_cfg_info(GameDetailRoomCfgInfo gameDetailRoomCfgInfo) {
        this.room_cfg_info = gameDetailRoomCfgInfo;
    }

    public void setScore(String str) {
        this.score = str;
    }

    public void setScore_count(String str) {
        this.score_count = str;
    }

    public void setScore_count_manual(String str) {
        this.score_count_manual = str;
    }

    public void setScreenshot_pic(String str) {
        this.screenshot_pic = str;
    }

    public void setSdk_active_id(String str) {
        this.sdk_active_id = str;
    }

    public void setSelf_comment(CommentAllListBean.SelfCommentBean selfCommentBean) {
        this.self_comment = selfCommentBean;
    }

    public void setServer_qq(String str) {
        this.server_qq = str;
    }

    public void setShare_config(DetialShareData detialShareData) {
        this.share_config = detialShareData;
    }

    public void setShare_url(String str) {
        this.share_url = str;
    }

    public void setSharer(String str) {
        this.sharer = str;
    }

    public void setSimilar_games_recommend(List<CollectionBeanSub> list) {
        this.similar_games_recommend = list;
    }

    public void setSingle_game_mod_info(SingleGameModInfoBean singleGameModInfoBean) {
        this.single_game_mod_info = singleGameModInfoBean;
    }

    public void setSize(String str) {
        this.size = str;
    }

    public void setSlide_position(String str) {
        this.slide_position = str;
    }

    public void setSource_down_url(String str) {
        this.source_down_url = str;
    }

    public void setSource_lowest_ver(String str) {
        this.source_lowest_ver = str;
    }

    public void setSource_ver(String str) {
        this.source_ver = str;
    }

    public void setSource_ver_name(String str) {
        this.source_ver_name = str;
    }

    public void setSp_tag_info(TipNew tipNew) {
        this.sp_tag_info = tipNew;
    }

    public void setSp_tpl_two_banner_switch(int i2) {
        this.sp_tpl_two_banner_switch = i2;
    }

    public void setSp_tpl_two_position(int i2) {
        this.sp_tpl_two_position = i2;
    }

    public void setStandalone_cloud_archive(StandaloneCloudArchive standaloneCloudArchive) {
        this.standalone_cloud_archive = standaloneCloudArchive;
    }

    public void setStart_count(int i2) {
        this.start_count = i2;
    }

    public void setSync_memory(String str) {
        this.sync_memory = str;
    }

    public void setTag_info(ArrayList<TipBean> arrayList) {
        this.tag_info = arrayList;
    }

    public void setTimes(long j4) {
        this.times = j4;
    }

    public void setTp_down_url(List<DownloadUrlBean> list) {
        this.tp_down_url = list;
    }

    public void setUnzip_size(String str) {
        this.unzip_size = str;
    }

    public void setVedio_cover_pic(String str) {
        this.vedio_cover_pic = str;
    }

    public void setVedio_url(String str) {
        this.vedio_url = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public void setVer_name(String str) {
        this.ver_name = str;
    }

    public void setVideo_and_cover(GamedetailViewbean gamedetailViewbean) {
        this.video_and_cover = gamedetailViewbean;
    }

    public void setWorld_area(int i2) {
        this.world_area = i2;
    }

    public void setWorld_shop(int i2) {
        this.world_shop = i2;
    }
}
