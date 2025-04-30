package com.join.mgps.dto;

import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.d2;
import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.GameCommitListBean;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class DetailResultBeanV3 extends DownloadPointBase implements Serializable {
    private long actual_size;
    private String allow_start_up_ad;
    private String apk_sign;
    private String background_color;
    private List<BannerBean> banner;
    private String bespeak_count;
    private int bespeak_switch;
    private int cdn_down_switch;
    private String cfg_down_url;
    private String cfg_lowest_ver;
    private String cfg_ver;
    private String cfg_ver_name;
    private String comment_count;
    private String comment_count_manual;
    private String comment_people_count;
    private String comment_people_count_manual;
    private int comment_switch;
    private List<CommentBaseBean> commitDataBeanList;
    private List<GameCommitListBean.GameCommitList> commitListData;
    private String company_name;
    private String composite_score;
    private String crc_sign_id;
    private String describe;
    private int down_count;
    private int down_count_manual;
    private int down_status;
    private String down_url_local;
    private String down_url_remote;
    private String down_url_remote_nopic;
    private int downloadType;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String edit_recommend;
    private List<BannerBean> fast_entry_no4;
    private int fast_entry_switch;
    private String fight_funv2;
    private String fight_screenshot_pic;
    private int fight_type;
    private String follow_background_img;
    private String forum_count;
    private long forum_id;
    private int forum_switch;
    private int game_book;
    private List<GameDetialBookTag> game_book_tag;
    private String game_comment_count;
    private List<GameVoucherBean> game_coupon_list;
    private String game_describe_second;
    private int game_follow;
    private List<GiftPackageDataInfoBean> game_gift_package;
    private String game_info_top_pic;
    private String game_info_tpl_type;
    private String game_name;
    private List<GamePromptBean> game_prompt;
    private GameScore game_score;
    private List<ServiceState> game_server_state;
    private int game_server_switch;
    private int game_service_switch;
    private GameDetialStrategy game_strategy;
    private String game_upgrade_info;
    private int game_upgrade_info_switch;
    private int gift_package_switch;
    private String ico_local;
    private String ico_remote;
    private String info;
    private int is_fight;
    private int is_network;
    private int is_world;
    private int last_week_down_count;
    private int lineCount;
    private int lock_sp;
    private int max_an_compatible_ver;
    private int min_an_compatible_ver;
    private ModInfoBean mod_info;
    private int other_down_switch;
    private String package_name;
    private PanelSwitch panel_switch;
    private String papa_explain;
    PayTagInfo pay_tag_info;
    private PraisePercent percen_praise;
    private StarsPercent percen_stars;
    private List<DetialShowImageBean> pic_info;
    private int pic_position;
    private String player_qq;
    private String plugin_lowest_ver;
    private String plugin_lowest_ver_name;
    private String plugin_num = "";
    private int plugin_screenshot;
    private List<RecommendAdInfoData> recommend_ad_info;
    private int recommend_adinfo_switch;
    private List<RecommendGameBean> recommend_game;
    private int recommend_game_switch;
    private List<RecommendInfomationBean> recommend_information;
    private int recommend_information_switch;
    private String rom_lowest_ver;
    private String score;
    private String score_count;
    private String score_count_manual;
    private String screenshot_pic;
    private CommentAllListBean.SelfCommentBean self_comment;
    private String server_qq;
    private String share_url;
    private String sharer;
    private String sign_id;
    private SingleGameModInfoBean single_game_mod_info;
    private String size;
    private String source_down_url;
    private String source_lowest_ver;
    private String source_ver;
    private String source_ver_name;
    private TipNew sp_tag_info;
    private int sp_tpl_two_banner_switch;
    private int sp_tpl_two_position;
    private String sync_memory;
    private List<DetialTablePageBean> tab_page_info;
    private ArrayList<TipBean> tag_info;
    private List<DownloadUrlBean> tp_down_url;
    private String unzip_size;
    private String vedio_cover_pic;
    private String vedio_url;
    private String ver;
    private String ver_name;
    private int world_area;
    private int world_shop;

    public long getActual_size() {
        return this.actual_size;
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getApk_sign() {
        return this.apk_sign;
    }

    public String getBackground_color() {
        return this.background_color;
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public String getBespeak_count() {
        return this.bespeak_count;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
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

    public String getComment_count_manual() {
        return this.comment_count_manual;
    }

    public String getComment_people_count() {
        return this.comment_people_count;
    }

    public String getComment_people_count_manual() {
        return this.comment_people_count_manual;
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

    public String getCompany_name() {
        return this.company_name;
    }

    public String getComposite_score() {
        return this.composite_score;
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public String getDescribe() {
        return this.describe;
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

    public String getDown_url_local() {
        return this.down_url_local;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public String getDown_url_remote_nopic() {
        return this.down_url_remote_nopic;
    }

    public int getDownloadType() {
        return this.downloadType;
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
        downloadTask.setPackageName(this.package_name);
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
        downloadTask.setDownloadType(this.downloadType);
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
        return downloadTask;
    }

    public String getEdit_recommend() {
        return this.edit_recommend;
    }

    public List<BannerBean> getFast_entry_no4() {
        return this.fast_entry_no4;
    }

    public int getFast_entry_switch() {
        return this.fast_entry_switch;
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

    public String getForum_count() {
        return this.forum_count;
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

    public String getGame_comment_count() {
        return this.game_comment_count;
    }

    public List<GameVoucherBean> getGame_coupon_list() {
        return this.game_coupon_list;
    }

    public String getGame_describe_second() {
        return this.game_describe_second;
    }

    public int getGame_follow() {
        return this.game_follow;
    }

    public List<GiftPackageDataInfoBean> getGame_gift_package() {
        return this.game_gift_package;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public List<GamePromptBean> getGame_prompt() {
        return this.game_prompt;
    }

    public GameScore getGame_score() {
        return this.game_score;
    }

    public List<ServiceState> getGame_server_state() {
        return this.game_server_state;
    }

    public int getGame_server_switch() {
        return this.game_server_switch;
    }

    public int getGame_service_switch() {
        return this.game_service_switch;
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

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public String getIco_local() {
        return this.ico_local;
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

    public int getIs_world() {
        return this.is_world;
    }

    public int getLast_week_down_count() {
        return this.last_week_down_count;
    }

    public int getLineCount() {
        return this.lineCount;
    }

    public int getLock_sp() {
        return this.lock_sp;
    }

    public int getMax_an_compatible_ver() {
        return this.max_an_compatible_ver;
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

    public String getPackage_name() {
        return this.package_name;
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

    public PraisePercent getPercen_praise() {
        return this.percen_praise;
    }

    public StarsPercent getPercen_stars() {
        return this.percen_stars;
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

    public List<RecommendAdInfoData> getRecommend_ad_info() {
        return this.recommend_ad_info;
    }

    public int getRecommend_adinfo_switch() {
        return this.recommend_adinfo_switch;
    }

    public List<RecommendGameBean> getRecommend_game() {
        return this.recommend_game;
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

    public String getRom_lowest_ver() {
        return this.rom_lowest_ver;
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

    public CommentAllListBean.SelfCommentBean getSelf_comment() {
        return this.self_comment;
    }

    public String getServer_qq() {
        return this.server_qq;
    }

    public String getShare_url() {
        return this.share_url;
    }

    public String getSharer() {
        return this.sharer;
    }

    public String getSign_id() {
        return this.sign_id;
    }

    public SingleGameModInfoBean getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    public String getSize() {
        return this.size;
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

    public String getSync_memory() {
        return this.sync_memory;
    }

    public List<DetialTablePageBean> getTab_page_info() {
        return this.tab_page_info;
    }

    public ArrayList<TipBean> getTag_info() {
        return this.tag_info;
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

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    public void setActual_size(long j4) {
        this.actual_size = j4;
    }

    public void setAllow_start_up_ad(String str) {
        this.allow_start_up_ad = str;
    }

    public void setApk_sign(String str) {
        this.apk_sign = str;
    }

    public void setBackground_color(String str) {
        this.background_color = str;
    }

    public void setBanner(List<BannerBean> list) {
        this.banner = list;
    }

    public void setBespeak_count(String str) {
        this.bespeak_count = str;
    }

    public void setBespeak_switch(int i2) {
        this.bespeak_switch = i2;
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

    public void setComment_count_manual(String str) {
        this.comment_count_manual = str;
    }

    public void setComment_people_count(String str) {
        this.comment_people_count = str;
    }

    public void setComment_people_count_manual(String str) {
        this.comment_people_count_manual = str;
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

    public void setCompany_name(String str) {
        this.company_name = str;
    }

    public void setComposite_score(String str) {
        this.composite_score = str;
    }

    public void setCrc_sign_id(String str) {
        this.crc_sign_id = str;
    }

    public void setDescribe(String str) {
        this.describe = str;
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

    public void setDown_url_local(String str) {
        this.down_url_local = str;
    }

    public void setDown_url_remote(String str) {
        this.down_url_remote = str;
    }

    public void setDown_url_remote_nopic(String str) {
        this.down_url_remote_nopic = str;
    }

    public void setDownloadType(int i2) {
        this.downloadType = i2;
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

    public void setFast_entry_switch(int i2) {
        this.fast_entry_switch = i2;
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

    public void setForum_count(String str) {
        this.forum_count = str;
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

    public void setGame_comment_count(String str) {
        this.game_comment_count = str;
    }

    public void setGame_coupon_list(List<GameVoucherBean> list) {
        this.game_coupon_list = list;
    }

    public void setGame_describe_second(String str) {
        this.game_describe_second = str;
    }

    public void setGame_follow(int i2) {
        this.game_follow = i2;
    }

    public void setGame_gift_package(List<GiftPackageDataInfoBean> list) {
        this.game_gift_package = list;
    }

    public void setGame_info_top_pic(String str) {
        this.game_info_top_pic = str;
    }

    public void setGame_info_tpl_type(String str) {
        this.game_info_tpl_type = str;
    }

    public void setGame_name(String str) {
        this.game_name = str;
    }

    public void setGame_prompt(List<GamePromptBean> list) {
        this.game_prompt = list;
    }

    public void setGame_score(GameScore gameScore) {
        this.game_score = gameScore;
    }

    public void setGame_server_state(List<ServiceState> list) {
        this.game_server_state = list;
    }

    public void setGame_server_switch(int i2) {
        this.game_server_switch = i2;
    }

    public void setGame_service_switch(int i2) {
        this.game_service_switch = i2;
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

    public void setGift_package_switch(int i2) {
        this.gift_package_switch = i2;
    }

    public void setIco_local(String str) {
        this.ico_local = str;
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

    public void setIs_world(int i2) {
        this.is_world = i2;
    }

    public void setLast_week_down_count(int i2) {
        this.last_week_down_count = i2;
    }

    public void setLineCount(int i2) {
        this.lineCount = i2;
    }

    public void setLock_sp(int i2) {
        this.lock_sp = i2;
    }

    public void setMax_an_compatible_ver(int i2) {
        this.max_an_compatible_ver = i2;
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

    public void setPackage_name(String str) {
        this.package_name = str;
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

    public void setPercen_praise(PraisePercent praisePercent) {
        this.percen_praise = praisePercent;
    }

    public void setPercen_stars(StarsPercent starsPercent) {
        this.percen_stars = starsPercent;
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

    public void setRecommend_ad_info(List<RecommendAdInfoData> list) {
        this.recommend_ad_info = list;
    }

    public void setRecommend_adinfo_switch(int i2) {
        this.recommend_adinfo_switch = i2;
    }

    public void setRecommend_game(List<RecommendGameBean> list) {
        this.recommend_game = list;
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

    public void setRom_lowest_ver(String str) {
        this.rom_lowest_ver = str;
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

    public void setSelf_comment(CommentAllListBean.SelfCommentBean selfCommentBean) {
        this.self_comment = selfCommentBean;
    }

    public void setServer_qq(String str) {
        this.server_qq = str;
    }

    public void setShare_url(String str) {
        this.share_url = str;
    }

    public void setSharer(String str) {
        this.sharer = str;
    }

    public void setSign_id(String str) {
        this.sign_id = str;
    }

    public void setSingle_game_mod_info(SingleGameModInfoBean singleGameModInfoBean) {
        this.single_game_mod_info = singleGameModInfoBean;
    }

    public void setSize(String str) {
        this.size = str;
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

    public void setSync_memory(String str) {
        this.sync_memory = str;
    }

    public void setTab_page_info(List<DetialTablePageBean> list) {
        this.tab_page_info = list;
    }

    public void setTag_info(ArrayList<TipBean> arrayList) {
        this.tag_info = arrayList;
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

    public void setWorld_area(int i2) {
        this.world_area = i2;
    }

    public void setWorld_shop(int i2) {
        this.world_shop = i2;
    }
}
