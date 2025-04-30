.class public Lcom/join/mgps/activity/MYAccountDetialActivity;
.super Lcom/BaseActivity;
.source "MYAccountDetialActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/r$c;
.implements Lcom/join/mgps/dialog/s0$c;
.implements Lcom/join/mgps/listener/a$a;
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c04bd
.end annotation


# static fields
.field private static final E:I = 0x2

.field private static final F:I = 0x3

.field private static final G:I = 0x4


# instance fields
.field A:Z

.field private B:J

.field private C:Z

.field private D:Z

.field private a:Landroid/content/Context;

.field b:Lcom/join/mgps/rpc/b;

.field c:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field q:Lcom/join/mgps/dto/AccountBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field r:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private s:Lcom/join/mgps/dialog/x0;

.field private t:Lcom/join/mgps/dialog/s0;

.field private u:Lcom/join/mgps/dialog/r;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Lcom/join/mgps/dialog/l1;

.field private z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->v:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->w:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->x:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->A:Z

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->C:Z

    return-void
.end method

.method static synthetic E0(Lcom/join/mgps/activity/MYAccountDetialActivity;)Lcom/join/mgps/dialog/l1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->y:Lcom/join/mgps/dialog/l1;

    return-object p0
.end method

.method static synthetic F0(Lcom/join/mgps/activity/MYAccountDetialActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    return-object p0
.end method

.method private O0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method private authorize(Lcn/sharesdk/framework/Platform;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->B:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->B:J

    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u3002"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->C:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->C:Z

    .line 7
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p1, v2}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 9
    :cond_4
    invoke-virtual {p1, p0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 10
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/Platform;->showUser(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->Q0()V

    .line 13
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 16
    iput-boolean v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->C:Z

    .line 17
    iput-boolean v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->D:Z

    goto :goto_0

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->D:Z

    :goto_0
    return-void
.end method


# virtual methods
.method G0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method H0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_qq()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->QQ_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->L0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method I0(Ljava/lang/String;I)V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setUid(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setUnique_id(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setType(I)V

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->setSign(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->b:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBindThirdwaiRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/join/mgps/rpc/b;->x(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {p2}, Lcom/join/mgps/dto/AccountLoginresultData;->is_success()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->M0()V

    const-string p1, "\u7ed1\u5b9a\u6210\u529f"

    .line 12
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/AccountLoginresultData;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountLoginresultData;->getError_msg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 16
    throw p1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    :goto_2
    return-void
.end method

.method J0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_wx()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WEIXIN_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->L0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method K0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_wb()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v0}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->authorize(Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WB_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->L0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public L0(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->QQ_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QQ"

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WEIXIN_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5fae\u4fe1"

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/join/kotlin/ui/account/modle/UnBindPlatform;->WB_OPENID:Lcom/join/kotlin/ui/account/modle/UnBindPlatform;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5fae\u535a"

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->A:Z

    const-string v0, "\u65e0\u6cd5\u89e3\u9664\u7ed1\u5b9a"

    const-string v1, "\u89e3\u9664\u7b2c\u4e09\u65b9\u5e10\u53f7\u5fc5\u987b\u7ed1\u5b9a\u624b\u673a\u53f7"

    const-string v2, "\u7ed1\u5b9a\u624b\u673a"

    goto :goto_1

    .line 6
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u662f\u5426\u89e3\u9664"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7ed1\u5b9a\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89e3\u7ed1\u540e\u5c06\u65e0\u6cd5\u4f7f\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u5e10\u53f7\u767b\u5f55\u609f\u996d\u6e38\u620f\u5385"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->A:Z

    const-string v2, "\u89e3\u9664\u7ed1\u5b9a"

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 9
    :goto_1
    new-instance v3, Lcom/join/mgps/dialog/b;

    iget-object v4, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    const v5, 0x7f12014a

    invoke-direct {v3, v4, v5}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    const-string v4, "\u53d6\u6d88"

    .line 10
    invoke-virtual {v3, v4}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v2}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/MYAccountDetialActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity$c;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method M0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->cloneNewAccountBean()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountUserInfoRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;-><init>()V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setUid(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setDevice_id(Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->b:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountUserInfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/b;->d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->N0(Lcom/join/mgps/dto/AccountBean;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v0

    const/16 v1, 0x2bd

    if-ne v0, v1, :cond_2

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method N0(Lcom/join/mgps/dto/AccountBean;)V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAvatarSrc(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/dto/AccountBean;->setPapaMoney(J)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setMobile(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setGender(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setUid(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setLevel(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setAccount(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getExp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setExp(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getPwd_set_up()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setPwd_set_up(I)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getIs_anchor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_anchor(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_wx()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_bind_wx(I)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_wb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccountBean;->setIs_bind_wb(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_qq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBean;->setIs_bind_qq(I)V

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->a1()V

    :cond_0
    return-void
.end method

.method P0()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getLocalUserIcon()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    .line 7
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method Q0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method R0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    const-string p2, "\u4e00\u4e2a\u6708"

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->v:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->v:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method S0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->P0()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->V0()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    .line 5
    invoke-direct {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->O0()V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/broadcast/a;->a(Landroid/content/Context;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u9000\u51fa\u767b\u5f55\u6210\u529f"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->p:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method T0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->cloneNewAccountBean()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/MGChooseIconActivity_;->V0(Landroid/content/Context;)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGChooseIconActivity_$m;->b(I)Lcom/join/mgps/activity/MGChooseIconActivity_$m;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method U0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    sget-object v1, Lcom/join/mgps/rpc/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method V0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lcom/join/mgps/dto/AccoutLoginOutRequest;

    invoke-direct {v0}, Lcom/join/mgps/dto/AccoutLoginOutRequest;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->setUid(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->setSign(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->b:Lcom/join/mgps/rpc/b;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccoutLoginOutRequest;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/b;->b(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/b;->accountLoginOut(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->P0()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method W0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->y:Lcom/join/mgps/dialog/l1;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->y:Lcom/join/mgps/dialog/l1;

    const v1, 0x7f090acd

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->y:Lcom/join/mgps/dialog/l1;

    const v2, 0x7f090b5c

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->y:Lcom/join/mgps/dialog/l1;

    const v3, 0x7f090243

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 5
    new-instance v3, Lcom/join/mgps/activity/MYAccountDetialActivity$a;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/MYAccountDetialActivity$a;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/n;->g(Landroid/widget/EditText;)V

    .line 7
    new-instance v3, Lcom/join/mgps/activity/MYAccountDetialActivity$b;

    invoke-direct {v3, p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity$b;-><init>(Lcom/join/mgps/activity/MYAccountDetialActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->changeNickNameNotice()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method X0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {v0}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 3
    sget-object v1, Lcom/join/mgps/rpc/g;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Lcom/join/mgps/activity/ShareWebActivity_;->O2(Landroid/content/Context;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ShareWebActivity_$f0;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/ShareWebActivity_$f0;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method Y0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_;->N0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MyAccountSettingPasswordActivity_$g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method

.method Z0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_;->V0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MyAccountBindPhoneActivity_$l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_;->H0(Landroid/content/Context;)Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;->a(Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/activity/MyAccountInsteadPhoneActivity_$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :goto_0
    return-void
.end method

.method a1()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->w:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->i:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_wx()I

    move-result v0

    const/high16 v1, -0x10000

    const-string v2, "#8a8a8a"

    const-string v3, "\u5df2\u7ed1\u5b9a"

    const-string v4, "\u672a\u7ed1\u5b9a"

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->m:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_wb()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->n:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getIs_bind_qq()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->o:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->v:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u7537"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->g:Landroid/widget/TextView;

    const-string v1, "\u5973"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getPwd_set_up()I

    move-result v0

    const v1, -0xc1c2

    const v2, -0x757576

    if-nez v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->l:Landroid/widget/TextView;

    const-string v3, "\u672a\u8bbe\u7f6e"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 28
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->l:Landroid/widget/TextView;

    const-string v3, "\u70b9\u51fb\u4fee\u6539"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->k:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "****"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/AccountBean;->getMobile()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 34
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    :goto_5
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getMember_title()Lcom/join/mgps/dto/AccountBean$MemberInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean$MemberInfo;->getBattleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->r:Landroid/widget/TextView;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method

.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->b0()Lcom/join/mgps/rpc/b;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->b:Lcom/join/mgps/rpc/b;

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/x0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->v(Landroid/content/Context;)Lcom/join/mgps/dialog/s0;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->t:Lcom/join/mgps/dialog/s0;

    .line 4
    new-instance v0, Lcom/join/mgps/dialog/l1;

    const v1, 0x7f12014a

    invoke-direct {v0, p0, v1}, Lcom/join/mgps/dialog/l1;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->y:Lcom/join/mgps/dialog/l1;

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/z;->q(Landroid/content/Context;)Lcom/join/mgps/dialog/r;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->u:Lcom/join/mgps/dialog/r;

    .line 6
    iput-object p0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u4e2a\u4eba\u4fe1\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->a1()V

    .line 9
    invoke-static {}, Lcom/join/mgps/listener/a;->b()Lcom/join/mgps/listener/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/listener/a;->a(Lcom/join/mgps/listener/a$a;)V

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->z:Landroid/os/Handler;

    return-void
.end method

.method b1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/rpc/g;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/static/cancelAccount/index.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method c1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method d1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->Q0()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;

    invoke-direct {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setGender(I)V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAccount(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setNick_name(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setUid(I)V

    .line 8
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setToken(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setAvatar_src(Ljava/lang/String;)V

    .line 10
    invoke-static {v1}, Lcom/join/mgps/Util/u1;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->setSign(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->b:Lcom/join/mgps/rpc/b;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountChangeUserinfoRequestBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->c(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    move-result v2

    if-nez v2, :cond_1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    iget-object v3, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/b;->saveAccountData(Lcom/join/mgps/dto/AccountBean;Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->c1()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/join/mgps/activity/MYAccountDetialActivity;->R0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    .line 21
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 22
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showToast(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method e1()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->t:Lcom/join/mgps/dialog/s0;

    invoke-virtual {v0, p0}, Lcom/join/mgps/dialog/s0;->b(Lcom/join/mgps/dialog/s0$c;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->t:Lcom/join/mgps/dialog/s0;

    iget-object v1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/s0;->c(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->t:Lcom/join/mgps/dialog/s0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iput-boolean v2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->D:Z

    .line 3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/ShareDataBean;

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareDataBean;->getRes()Ljava/util/HashMap;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareDataBean;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    .line 8
    sget-object v6, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "gender"

    const-string v8, "nickname"

    const/4 v9, 0x1

    if-eqz v6, :cond_4

    .line 9
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 14
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 15
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "\u7537"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    .line 16
    :cond_4
    sget-object v6, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 17
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 19
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 20
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :cond_6
    const-string v6, "sex"

    .line 21
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 22
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    goto :goto_1

    :cond_7
    move v1, v5

    .line 24
    :cond_8
    sget-object v5, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v1, 0x3

    .line 25
    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "name"

    .line 27
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 28
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 29
    :cond_a
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 30
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 31
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    .line 32
    :cond_b
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->Q0()V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareDataBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->I0(Ljava/lang/String;I)V

    goto :goto_3

    .line 36
    :cond_c
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u53d6\u6d88\u6388\u6743"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_3
    return v2
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->N0(Lcom/join/mgps/dto/AccountBean;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBean;->setNickname(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->d1()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->back_image()V

    return-void
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->C:Z

    const/16 p1, 0x8

    if-ne p2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->z:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->C:Z

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p2

    invoke-virtual {p2}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/PlatformDb;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/join/mgps/dto/ShareDataBean;

    invoke-direct {v2}, Lcom/join/mgps/dto/ShareDataBean;-><init>()V

    .line 7
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ShareDataBean;->setType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/ShareDataBean;->setUserId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, p3}, Lcom/join/mgps/dto/ShareDataBean;->setRes(Ljava/util/HashMap;)V

    .line 10
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getDb()Lcn/sharesdk/framework/PlatformDb;

    move-result-object p1

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserIcon()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ShareDataBean;->setUserIcon(Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "   "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x4

    .line 13
    iput p2, p1, Landroid/os/Message;->what:I

    .line 14
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object p2, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->z:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->x:Z

    .line 2
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 3
    invoke-static {}, Lcom/join/mgps/listener/a;->b()Lcom/join/mgps/listener/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/listener/a;->d(Lcom/join/mgps/listener/a$a;)V

    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showLodingDismis()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->removeAccount(Z)V

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->C:Z

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WechatClientNotExistException"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WechatTimelineNotSupportedException"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WechatFavoriteNotSupportedException"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "\u6388\u6743\u5931\u8d25"

    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "\u6ca1\u6709\u5b89\u88c5\u5fae\u4fe1\u5ba2\u7aef\uff0c\u8bf7\u5148\u5b89\u88c5\u5fae\u4fe1\u5ba2\u6237\u7aef\u3002"

    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MYAccountDetialActivity;->showMessage(Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x8

    if-ne p2, p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->z:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->M0()V

    return-void
.end method

.method public r0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountBean;->getGender()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->q:Lcom/join/mgps/dto/AccountBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/AccountBean;->setGender(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->g:Landroid/widget/TextView;

    const-string v0, "\u7537"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->g:Landroid/widget/TextView;

    const-string v0, "\u5973"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/MYAccountDetialActivity;->d1()V

    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->s:Lcom/join/mgps/dialog/x0;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MYAccountDetialActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void
.end method
