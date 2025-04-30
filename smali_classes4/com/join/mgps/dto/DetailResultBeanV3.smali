.class public Lcom/join/mgps/dto/DetailResultBeanV3;
.super Lcom/join/mgps/dto/DownloadPointBase;
.source "DetailResultBeanV3.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actual_size:J

.field private allow_start_up_ad:Ljava/lang/String;

.field private apk_sign:Ljava/lang/String;

.field private background_color:Ljava/lang/String;

.field private banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private bespeak_count:Ljava/lang/String;

.field private bespeak_switch:I

.field private cdn_down_switch:I

.field private cfg_down_url:Ljava/lang/String;

.field private cfg_lowest_ver:Ljava/lang/String;

.field private cfg_ver:Ljava/lang/String;

.field private cfg_ver_name:Ljava/lang/String;

.field private comment_count:Ljava/lang/String;

.field private comment_count_manual:Ljava/lang/String;

.field private comment_people_count:Ljava/lang/String;

.field private comment_people_count_manual:Ljava/lang/String;

.field private comment_switch:I

.field private commitDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation
.end field

.field private commitListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;",
            ">;"
        }
    .end annotation
.end field

.field private company_name:Ljava/lang/String;

.field private composite_score:Ljava/lang/String;

.field private crc_sign_id:Ljava/lang/String;

.field private describe:Ljava/lang/String;

.field private down_count:I

.field private down_count_manual:I

.field private down_status:I

.field private down_url_local:Ljava/lang/String;

.field private down_url_remote:Ljava/lang/String;

.field private down_url_remote_nopic:Ljava/lang/String;

.field private downloadType:I

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private edit_recommend:Ljava/lang/String;

.field private fast_entry_no4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private fast_entry_switch:I

.field private fight_funv2:Ljava/lang/String;

.field private fight_screenshot_pic:Ljava/lang/String;

.field private fight_type:I

.field private follow_background_img:Ljava/lang/String;

.field private forum_count:Ljava/lang/String;

.field private forum_id:J

.field private forum_switch:I

.field private game_book:I

.field private game_book_tag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;"
        }
    .end annotation
.end field

.field private game_comment_count:Ljava/lang/String;

.field private game_coupon_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameVoucherBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_describe_second:Ljava/lang/String;

.field private game_follow:I

.field private game_gift_package:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_info_top_pic:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_prompt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamePromptBean;",
            ">;"
        }
    .end annotation
.end field

.field private game_score:Lcom/join/mgps/dto/GameScore;

.field private game_server_state:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private game_server_switch:I

.field private game_service_switch:I

.field private game_strategy:Lcom/join/mgps/dto/GameDetialStrategy;

.field private game_upgrade_info:Ljava/lang/String;

.field private game_upgrade_info_switch:I

.field private gift_package_switch:I

.field private ico_local:Ljava/lang/String;

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private is_fight:I

.field private is_network:I

.field private is_world:I

.field private last_week_down_count:I

.field private lineCount:I

.field private lock_sp:I

.field private max_an_compatible_ver:I

.field private min_an_compatible_ver:I

.field private mod_info:Lcom/join/mgps/dto/ModInfoBean;

.field private other_down_switch:I

.field private package_name:Ljava/lang/String;

.field private panel_switch:Lcom/join/mgps/dto/PanelSwitch;

.field private papa_explain:Ljava/lang/String;

.field pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

.field private percen_praise:Lcom/join/mgps/dto/PraisePercent;

.field private percen_stars:Lcom/join/mgps/dto/StarsPercent;

.field private pic_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation
.end field

.field private pic_position:I

.field private player_qq:Ljava/lang/String;

.field private plugin_lowest_ver:Ljava/lang/String;

.field private plugin_lowest_ver_name:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;

.field private plugin_screenshot:I

.field private recommend_ad_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendAdInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_adinfo_switch:I

.field private recommend_game:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_game_switch:I

.field private recommend_information:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;"
        }
    .end annotation
.end field

.field private recommend_information_switch:I

.field private rom_lowest_ver:Ljava/lang/String;

.field private score:Ljava/lang/String;

.field private score_count:Ljava/lang/String;

.field private score_count_manual:Ljava/lang/String;

.field private screenshot_pic:Ljava/lang/String;

