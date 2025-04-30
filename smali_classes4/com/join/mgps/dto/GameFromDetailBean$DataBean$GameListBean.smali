.class public Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;
.super Ljava/lang/Object;
.source "GameFromDetailBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameFromDetailBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GameListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$TagInfoBean;,
        Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$GameTagInfoBean;,
        Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;
    }
.end annotation


# instance fields
.field private allow_start_up_ad:Ljava/lang/String;

.field private bespeak_switch:I

.field private crc_sign_id:Ljava/lang/String;

.field private down_count:I

.field private down_status:I

.field private down_url_remote:Ljava/lang/String;

.field private download_original_switch:Ljava/lang/String;

.field private download_outside_url:Ljava/lang/String;

.field private download_source_switch_v1:Ljava/lang/String;

.field private download_source_switch_v2:Ljava/lang/String;

.field private download_source_url:Ljava/lang/String;

.field private game_desc:Ljava/lang/String;

.field private game_ico_remote:Ljava/lang/String;

.field private game_id:Ljava/lang/String;

.field private game_info_tpl_type:Ljava/lang/String;

.field private game_name:Ljava/lang/String;

.field private game_size:Ljava/lang/String;

.field private game_tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$GameTagInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private ico_remote:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private info_tpl_type:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private pay_tag_info:Ljava/lang/Object;

.field private plugin_num:I

.field private size:Ljava/lang/String;

.field private sp_tag_info:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;

.field private sp_tpl_two_position:Ljava/lang/String;

.field private tag_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$TagInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllow_start_up_ad()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->allow_start_up_ad:Ljava/lang/String;

    return-object v0
.end method

.method public getBespeak_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->bespeak_switch:I

    return v0
.end method

.method public getCrc_sign_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->crc_sign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->down_count:I

    return v0
.end method

.method public getDown_status()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->down_status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->bespeak_switch:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x6

    :cond_0
    return v0
.end method

.method public getDown_url_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->down_url_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_original_switch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_original_switch:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_outside_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_outside_url:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_source_switch_v1:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_switch_v2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_source_switch_v2:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_source_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_source_url:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_desc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_ico_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_info_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_size()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_size:Ljava/lang/String;

    return-object v0
.end method

.method public getGame_tag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$GameTagInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_tag_info:Ljava/util/List;

    return-object v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo_tpl_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->info_tpl_type:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_tag_info()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->pay_tag_info:Ljava/lang/Object;

    return-object v0
.end method

.method public getPlugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->plugin_num:I

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getSp_tag_info()Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->sp_tag_info:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;

    return-object v0
.end method

.method public getSp_tpl_two_position()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->sp_tpl_two_position:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$TagInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->tag_info:Ljava/util/List;

    return-object v0
.end method

.method public setAllow_start_up_ad(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->allow_start_up_ad:Ljava/lang/String;

    return-void
.end method

.method public setBespeak_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->bespeak_switch:I

    return-void
.end method

.method public setCrc_sign_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->crc_sign_id:Ljava/lang/String;

    return-void
.end method

.method public setDown_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->down_count:I

    return-void
.end method

.method public setDown_status(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->down_status:I

    return-void
.end method

.method public setDown_url_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->down_url_remote:Ljava/lang/String;

    return-void
.end method

.method public setDownload_original_switch(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_original_switch:Ljava/lang/String;

    return-void
.end method

.method public setDownload_outside_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_outside_url:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_source_switch_v1:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_switch_v2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_source_switch_v2:Ljava/lang/String;

    return-void
.end method

.method public setDownload_source_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->download_source_url:Ljava/lang/String;

    return-void
.end method

.method public setGame_desc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_desc:Ljava/lang/String;

    return-void
.end method

.method public setGame_ico_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setGame_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_id:Ljava/lang/String;

    return-void
.end method

.method public setGame_info_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_name:Ljava/lang/String;

    return-void
.end method

.method public setGame_size(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_size:Ljava/lang/String;

    return-void
.end method

.method public setGame_tag_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$GameTagInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->game_tag_info:Ljava/util/List;

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->info:Ljava/lang/String;

    return-void
.end method

.method public setInfo_tpl_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->info_tpl_type:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPay_tag_info(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->pay_tag_info:Ljava/lang/Object;

    return-void
.end method

.method public setPlugin_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->plugin_num:I

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->size:Ljava/lang/String;

    return-void
.end method

.method public setSp_tag_info(Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->sp_tag_info:Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$SpTagInfoBean;

    return-void
.end method

.method public setSp_tpl_two_position(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->sp_tpl_two_position:Ljava/lang/String;

    return-void
.end method

.method public setTag_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean$TagInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameFromDetailBean$DataBean$GameListBean;->tag_info:Ljava/util/List;

    return-void
.end method
