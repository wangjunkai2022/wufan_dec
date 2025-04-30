.class public Lcom/papa91/activity/EmuMenuBaseActivity;
.super Lcom/papa91/activity/EmuBaseActivity;
.source "EmuMenuBaseActivity.java"

# interfaces
.implements Lcom/papa91/arc/view/MenuViewListener;
.implements Lcom/papa91/arc/view/IEmulator;


# static fields
.field public static lastWindow:I


# instance fields
.field activityQueue:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

.field ad_host_url:Ljava/lang/String;

.field private appInfo:Landroid/content/pm/PackageInfo;

.field protected autoSlotTime:I

.field cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

.field gameDir:Ljava/lang/String;

.field gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

.field gson:Lcom/google/gson/Gson;

.field private isDestroyed:Z

.field private isRecreate:Z

.field liveTime:J

.field protected menuView:Lcom/papa91/arc/view/MenuView;

.field oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

.field performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

.field protected rolesBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

.field showTip:I

.field skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

.field slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

.field sp:Landroid/content/SharedPreferences;

.field timer:Ljava/util/Timer;

.field timerTask:Ljava/util/TimerTask;

.field url:Ljava/lang/String;

.field vipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation
.end field

.field vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

.field vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;-><init>()V

    const/16 v0, 0x14

    .line 2
    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    .line 4
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    const-string v0, "http://anctapi.5fun.com"

    .line 6
    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->ad_host_url:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/activity/EmuMenuBaseActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->download(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showUploadRecordDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showCloseUploadRecordDialog()V

    return-void
.end method

.method private static download(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->v(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    sget-object v0, Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;->FULL_FETCH:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 3
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->A(Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p0}, Lcom/facebook/imagepipeline/core/g;->L(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    return-void
.end method

.method private getNextTip(Ljava/util/HashMap;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;I)I"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    const/4 p2, 0x0

    .line 3
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, -0x1

    :goto_1
    return p2
.end method

.method private goVipShop(I)V
    .locals 13

    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/VipBean;

    .line 14
    invoke-virtual {p1}, Lcom/papa91/arc/bean/VipBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 15
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&gameId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 16
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=4&gameName=\u5bf9\u6218\u7545\u73a9&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v2, "4"

    const-string v3, "0"

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17
    :cond_2
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=5&gameName=\u5feb\u901f\u9009\u5173&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v8, "4"

    const-string v9, "0"

    const-string v12, ""

    invoke-static/range {v7 .. v12}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=3&gameName=\u66f4\u591a\u5b58\u6863&returnStatus=1&gameId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v1, "4"

    const-string v2, "0"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=1&gameName=\u91d1\u624b\u6307&returnStatus=1&gameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v7, "4"

    const-string v8, "0"

    const-string v11, ""

    invoke-static/range {v6 .. v11}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://anv3frapi.5fun.com/static/vip2020/dist_d/index.html#/member?priId=2&gameName=\u4e00\u952e\u6280\u80fd&returnStatus=1&gameId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v1, "4"

    const-string v2, "0"

    const-string v5, ""

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/papa91/activity/EmuMenuBaseActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/papa91/activity/EmuMenuBaseActivity;->lambda$showVipTip$0(II)V

    return-void
.end method

.method public static synthetic j(Lcom/papa91/activity/EmuMenuBaseActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->lambda$showUploadRecordDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic k(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->lambda$showAdView$1()V

    return-void
.end method

.method private synthetic lambda$showAdView$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getHasShowAdInfo()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/AdInfoBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/view/MenuView;->showAdImage(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showUploadRecordDialog$2(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnPause()V

    .line 2
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/papa91/arc/view/MenuView;->setRankTimeStop(Z)V

    return-void
.end method

.method private synthetic lambda$showVipTip$0(II)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showCloseUploadRecordDialog()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u4e0a\u4f20\u6392\u4f4d\u8d5b\u8bb0\u5f55\uff1f\n\u653e\u5f03\u4e0a\u4f20\u5219\u6b64\u6761\u901a\u5173\u8bb0\u5f55\u4e0d\u88ab\u8bb0\u5f55\u5230\u6392\u4f4d\u8d5b\u5185"

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    const-string v1, "\u8fd4\u56de\u6e38\u620f"

    .line 3
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setConfirmText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    const-string v1, "\u7ee7\u7eed\u4e0a\u4f20"

    .line 4
    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setCancelText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    .line 5
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$14;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$14;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setListener(Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;)V

    .line 6
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    return-void
.end method

.method private showUploadRecordDialog()V
    .locals 8

    .line 1
    new-instance v0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Lcom/papa91/activity/j;

    invoke-direct {v1, p0}, Lcom/papa91/activity/j;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$13;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$13;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->setListener(Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;)V

    .line 4
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->rolesBeanList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->setData(Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v1}, Lcom/papa91/arc/view/MenuView;->getRankTime()I

    move-result v1

    iput v1, p0, Lcom/papa91/activity/EmuBaseActivity;->rankPlayTime:I

    .line 6
    div-int/lit16 v2, v1, 0xe10

    mul-int/lit16 v3, v2, 0xe10

    sub-int v4, v1, v3

    .line 7
    div-int/lit8 v4, v4, 0x3c

    sub-int/2addr v1, v3

    mul-int/lit8 v3, v4, 0x3c

    sub-int/2addr v1, v3

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u901a\u5173\u7528\u65f6\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0"

    const/16 v6, 0x9

    if-le v2, v6, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v4, v6, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, v6, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorUploadDialog;

    .line 9
    invoke-virtual {v0}, Lcom/papa91/arc/view/BaseDialog;->show()V

    return-void
.end method

.method private showVipTip(I)V
    .locals 3

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/papa91/arc/common/constants/StatIntents;->statShowVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 41
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    new-instance v1, Lcom/papa91/activity/k;

    invoke-direct {v1, p0}, Lcom/papa91/activity/k;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->setNoTipListener(Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;)V

    .line 42
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->show(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public IsHapticFeedbackEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsSoundEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ReadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 7
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 8
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_1
    :goto_2
    return-object p1

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 9
    :catch_3
    :cond_2
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public addEditCheatInfo(Lorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->addEditCheat(Lorg/ppsspp/ppsspp/EditCheatInfo;)V

    return-void
.end method

.method protected attachMenu()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/view/MenuView;

    invoke-direct {v0, p0}, Lcom/papa91/arc/view/MenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    .line 3
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->setMenuViewListener()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showMenuView(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showAdView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public cheatInfoEnable(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->cheatEnable(II)V

    return-void
.end method

.method public checkCheatCodeInfo(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->checkCheatCode(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 6
    :cond_2
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismissOnly()V

    .line 9
    :cond_4
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    if-eqz v0, :cond_7

    if-eq v0, p1, :cond_7

    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 12
    :cond_6
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 13
    :cond_7
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    if-eqz v0, :cond_9

    if-eq v0, p1, :cond_9

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 15
    :cond_8
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    :cond_9
    return-void
.end method

.method public deleteEditCheatInfo(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->deleteEditCheat(I)V

    return-void
.end method

.method public enableEidtCheat(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v0

    const-string v1, "Custom_openGoldfinger"

    const-string v2, ""

    if-lez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->enableEidtCheat(I)V

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->enableEidtCheat(I)V

    const-string p1, "Custom_closeGoldfinger"

    .line 5
    invoke-virtual {p0, p1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    sget-object v3, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    if-eqz v3, :cond_3

    if-ne p2, v0, :cond_3

    .line 7
    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-interface {v3, p0, p2, p1}, Lcom/papa91/arc/CContext$IVideoAdListener;->showGoldAdDialog(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->enableEidtCheat(I)V

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public exit()V
    .locals 0

    return-void
.end method

.method public forum()V
    .locals 0

    return-void
.end method

.method protected gameDestroy(Landroid/app/Activity;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 7
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v5, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-wide v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.emu.gamePlayTimes"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "gameId"

    .line 11
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "liveTime"

    .line 12
    iget-wide v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 14
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public gameOnPause()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 2
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    return-void
.end method

.method public gameOnResume()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 2
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    return-void
.end method

.method protected gamePause(Landroid/app/Activity;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 7
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-wide v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->liveTime:J

    .line 10
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected gameResume(Landroid/app/Activity;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->activityQueue:Ljava/util/LinkedHashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAdRequestParam()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "platform"

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2
    :try_start_0
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v4, "\'"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 7
    new-instance v2, Lcom/papa91/arc/MyJson;

    invoke-direct {v2}, Lcom/papa91/arc/MyJson;-><init>()V

    :try_start_1
    const-string v3, "version"

    .line 8
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "deviceid"

    .line 9
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sign"

    .line 10
    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    new-instance v0, Lcom/papa91/arc/MyJson;

    invoke-direct {v0}, Lcom/papa91/arc/MyJson;-><init>()V

    const-string v1, "simulatorType"

    .line 13
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getSimulatorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "args"

    .line 14
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoSlotStatus()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_AUTO_SLOT_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoStateMax()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAutoStateTimeCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    if-gtz v0, :cond_0

    const/16 v0, 0x14

    .line 2
    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    goto :goto_0

    .line 3
    :cond_0
    sget-boolean v1, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    return v0
.end method

.method public getAutoStateTimeGap()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getChangeDiskState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->cheatInfos:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentChar()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->getCurChar()I

    move-result v0

    return v0
.end method

.method public getCustomCheatTip(Z)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getEditCheatListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ppsspp/ppsspp/EditCheatInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getEditCheatList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    return-object v0
.end method

.method public getGateData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/GateBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuTypes(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/TypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget v6, Lorg/ppsspp/ppsspp/R$drawable;->ic_cheat_vip:I

    const-string v3, "\u609f\u996d\u5b9a\u5236"

    move-object v1, p1

    move v5, v6

    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const-string v9, "\u81ea\u5b9a\u4e49"

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v4, "\u6211\u7684\u5b58\u6863"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-string v10, "\u81ea\u52a8\u5b58\u6863"

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance p1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v2, 0x2

    const/4 v4, 0x0

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->ic_slot_store_h:I

    sget v6, Lorg/ppsspp/ppsspp/R$drawable;->ic_slot_store_n:I

    const-string v3, "\u5b58\u6863\u5546\u5e97"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getMiniRankTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->miniRankTime:I

    return v0
.end method

.method public getModSubfix()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getRequestParam()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->appInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gzRN53VWRF9BYUXomg2014"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/papa91/arc/MyJson;

    invoke-direct {v0}, Lcom/papa91/arc/MyJson;-><init>()V

    :try_start_1
    const-string v1, "version"

    .line 8
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceid"

    .line 9
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sign"

    .line 10
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->httpKeySign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    new-instance v1, Lcom/papa91/arc/MyJson;

    invoke-direct {v1}, Lcom/papa91/arc/MyJson;-><init>()V

    .line 12
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "args"

    .line 13
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "messages"

    .line 14
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatorType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getSkillConfigData()Lcom/papa91/arc/bean/SkillConfigBean;
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "/"

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/skill_config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/papa91/arc/bean/SkillConfigBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/SkillConfigBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSkillTableData()Lcom/papa91/arc/bean/SkillTableDataBean;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/skill_table.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/papa91/arc/bean/SkillTableDataBean;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/SkillTableDataBean;

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    return-object v0
.end method

.method public getSpBindImages(I)[I
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-nez p1, :cond_0

    new-array p1, v4, [I

    .line 1
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_1_h:I

    aput v4, p1, v1

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_2_h:I

    aput v1, p1, v5

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_3_h:I

    aput v1, p1, v3

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_4_h:I

    aput v1, p1, v2

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_5_h:I

    aput v1, p1, v0

    return-object p1

    :cond_0
    if-ne p1, v5, :cond_1

    new-array p1, v4, [I

    .line 2
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_1_n:I

    aput v4, p1, v1

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_2_n:I

    aput v1, p1, v5

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_3_n:I

    aput v1, p1, v3

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_4_n:I

    aput v1, p1, v2

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_font_5_n:I

    aput v1, p1, v0

    return-object p1

    :cond_1
    if-ne p1, v3, :cond_2

    new-array p1, v4, [I

    .line 3
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_1_h:I

    aput v4, p1, v1

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_2_h:I

    aput v1, p1, v5

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_3_h:I

    aput v1, p1, v3

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_4_h:I

    aput v1, p1, v2

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_5_h:I

    aput v1, p1, v0

    return-object p1

    :cond_2
    if-ne p1, v2, :cond_3

    new-array p1, v4, [I

    .line 4
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_1_n:I

    aput v4, p1, v1

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_2_n:I

    aput v1, p1, v5

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_3_n:I

    aput v1, p1, v3

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_4_n:I

    aput v1, p1, v2

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->ic_sp_5_n:I

    aput v1, p1, v0

    return-object p1

    :cond_3
    new-array p1, v4, [I

    return-object p1
.end method

.method public getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;
    .locals 7

    .line 1
    const-class v0, Lcom/papa91/arc/bean/SpBindsDataBean;

    const-string v1, "/sp_binds.json"

    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ugcPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/SpBindsDataBean;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ugcPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ugcPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/SpBindsDataBean;

    :cond_0
    if-nez v2, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->ugcPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/papa91/activity/EmuMenuBaseActivity;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/papa91/arc/bean/SpBindsDataBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()I
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-static {v0}, Lcom/papa91/arc/SnkConfig;->isSnkGame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    return v0
.end method

.method public getVipData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    return-object v0
.end method

.method public goSlotShop()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v1, "3"

    const-string v2, "35"

    const-string v5, ""

    move-object v3, v4

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public goVipShop(IZ)V
    .locals 7

    if-eqz p2, :cond_6

    const-string p2, "&gameId="

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorCheckpointUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->goVipShop(I)V

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorCheckpointUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "4"

    const-string v3, "0"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorGoldenFingerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->goVipShop(I)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorGoldenFingerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "4"

    const-string v3, "0"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorOneSkillUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->goVipShop(I)V

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorOneSkillUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "4"

    const-string v3, "0"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_6
    invoke-direct {p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->goVipShop(I)V

    :goto_0
    return-void
.end method

.method protected handleAdError(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->handleAdError(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "adAction"

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    const-string p1, "extras"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 5
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "state"

    .line 6
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz p2, :cond_1

    if-eq p1, v0, :cond_1

    .line 9
    invoke-virtual {p2, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    :cond_1
    return-void
.end method

.method protected handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "adAction"

    const/16 v0, 0x3f0

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "extras"

    .line 3
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "close"

    .line 6
    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string p2, "state"

    .line 7
    invoke-virtual {v1, p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-eq p2, v3, :cond_2

    .line 10
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x3ef

    if-ne p1, v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz p1, :cond_2

    if-eq p2, v3, :cond_2

    .line 12
    invoke-virtual {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->updateSwitchState(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public isRankAutoUpload()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->rankAutoUpload:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRankGame()Z
    .locals 2

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSPVisible()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSPVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_isSpVisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowCheating()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isShowGate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowOnekey()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/skill_table.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public isShowQuickSlot()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public keysSetting()V
    .locals 0

    return-void
.end method

.method public loadAdVideo()V
    .locals 0

    return-void
.end method

.method public loadGateStage(I)V
    .locals 0

    return-void
.end method

.method public loadRomFinish()V
    .locals 4

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    const/16 v1, 0xe

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->attachMenu()V

    .line 3
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->showTimer()V

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/view/MenuView;->startTimer(J)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getAutoSlotStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->setAutoSave(I)V

    .line 7
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$8;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$8;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public loadSlotState(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->loadState(Ljava/lang/String;)I

    return-void
.end method

.method public modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->modifyEditCheat(ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    return-void
.end method

.method protected needResumeGame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->needResumeGame()Z

    move-result v0

    return v0
.end method

.method public needShowBottomBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needShowTimer()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAdImageClick()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuBaseActivity;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v1, v0}, Lcom/papa91/arc/CContext$ISharePrefrence;->saveHasShowAdInfo(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->adInfoBean:Lcom/papa91/arc/bean/AdInfoBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/AdInfoBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const-string v2, ""

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/view/MenuView;->showAdImage(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onChangeDisk()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gameDir:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gson:Lcom/google/gson/Gson;

    .line 4
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$2;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Thread;->run()V

    .line 6
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    const-string p1, ""

    .line 7
    sput-object p1, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 9
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreAdData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->isDestroyed:Z

    .line 2
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onDestroy()V

    .line 3
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->stopTimer()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V

    return-void
.end method

.method public onHideMenu()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onLoadStageCompleted(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->onLoadStageCompleted(ILjava/lang/String;)V

    .line 2
    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/activity/EmuMenuBaseActivity$4;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onMessengerConnected(Landroid/os/Messenger;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->onMessengerConnected(Landroid/os/Messenger;)V

    .line 2
    invoke-static {p0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/papa91/arc/common/constants/StatIntents;->setMessenger(Landroid/os/Messenger;)V

    return-void
.end method

.method public onRankFinish(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity;->miniRankTime:I

    const-string v1, "\u7cfb\u7edf\u63d0\u793a"

    if-ge p1, v0, :cond_0

    .line 2
    new-instance p1, Lcom/papa91/arc/dialog/SimulatorContinueDialog;

    invoke-direct {p1, p0}, Lcom/papa91/arc/dialog/SimulatorContinueDialog;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/papa91/arc/dialog/SimulatorContinueDialog;->setTipTitle(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorContinueDialog;

    .line 4
    invoke-virtual {p1}, Lcom/papa91/arc/view/BaseDialog;->show()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    invoke-direct {p1, p0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setTipTitle(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;

    .line 7
    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$12;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$12;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SimulatorTipTwoDialog;->setListener(Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;)V

    .line 8
    invoke-virtual {p1}, Lcom/papa91/arc/view/BaseDialog;->show()V

    :goto_0
    return-void
.end method

.method protected onRankRecordEnd(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "\u8bb0\u5f55\u751f\u6210\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    .line 2
    invoke-static {p0, p1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showUploadRecordDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenShot()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->saveSnap()V

    return-void
.end method

.method public onTimerTick(J)V
    .locals 0

    return-void
.end method

.method public onVipChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->httpPostMemberInfo()V

    .line 3
    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$10;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$10;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->onVipChanged()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->onVipChanged()V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->onVipChanged()V

    :cond_4
    return-void
.end method

.method public pauseGame()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 2
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    return-void
.end method

.method public quickSlot()V
    .locals 0

    return-void
.end method

.method public reload()V
    .locals 0

    return-void
.end method

.method public restoreAdData()V
    .locals 3

    const-string v0, "gameUrl"

    .line 1
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->ad_host_url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getAdRequestParam()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$11;

    invoke-direct {v1, p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity$11;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public restoreVipData()V
    .locals 3

    const-string v0, ""

    const-string v1, "http://anv9.ctapi.5fun.com/simulator/simulator_member_fun_type"

    .line 1
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->url:Ljava/lang/String;

    .line 2
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "appContent"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/simulator/simulator_member_fun_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getRequestParam()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity$3;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public resumeGame()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setPause(I)V

    .line 2
    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->gameIsPause:Z

    return-void
.end method

.method public romPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    return-object v0
.end method

.method public saveBindsFileData()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->saveBindsFile()V

    return-void
.end method

.method public saveGameConfig()V
    .locals 0

    return-void
.end method

.method public saveSlotState(Ljava/lang/String;)V
    .locals 3

    const-string v0, "."

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->jMenuSaveState(I)I

    .line 2
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/papa91/activity/EmuMenuBaseActivity$6;

    invoke-direct {v0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$6;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public screenMode(I)V
    .locals 0

    return-void
.end method

.method public setAutoSlotStatus(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_AUTO_SLOT_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->stopTimer()V

    .line 3
    iput v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->autoSlotTime:I

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->startTimer()V

    .line 5
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->setAutoSave(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected setMenuViewListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Lcom/papa91/arc/view/MenuView;->setMenuViewListener(Lcom/papa91/arc/view/MenuViewListener;)V

    :cond_0
    return-void
.end method

.method public setSPBindData(III)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/papa91/activity/EmuBaseActivity;->setSPBind(III)V

    return-void
.end method

.method public setSPMenuVisible(Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setSPVisible(Z)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_isSpVisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public showAdVideo()V
    .locals 0

    return-void
.end method

.method public showAdView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/papa91/activity/l;

    invoke-direct {v0, p0}, Lcom/papa91/activity/l;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showGGCodeButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showMenuCheating()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->cheatDialog:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->show()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    return-void

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/VipBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public showMenuGate()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingGateDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->show()V

    :cond_1
    return-void
.end method

.method public showMenuOnekey()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->oneKeyDialog:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->show()V

    :cond_1
    return-void
.end method

.method public showMenuPerformance()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/papa91/arc/util/GameSettings;->init(Landroid/content/Context;)V

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingTotalLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lcom/papa91/activity/EmuMenuBaseActivity;->lastWindow:I

    const/4 v7, 0x1

    if-ne v6, v1, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/papa91/arc/dialog/SettingPerformanceDialog;->show([Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->performanceDialog:Lcom/papa91/arc/dialog/SettingPerformanceDialog;

    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$5;

    invoke-direct {v1, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$5;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/BaseDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public showMenuSlot()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object v0

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lcom/papa91/arc/common/constants/StatIntents;->statOnclickFunction(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingSlotDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    .line 4
    :cond_0
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->dnsJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "appContent"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setappContentUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->slotDialog:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->show()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/VipBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public showMenuView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showShare(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingShareDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingShareDialog;->setIamge(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    new-instance v1, Lcom/papa91/activity/EmuMenuBaseActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/papa91/activity/EmuMenuBaseActivity$9;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingShareDialog;->setShareListener(Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;)V

    .line 7
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->shareDialog:Lcom/papa91/arc/dialog/SettingShareDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    :cond_1
    return-void
.end method

.method public showTimeLimitedDialog1()V
    .locals 0

    return-void
.end method

.method public showTimeLimitedDialog2()V
    .locals 0

    return-void
.end method

.method public varargs showVip([Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipBeans:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingVipDialog;->updateVipDatas(Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->restoreVipData()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipDialog:Lcom/papa91/arc/dialog/SettingVipDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingVipDialog;->show([Ljava/lang/String;)V

    return-void
.end method

.method public showVipTip()V
    .locals 11

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowGate()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v1

    if-gtz v1, :cond_7

    .line 29
    sget-object v1, Lcom/papa91/arc/CContext;->mShareLitener:Lcom/papa91/arc/CContext$ISharePrefrence;

    invoke-interface {v1}, Lcom/papa91/arc/CContext$ISharePrefrence;->getEmulatorStartAdCount()I

    move-result v1

    .line 30
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_start_count"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v1, :cond_6

    if-lt v2, v1, :cond_6

    .line 31
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_has_show_tip"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "_start_time"

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9}, Ljava/util/Date;->getDay()I

    move-result v9

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getDay()I

    move-result v8

    if-eq v1, v8, :cond_6

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_show_tip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, -0x1

    invoke-interface {v1, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v5

    const/4 v8, 0x3

    if-lt v1, v8, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    .line 33
    :goto_3
    invoke-direct {p0, v0, v4}, Lcom/papa91/activity/EmuMenuBaseActivity;->getNextTip(Ljava/util/HashMap;I)I

    move-result v0

    if-eq v0, v10, :cond_5

    .line 34
    invoke-direct {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->showVipTip(I)V

    move v4, v0

    .line 35
    :cond_5
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getDay()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    :cond_6
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    return-void
.end method

.method public showVipTip(II)V
    .locals 7

    const-string p1, "_show_tip"

    const-string v0, "_"

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getCheatListData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowOnekey()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isShowGate()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    .line 9
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    if-nez v0, :cond_3

    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0, p0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnEmulatorListener(Lcom/papa91/arc/view/IEmulator;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    new-instance v2, Lcom/papa91/activity/EmuMenuBaseActivity$7;

    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$7;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    invoke-virtual {v0, v2}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->setNoTipListener(Lcom/papa91/arc/dialog/SettingVipTipDialog$INoTipListener;)V

    .line 12
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    .line 13
    iput v4, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    .line 14
    :cond_4
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    invoke-direct {p0, v1, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getNextTip(Ljava/util/HashMap;I)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 15
    iput v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    .line 16
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->vipTipDialog:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v1, v0, p2}, Lcom/papa91/arc/dialog/SettingVipTipDialog;->show(II)V

    .line 17
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p2

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    iget v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statShowVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->resumeGame()V

    .line 19
    :goto_3
    iget-object p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->showTip:I

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public startTimer()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    :cond_1
    new-instance v2, Lcom/papa91/activity/EmuMenuBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/papa91/activity/EmuMenuBaseActivity$1;-><init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    iput-object v2, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timerTask:Ljava/util/TimerTask;

    .line 7
    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    .line 8
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timer:Ljava/util/Timer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    iput-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity;->timerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method public ugcPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->ugcPath:Ljava/lang/String;

    return-object v0
.end method

.method public vibrate(Z)V
    .locals 0

    return-void
.end method

.method public voice(Z)V
    .locals 0

    return-void
.end method