.field private self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

.field private server_qq:Ljava/lang/String;

.field private share_url:Ljava/lang/String;

.field private sharer:Ljava/lang/String;

.field private sign_id:Ljava/lang/String;

.field private single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

.field private size:Ljava/lang/String;

.field private source_down_url:Ljava/lang/String;

.field private source_lowest_ver:Ljava/lang/String;

.field private source_ver:Ljava/lang/String;

.field private source_ver_name:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/TipNew;

.field private sp_tpl_two_banner_switch:I

.field private sp_tpl_two_position:I

.field private sync_memory:Ljava/lang/String;

.field private tab_page_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialTablePageBean;",
            ">;"
        }
    .end annotation
.end field

.field private tag_info:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation
.end field

.field private tp_down_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation
.end field

.field private unzip_size:Ljava/lang/String;

.field private vedio_cover_pic:Ljava/lang/String;

.field private vedio_url:Ljava/lang/String;

.field private ver:Ljava/lang/String;

.field private ver_name:Ljava/lang/String;

.field private world_area:I

.field private world_shop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/DownloadPointBase;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_num:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActual_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->actual_size:J

    return-wide v0
.end method

.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->allow_start_up_ad:Ljava/lang/String;

    return-object v0
.end method

.method public getApk_sign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->apk_sign:Ljava/lang/String;

    return-object v0
.end method

.method public getBackground_color()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->background_color:Ljava/lang/String;

    return-object v0
.end method

.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getBespeak_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->bespeak_count:Ljava/lang/String;

    return-object v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->bespeak_switch:I

    return v0
.end method

.method public getCdn_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cdn_down_switch:I

    return v0
.end method

.method public getCfg_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getCfg_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_count:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_count_manual()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_count_manual:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_people_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_people_count:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_people_count_manual()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_people_count_manual:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_switch:I

    return v0
.end method

.method public getCommitDataBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->commitDataBeanList:Ljava/util/List;

    return-object v0
.end method

.method public getCommitListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->commitListData:Ljava/util/List;

    return-object v0
.end method

.method public getCompany_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->company_name:Ljava/lang/String;

    return-object v0
.end method

.method public getComposite_score()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->composite_score:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDescribe()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->describe:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_count:I

    return v0
.end method

