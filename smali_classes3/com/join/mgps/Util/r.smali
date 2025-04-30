.class public Lcom/join/mgps/Util/r;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# static fields
.field private static a:Ljava/lang/String; = "CommonUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const-string v1, "\u5206\u4eab"

    .line 2
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 5
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method private static B(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 4
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method private static C(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 4
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/join/mgps/Util/r;->e(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x2000

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 4
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    new-instance v2, Ljava/math/BigDecimal;

    int-to-double v3, v0

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v0, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110445

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x7f110077

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;Lcn/sharesdk/framework/Platform;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    const-string v1, "weixin"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x2

    const-string v1, "quan"

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x3

    const-string v1, "qq"

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p1, 0x4

    const-string v1, "qzone"

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    const-string v1, "weibo"

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    const-string v1, ""

    .line 7
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p1, p3}, Lcom/papa/sim/statistic/p;->P1(Ljava/lang/String;III)V

    .line 8
    new-instance p1, Lcom/join/mgps/dto/SharePostRequest;

    invoke-direct {p1}, Lcom/join/mgps/dto/SharePostRequest;-><init>()V

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/SharePostRequest;->setUid(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p3}, Lcom/join/mgps/dto/SharePostRequest;->setStatus(I)V

    .line 11
    invoke-virtual {p1, p4}, Lcom/join/mgps/dto/SharePostRequest;->setShare_url(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1, p5}, Lcom/join/mgps/dto/SharePostRequest;->setRes_id(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/SharePostRequest;->setRes_type(I)V

    .line 14
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/SharePostRequest;->setShare_channel(Ljava/lang/String;)V

    .line 15
    invoke-static {p0}, Lcom/join/mgps/service/CommonService_;->d2(Landroid/content/Context;)Lcom/join/mgps/service/CommonService_$u1;

    move-result-object p0

    const-string p2, "sharePostData"

    invoke-virtual {p0, p2, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Ljava/io/Serializable;)Lorg/androidannotations/api/builder/e;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/service/CommonService_$u1;

    invoke-virtual {p0}, Lorg/androidannotations/api/builder/g;->a()Landroid/content/ComponentName;

    return-void
.end method

.method public static f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lcom/join/mgps/Util/r$d;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/Util/r$d;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lcom/join/mgps/Util/r$e;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/Util/r$e;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static h(ILandroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const p0, 0x7f08075c

    .line 1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    const p0, 0x7f08075d

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f08075b

    .line 3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    const-string v2, "\u592a\u597d\u5566\uff0c\u7ec8\u4e8e\u627e\u5230\u8fd9\u4e2a\u795e\u5668\u4e86"

    .line 4
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    const-string v2, "\u6d77\u91cf\u514d\u8d39\u7ecf\u5178\u6e38\u620f\uff0c\u6df1\u5ea6\u624b\u673a\u5b9a\u5236\u4f18\u5316\uff0c\u8d85\u723d\u8054\u673a\u4f53\u9a8c\uff01"

    .line 5
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/join/mgps/rpc/g;->L:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/upload/images/wf_ico.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://tuis.5fun.com/?aid=Nif7jk&t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    const v2, 0x7f110034

    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 10
    new-instance v2, Lcom/join/mgps/Util/r$a;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/Util/r$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "0"

    invoke-static {p0, v1, v3, v2, v4}, Lcom/join/mgps/Util/r;->g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 13
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Lcom/papa/sim/statistic/p;->W1(Ljava/lang/String;I)V

    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/r;->o(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/r;->l(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/r;->w(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/r;->v(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 4
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 5
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 4
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method private static n(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 5
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 5
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method public static p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getFrom()I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-ne p1, v5, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    if-ne p1, v4, :cond_3

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    if-ne p1, v6, :cond_5

    const/4 v0, 0x5

    .line 3
    :cond_5
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcom/papa/sim/statistic/p;->W1(Ljava/lang/String;I)V

    if-nez p1, :cond_6

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Id"

    const-string v4, "4"

    .line 5
    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SortId"

    const-string v4, "1"

    .line 6
    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppId"

    const-string v4, "wxf04635c4c318fe2d"

    .line 7
    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppSecret"

    const-string v4, "8e21d75298829047b830ac5034b7073c"

    .line 8
    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BypassApproval"

    const-string v4, "false"

    .line 9
    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Enable"

    const-string v4, "true"

    .line 10
    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 12
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 13
    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    .line 18
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v3, v4}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 20
    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 21
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getArticleId()Ljava/lang/String;

    move-result-object v6

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->O1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz p1, :cond_b

    if-eq p1, v5, :cond_a

    const-string v5, "\u609f\u996d\u6e38\u620f\u5385"

    if-eq p1, v4, :cond_9

    if-eq p1, v1, :cond_8

    if-eq p1, v6, :cond_7

    goto/16 :goto_2

    .line 22
    :cond_7
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWeiboShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 25
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWeiboShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v3, v4}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 27
    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto/16 :goto_2

    .line 28
    :cond_8
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getqZoneShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitleUrl(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, v5}, Lcn/sharesdk/framework/InnerShareParams;->setSite(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 35
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getqZoneShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v3, v4}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 36
    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto/16 :goto_2

    .line 37
    :cond_9
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 38
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getQqUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitleUrl(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, v5}, Lcn/sharesdk/framework/InnerShareParams;->setSite(Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 44
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getQqUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v3, v4}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 45
    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_2

    .line 46
    :cond_a
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 47
    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 48
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatFriendUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatFriendUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v3, v4}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 54
    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_2

    .line 55
    :cond_b
    new-instance p1, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {p1}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 56
    invoke-virtual {p1, v6}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 57
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/sharesdk/framework/InnerShareParams;->setUrl(Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v3, v4}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 63
    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 64
    :goto_2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/join/mgps/dto/ShareBean;->getArticleId()Ljava/lang/String;

    move-result-object v6

    move v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->O1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static q(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, v4, :cond_1

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    const/4 v5, 0x3

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v5, 0x4

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    const/4 v5, 0x5

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    :goto_0
    if-eqz p3, :cond_11

    if-eq p3, v4, :cond_b

    if-eq p3, v3, :cond_5

    goto/16 :goto_3

    .line 2
    :cond_5
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p3

    invoke-virtual {p3, v2, p4}, Lcom/papa/sim/statistic/p;->W1(Ljava/lang/String;I)V

    if-eqz p1, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    goto :goto_1

    .line 3
    :cond_6
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->A(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 4
    :cond_7
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->C(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 5
    :cond_8
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->k(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 6
    :cond_9
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->x(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 7
    :cond_a
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->u(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    const-string p0, "0"

    const-string v6, "0"

    move v3, p4

    move v4, v5

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->O1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :cond_b
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p3

    invoke-virtual {p3, v2, p4}, Lcom/papa/sim/statistic/p;->W1(Ljava/lang/String;I)V

    if-eqz p1, :cond_10

    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_e

    if-eq p1, v1, :cond_d

    if-eq p1, v0, :cond_c

    goto :goto_2

    .line 10
    :cond_c
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->B(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 11
    :cond_d
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->n(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 12
    :cond_e
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->m(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 13
    :cond_f
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->y(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 14
    :cond_10
    invoke-static {p0, p2, p4}, Lcom/join/mgps/Util/r;->z(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    :goto_2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    const-string p0, "0"

    const-string v6, "0"

    move v3, p4

    move v4, v5

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->O1(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_11
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p3

    const-class v0, Lcom/join/mgps/dto/ShareBean;

    invoke-virtual {p3, p2, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/join/mgps/dto/ShareBean;

    .line 17
    invoke-virtual {p2, p4}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 18
    invoke-static {p0, p1, p2}, Lcom/join/mgps/Util/r;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getFrom()I

    move-result v1

    .line 3
    new-instance v2, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "?"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&t="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 14
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?t="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    :goto_0
    invoke-virtual {v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    const v4, 0x7f110034

    .line 17
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 18
    new-instance v4, Lcom/join/mgps/Util/r$b;

    invoke-direct {v4, p1, p0, v0, v1}, Lcom/join/mgps/Util/r$b;-><init>(Lcom/join/mgps/dto/ShareBean;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, v1, v3, p1}, Lcom/join/mgps/Util/r;->g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 21
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->W1(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    const-string p1, "\u5206\u4eab\u5931\u8d25\u3002"

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/dto/ShareBeanMain;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ShareBeanMain;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBeanMain;->getShare()Lcom/join/mgps/dto/ShareBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ShareBean;->setFrom(I)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->toString()Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {p0, p1}, Lcom/join/mgps/Util/r;->r(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    const-string p1, "\u5206\u4eab\u5931\u8d25\u3002"

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static t(Landroid/content/Context;Lcom/join/mgps/dto/ShareBean;Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 11

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getFrom()I

    move-result v7

    .line 3
    new-instance v8, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v8}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 4
    invoke-virtual {v8}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getWechatShareUrl()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "?"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&t="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?t="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :goto_0
    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    :cond_2
    move-object v9, v1

    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    const v1, 0x7f110034

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 18
    new-instance v10, Lcom/join/mgps/Util/r$c;

    move-object v1, v10

    move-object v2, p1

    move-object v3, p0

    move-object v4, v0

    move v5, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/Util/r$c;-><init>(Lcom/join/mgps/dto/ShareBean;Landroid/content/Context;Ljava/lang/String;ILcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    invoke-virtual {v8, v10}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShareBean;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v8, v7, v9, p1}, Lcom/join/mgps/Util/r;->g(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OnekeyShare;ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v8, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 21
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    invoke-virtual {p1, v0, v7}, Lcom/papa/sim/statistic/p;->W1(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    invoke-static {p0}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p0

    const-string p1, "\u5206\u4eab\u5931\u8d25\u3002"

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static u(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Id"

    const-string v2, "4"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SortId"

    const-string v2, "1"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppId"

    const-string v2, "wxf04635c4c318fe2d"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppSecret"

    const-string v2, "8e21d75298829047b830ac5034b7073c"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BypassApproval"

    const-string v2, "false"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Enable"

    const-string v2, "true"

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 9
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    const-string v2, "\u5206\u4eab"

    .line 11
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 14
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 15
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 5
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    .line 4
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 5
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 6
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method private static x(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    const-string v1, "\u5206\u4eab"

    .line 3
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setImageUrl(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 6
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method private static y(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    const-string v1, "\u5206\u4eab"

    .line 3
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 6
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method

.method private static z(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Id"

    const-string v2, "4"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SortId"

    const-string v2, "1"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppId"

    const-string v2, "wxf04635c4c318fe2d"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppSecret"

    const-string v2, "8e21d75298829047b830ac5034b7073c"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BypassApproval"

    const-string v2, "false"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Enable"

    const-string v2, "true"

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/sharesdk/framework/ShareSDK;->setPlatformDevInfo(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 9
    new-instance v0, Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-direct {v0}, Lcn/sharesdk/framework/Platform$ShareParams;-><init>()V

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/InnerShareParams;->setShareType(I)V

    const-string v2, "\u5206\u4eab"

    .line 11
    invoke-virtual {v0, v2}, Lcn/sharesdk/framework/InnerShareParams;->setTitle(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v1

    .line 14
    invoke-static {p0, v1, p2, p1}, Lcom/join/mgps/Util/r;->f(Landroid/content/Context;Lcn/sharesdk/framework/Platform;ILjava/lang/String;)V

    .line 15
    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    return-void
.end method