.method public getDown_count_manual()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_count_manual:I

    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->bespeak_switch:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method public getDown_url_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_url_local:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_url_remote_nopic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_url_remote_nopic:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->downloadType:I

    return v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_original_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_outside_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_switch_v1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_switch_v2:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 4

    .line 1
    new-instance v0, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;-><init>()V

    .line 2
    iget v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->bespeak_switch:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_status(I)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->package_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPackageName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ico_remote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPortraitURL(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowName(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_url_remote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUrl(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->tag_info:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setTipBeans(Ljava/util/ArrayList;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ver_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setVer_name(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRomType(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 15
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->info:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDescribe(Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setShowSize(Ljava/lang/String;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_ver_name(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_down_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setCfg_down_url(Ljava/lang/String;)V

    .line 20
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->downloadType:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 21
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->screenshot_pic:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_num:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_num(Ljava/lang/String;)V

    .line 23
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_world:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_world(I)V

    .line 24
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_network:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_network(I)V

    .line 25
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_ver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_ver_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_ver_name(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_down_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSource_down_url(Ljava/lang/String;)V

    .line 28
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_screenshot:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_screenshot(I)V

    .line 29
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->forum_switch:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area(I)V

    .line 30
    iget-wide v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->forum_id:J

    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPlugin_area_val(J)V

    .line 31
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->world_shop:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_shop(I)V

    .line 32
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->world_area:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setWorld_area(I)V

    .line 33
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_fight:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setIs_fight(I)V

    .line 34
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fight_type:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_type(I)V

    .line 35
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fight_funv2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFight_fun(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_info_tpl_type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGame_info_tpl_type(Ljava/lang/String;)V

    .line 37
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->lock_sp:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setLock_sp(I)V

    .line 38
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->unzip_size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setUnzip_size(Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sync_memory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSync_memory(Ljava/lang/String;)V

    .line 40
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->gift_package_switch:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setGift_package_switch(I)V

    .line 41
    iget-wide v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->actual_size:J

    invoke-virtual {v0, v2, v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setActual_size(J)V

    .line 42
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_count:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDown_count(I)V

    .line 43
    iget v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sp_tpl_two_position:I

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tpl_two_position(I)V

    .line 44
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V

    .line 45
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->score:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScore(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 47
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_url(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_outside_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_outside_url(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_original_switch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_original_switch(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_switch_v1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v1(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_switch_v2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownload_source_switch_v2(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->allow_start_up_ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setAllow_start_up_ad(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from(I)V

    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->set_from_type(I)V

    .line 55
    iget v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->min_an_compatible_ver:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMin_an_compatible_ver(I)V

    .line 56
    iget v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->max_an_compatible_ver:I

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMax_an_compatible_ver(I)V

    .line 57
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_down_url:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_down_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    if-eqz v1, :cond_4

    .line 60
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->crc_sign_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getDown_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ModInfoBean;->getMod_game_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setRef_crc_sign_id(Ljava/lang/String;)V

    .line 64
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setMod_info(Ljava/lang/String;)V

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    if-eqz v1, :cond_5

    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameModInfoBean;->getDownUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setResource_url_remote(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    invoke-static {v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setSingle_game_mod_info(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public getEdit_recommend()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->edit_recommend:Ljava/lang/String;

    return-object v0
.end method

.method public getFast_entry_no4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fast_entry_no4:Ljava/util/List;

    return-object v0
.end method

.method public getFast_entry_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fast_entry_switch:I

    return v0
.end method

.method public getFight_funv2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fight_funv2:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_screenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fight_screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getFight_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fight_type:I

    return v0
.end method

.method public getFollow_background_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->follow_background_img:Ljava/lang/String;

    return-object v0
.end method

.method public getForum_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->forum_count:Ljava/lang/String;

    return-object v0
.end method

.method public getForum_id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->forum_id:J

    return-wide v0
.end method

.method public getForum_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->forum_switch:I

    return v0
.end method

.method public getGame_book()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_book:I

    return v0
.end method

.method public getGame_book_tag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_book_tag:Ljava/util/List;

    return-object v0
.end method

.method public getGame_comment_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_comment_count:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_coupon_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameVoucherBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_coupon_list:Ljava/util/List;

    return-object v0
.end method

.method public getGame_describe_second()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_describe_second:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_follow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_follow:I

    return v0
.end method

.method public getGame_gift_package()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_gift_package:Ljava/util/List;

    return-object v0
.end method

.method public getGame_info_top_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_info_top_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_prompt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamePromptBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_prompt:Ljava/util/List;

    return-object v0
.end method

.method public getGame_score()Lcom/join/mgps/dto/GameScore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_score:Lcom/join/mgps/dto/GameScore;

    return-object v0
.end method

.method public getGame_server_state()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_server_state:Ljava/util/List;

    return-object v0
.end method

.method public getGame_server_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_server_switch:I

    return v0
.end method

.method public getGame_service_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_service_switch:I

    return v0
.end method

.method public getGame_strategy()Lcom/join/mgps/dto/GameDetialStrategy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_strategy:Lcom/join/mgps/dto/GameDetialStrategy;

    return-object v0
.end method

.method public getGame_upgrade_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_upgrade_info:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_upgrade_info_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_upgrade_info_switch:I

    return v0
.end method

.method public getGift_package_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->gift_package_switch:I

    return v0
.end method

.method public getIco_local()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ico_local:Ljava/lang/String;

    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getIs_fight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_fight:I

    return v0
.end method

.method public getIs_network()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_network:I

    return v0
.end method

.method public getIs_world()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_world:I

    return v0
.end method

.method public getLast_week_down_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->last_week_down_count:I

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->lineCount:I

    return v0
.end method

.method public getLock_sp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->lock_sp:I

    return v0
.end method

.method public getMax_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->max_an_compatible_ver:I

    return v0
.end method

.method public getMin_an_compatible_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->min_an_compatible_ver:I

    return v0
.end method

.method public getMod_info()Lcom/join/mgps/dto/ModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-object v0
.end method

.method public getOther_down_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->other_down_switch:I

    return v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPanel_switch()Lcom/join/mgps/dto/PanelSwitch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->panel_switch:Lcom/join/mgps/dto/PanelSwitch;

    return-object v0
.end method

.method public getPapa_explain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->papa_explain:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-object v0
.end method

.method public getPercen_praise()Lcom/join/mgps/dto/PraisePercent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->percen_praise:Lcom/join/mgps/dto/PraisePercent;

    return-object v0
.end method

.method public getPercen_stars()Lcom/join/mgps/dto/StarsPercent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->percen_stars:Lcom/join/mgps/dto/StarsPercent;

    return-object v0
.end method

.method public getPic_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->pic_info:Ljava/util/List;

    return-object v0
.end method

.method public getPic_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->pic_position:I

    return v0
.end method

.method public getPlayer_qq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->player_qq:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_lowest_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_lowest_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_num:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_screenshot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_screenshot:I

    return v0
.end method

.method public getRecommend_ad_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendAdInfoData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_ad_info:Ljava/util/List;

    return-object v0
.end method

.method public getRecommend_adinfo_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_adinfo_switch:I

    return v0
.end method

.method public getRecommend_game()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_game:Ljava/util/List;

    return-object v0
.end method

.method public getRecommend_game_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_game_switch:I

    return v0
.end method

.method public getRecommend_information()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_information:Ljava/util/List;

    return-object v0
.end method

.method public getRecommend_information_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_information_switch:I

    return v0
.end method

.method public getRom_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->rom_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->score:Ljava/lang/String;

    return-object v0
.end method

.method public getScore_count()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->score_count:Ljava/lang/String;

    return-object v0
.end method

.method public getScore_count_manual()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->score_count_manual:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenshot_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->screenshot_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getSelf_comment()Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    return-object v0
.end method

.method public getServer_qq()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->server_qq:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSharer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sharer:Ljava/lang/String;

    return-object v0
.end method

.method public getSign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSingle_game_mod_info()Lcom/join/mgps/dto/SingleGameModInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_down_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_lowest_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_lowest_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getSource_ver_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/TipNew;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-object v0
.end method

.method public getSp_tpl_two_banner_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sp_tpl_two_banner_switch:I

    return v0
.end method

.method public getSp_tpl_two_position()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sp_tpl_two_position:I

    return v0
.end method

.method public getSync_memory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sync_memory:Ljava/lang/String;

    return-object v0
.end method

.method public getTab_page_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialTablePageBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->tab_page_info:Ljava/util/List;

    return-object v0
.end method

.method public getTag_info()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->tag_info:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTp_down_url()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->tp_down_url:Ljava/util/List;

    return-object v0
.end method

.method public getUnzip_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->unzip_size:Ljava/lang/String;

    return-object v0
.end method

.method public getVedio_cover_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->vedio_cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getVedio_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->vedio_url:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ver_name:Ljava/lang/String;

    return-object v0
.end method

.method public getWorld_area()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->world_area:I

    return v0
.end method

.method public getWorld_shop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->world_shop:I

    return v0
.end method

.method public setActual_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->actual_size:J

    return-void
.end method

.method public setAllow_start_up_ad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->allow_start_up_ad:Ljava/lang/String;

    return-void
.end method

.method public setApk_sign(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->apk_sign:Ljava/lang/String;

    return-void
.end method

.method public setBackground_color(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->background_color:Ljava/lang/String;

    return-void
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->banner:Ljava/util/List;

    return-void
.end method

.method public setBespeak_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->bespeak_count:Ljava/lang/String;

    return-void
.end method

.method public setBespeak_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->bespeak_switch:I

    return-void
.end method

.method public setCdn_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cdn_down_switch:I

    return-void
.end method

.method public setCfg_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_down_url:Ljava/lang/String;

    return-void
.end method

.method public setCfg_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_ver:Ljava/lang/String;

    return-void
.end method

.method public setCfg_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->cfg_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setComment_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_count:Ljava/lang/String;

    return-void
.end method

.method public setComment_count_manual(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_count_manual:Ljava/lang/String;

    return-void
.end method

.method public setComment_people_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_people_count:Ljava/lang/String;

    return-void
.end method

.method public setComment_people_count_manual(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_people_count_manual:Ljava/lang/String;

    return-void
.end method

.method public setComment_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->comment_switch:I

    return-void
.end method

.method public setCommitDataBeanList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentBaseBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->commitDataBeanList:Ljava/util/List;

    return-void
.end method

.method public setCommitListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameCommitListBean$GameCommitList;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->commitListData:Ljava/util/List;

    return-void
.end method

.method public setCompany_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->company_name:Ljava/lang/String;

    return-void
.end method

.method public setComposite_score(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->composite_score:Ljava/lang/String;

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->describe:Ljava/lang/String;

    return-void
.end method

.method public setDown_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_count:I

    return-void
.end method

.method public setDown_count_manual(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_count_manual:I

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_status:I

    return-void
.end method

.method public setDown_url_local(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_url_local:Ljava/lang/String;

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setDown_url_remote_nopic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->down_url_remote_nopic:Ljava/lang/String;

    return-void
.end method

.method public setDownloadType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->downloadType:I

    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_original_switch:Ljava/lang/String;

    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_outside_url:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_switch_v1:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_switch_v2:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->download_source_url:Ljava/lang/String;

    return-void
.end method

.method public setEdit_recommend(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->edit_recommend:Ljava/lang/String;

    return-void
.end method

.method public setFast_entry_no4(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fast_entry_no4:Ljava/util/List;

    return-void
.end method

.method public setFast_entry_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fast_entry_switch:I

    return-void
.end method

.method public setFight_funv2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fight_funv2:Ljava/lang/String;

    return-void
.end method

.method public setFight_screenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fight_screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setFight_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->fight_type:I

    return-void
.end method

.method public setFollow_background_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->follow_background_img:Ljava/lang/String;

    return-void
.end method

.method public setForum_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->forum_count:Ljava/lang/String;

    return-void
.end method

.method public setForum_id(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->forum_id:J

    return-void
.end method

.method public setForum_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->forum_switch:I

    return-void
.end method

.method public setGame_book(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_book:I

    return-void
.end method

.method public setGame_book_tag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialBookTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_book_tag:Ljava/util/List;

    return-void
.end method

.method public setGame_comment_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_comment_count:Ljava/lang/String;

    return-void
.end method

.method public setGame_coupon_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameVoucherBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_coupon_list:Ljava/util/List;

    return-void
.end method

.method public setGame_describe_second(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_describe_second:Ljava/lang/String;

    return-void
.end method

.method public setGame_follow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_follow:I

    return-void
.end method

.method public setGame_gift_package(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GiftPackageDataInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_gift_package:Ljava/util/List;

    return-void
.end method

.method public setGame_info_top_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_info_top_pic:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_prompt(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GamePromptBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_prompt:Ljava/util/List;

    return-void
.end method

.method public setGame_score(Lcom/join/mgps/dto/GameScore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_score:Lcom/join/mgps/dto/GameScore;

    return-void
.end method

.method public setGame_server_state(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_server_state:Ljava/util/List;

    return-void
.end method

.method public setGame_server_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_server_switch:I

    return-void
.end method

.method public setGame_service_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_service_switch:I

    return-void
.end method

.method public setGame_strategy(Lcom/join/mgps/dto/GameDetialStrategy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_strategy:Lcom/join/mgps/dto/GameDetialStrategy;

    return-void
.end method

.method public setGame_upgrade_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_upgrade_info:Ljava/lang/String;

    return-void
.end method

.method public setGame_upgrade_info_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->game_upgrade_info_switch:I

    return-void
.end method

.method public setGift_package_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->gift_package_switch:I

    return-void
.end method

.method public setIco_local(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ico_local:Ljava/lang/String;

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->info:Ljava/lang/String;

    return-void
.end method

.method public setIs_fight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_fight:I

    return-void
.end method

.method public setIs_network(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_network:I

    return-void
.end method

.method public setIs_world(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->is_world:I

    return-void
.end method

.method public setLast_week_down_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->last_week_down_count:I

    return-void
.end method

.method public setLineCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->lineCount:I

    return-void
.end method

.method public setLock_sp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->lock_sp:I

    return-void
.end method

.method public setMax_an_compatible_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->max_an_compatible_ver:I

    return-void
.end method

.method public setMin_an_compatible_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->min_an_compatible_ver:I

    return-void
.end method

.method public setMod_info(Lcom/join/mgps/dto/ModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->mod_info:Lcom/join/mgps/dto/ModInfoBean;

    return-void
.end method

.method public setOther_down_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->other_down_switch:I

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPanel_switch(Lcom/join/mgps/dto/PanelSwitch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->panel_switch:Lcom/join/mgps/dto/PanelSwitch;

    return-void
.end method

.method public setPapa_explain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->papa_explain:Ljava/lang/String;

    return-void
.end method

.method public setPay_tag_info(Lcom/join/mgps/dto/PayTagInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->pay_tag_info:Lcom/join/mgps/dto/PayTagInfo;

    return-void
.end method

.method public setPercen_praise(Lcom/join/mgps/dto/PraisePercent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->percen_praise:Lcom/join/mgps/dto/PraisePercent;

    return-void
.end method

.method public setPercen_stars(Lcom/join/mgps/dto/StarsPercent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->percen_stars:Lcom/join/mgps/dto/StarsPercent;

    return-void
.end method

.method public setPic_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialShowImageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->pic_info:Ljava/util/List;

    return-void
.end method

.method public setPic_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->pic_position:I

    return-void
.end method

.method public setPlayer_qq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->player_qq:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_lowest_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_lowest_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_num:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_screenshot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->plugin_screenshot:I

    return-void
.end method

.method public setRecommend_ad_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendAdInfoData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_ad_info:Ljava/util/List;

    return-void
.end method

.method public setRecommend_adinfo_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_adinfo_switch:I

    return-void
.end method

.method public setRecommend_game(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendGameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_game:Ljava/util/List;

    return-void
.end method

.method public setRecommend_game_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_game_switch:I

    return-void
.end method

.method public setRecommend_information(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendInfomationBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_information:Ljava/util/List;

    return-void
.end method

.method public setRecommend_information_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->recommend_information_switch:I

    return-void
.end method

.method public setRom_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->rom_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setScore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->score:Ljava/lang/String;

    return-void
.end method

.method public setScore_count(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->score_count:Ljava/lang/String;

    return-void
.end method

.method public setScore_count_manual(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->score_count_manual:Ljava/lang/String;

    return-void
.end method

.method public setScreenshot_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->screenshot_pic:Ljava/lang/String;

    return-void
.end method

.method public setSelf_comment(Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->self_comment:Lcom/join/mgps/dto/CommentAllListBean$SelfCommentBean;

    return-void
.end method

.method public setServer_qq(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->server_qq:Ljava/lang/String;

    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->share_url:Ljava/lang/String;

    return-void
.end method

.method public setSharer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sharer:Ljava/lang/String;

    return-void
.end method

.method public setSign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sign_id:Ljava/lang/String;

    return-void
.end method

.method public setSingle_game_mod_info(Lcom/join/mgps/dto/SingleGameModInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->single_game_mod_info:Lcom/join/mgps/dto/SingleGameModInfoBean;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->size:Ljava/lang/String;

    return-void
.end method

.method public setSource_down_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_down_url:Ljava/lang/String;

    return-void
.end method

.method public setSource_lowest_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_lowest_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_ver:Ljava/lang/String;

    return-void
.end method

.method public setSource_ver_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->source_ver_name:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/TipNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sp_tag_info:Lcom/join/mgps/dto/TipNew;

    return-void
.end method

.method public setSp_tpl_two_banner_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sp_tpl_two_banner_switch:I

    return-void
.end method

.method public setSp_tpl_two_position(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sp_tpl_two_position:I

    return-void
.end method

.method public setSync_memory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->sync_memory:Ljava/lang/String;

    return-void
.end method

.method public setTab_page_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DetialTablePageBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->tab_page_info:Ljava/util/List;

    return-void
.end method

.method public setTag_info(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->tag_info:Ljava/util/ArrayList;

    return-void
.end method

.method public setTp_down_url(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DownloadUrlBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->tp_down_url:Ljava/util/List;

    return-void
.end method

.method public setUnzip_size(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->unzip_size:Ljava/lang/String;

    return-void
.end method

.method public setVedio_cover_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->vedio_cover_pic:Ljava/lang/String;

    return-void
.end method

.method public setVedio_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->vedio_url:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->ver_name:Ljava/lang/String;

    return-void
.end method

.method public setWorld_area(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->world_area:I

    return-void
.end method

.method public setWorld_shop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetailResultBeanV3;->world_shop:I

    return-void
.end method
