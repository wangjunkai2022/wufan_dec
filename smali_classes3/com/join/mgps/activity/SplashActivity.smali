.class public Lcom/join/mgps/activity/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c059b
.end annotation


# static fields
.field public static final B:Ljava/lang/String; = "SplashActivity"

.field private static final C:Ljava/lang/String; = "\u70b9\u51fb\u8df3\u8fc7 %d"


# instance fields
.field A:Lcom/join/mgps/dto/ShowViewDataBean;

.field a:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Lcom/join/android/app/component/video/EmptyControlVideoView;

.field c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/ImageView;

.field f:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/view/View;

.field j:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "net_excption"
    .end annotation
.end field

.field k:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/res/StringRes;
        resName = "connect_server_excption"
    .end annotation
.end field

.field l:Lcom/join/mgps/dto/ThAdSwitchDataBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field m:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090ea8
    .end annotation
.end field

.field n:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f090e80
    .end annotation
.end field

.field private o:I

.field private p:J

.field public q:Z

.field private r:Z

.field private s:Lcom/join/mgps/adapter/r2;

.field private t:Lcom/join/mgps/dto/FirstIntentData;

.field u:I

.field private v:Landroid/os/Handler;

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Lcom/bytedance/sdk/openadsdk/TTAdNative;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x7d0

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->o:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/join/mgps/activity/SplashActivity;->p:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->q:Z

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->r:Z

    const/4 v1, 0x4

    .line 6
    iput v1, p0, Lcom/join/mgps/activity/SplashActivity;->u:I

    .line 7
    new-instance v1, Lcom/join/mgps/activity/SplashActivity$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SplashActivity$a;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    iput-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    .line 8
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->w:Z

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->x:Z

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/SplashActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/SplashActivity;->w:Z

    return p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/SplashActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/SplashActivity;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/activity/SplashActivity;)Lcom/join/mgps/dto/FirstIntentData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SplashActivity;->t:Lcom/join/mgps/dto/FirstIntentData;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/activity/SplashActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->o()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/join/mgps/activity/SplashActivity;Lcom/papa/sim/statistic/e;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->u(Lcom/papa/sim/statistic/e;Z)V

    return-void
.end method

.method static synthetic g(Lcom/join/mgps/activity/SplashActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->m()V

    return-void
.end method

.method private static i(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const-string v1, "\u609f\u996d\u6e38\u620f\u5385_android"

    .line 4
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->i(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->q:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x2711

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->q:Z

    :goto_0
    return-void
.end method

.method private n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/join/mgps/activity/SplashActivity;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object p2

    .line 2
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->requestPermissionIfNecessary(Landroid/content/Context;)V

    .line 3
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->z:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    return-void
.end method

.method private o()Z
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "1"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "splash isShowSplash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v3

    invoke-virtual {v3}, Lg1/b;->d()Ljava/util/List;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 5
    invoke-virtual {v5}, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->getShowVieDatabean()Lcom/join/mgps/dto/ShowViewDataBean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    .line 7
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 8
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 9
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x2

    const-wide/16 v13, 0x3e8

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v11

    if-eq v11, v12, :cond_1

    .line 11
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long v10, v10, v13

    .line 12
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    mul-long v15, v15, v13

    cmp-long v12, v5, v10

    if-lez v12, :cond_2

    cmp-long v10, v5, v15

    if-gez v10, :cond_2

    move-object v3, v9

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 14
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    mul-long v10, v10, v13

    .line 15
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    mul-long v15, v15, v13

    cmp-long v13, v5, v10

    if-lez v13, :cond_2

    cmp-long v10, v5, v15

    if-gez v10, :cond_2

    .line 16
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 17
    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v10

    if-eq v10, v12, :cond_2

    move-object v7, v9

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/SplashActivity;->w(Lcom/join/mgps/dto/ShowViewDataBean;)Z

    move-result v1

    return v1

    :cond_4
    if-eqz v7, :cond_5

    .line 19
    invoke-virtual {v0, v7}, Lcom/join/mgps/activity/SplashActivity;->w(Lcom/join/mgps/dto/ShowViewDataBean;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_5
    return v2
.end method

.method private p(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->s()V

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    const/16 v0, 0x438

    const/16 v1, 0x780

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->z:Lcom/bytedance/sdk/openadsdk/TTAdNative;

    new-instance v1, Lcom/join/mgps/activity/SplashActivity$g;

    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SplashActivity$g;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    const/16 v2, 0xbb8

    invoke-interface {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative;->loadSplashAd(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;I)V

    return-void
.end method

.method private r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->q:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->m()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->q:Z

    :goto_0
    return-void
.end method

.method private t(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p3}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v2}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p3}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object v1

    .line 9
    :goto_0
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f080079

    .line 10
    sget-object v3, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {v0, v2, v1, v3}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 11
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    invoke-virtual {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setThumbImageView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    const/4 v1, 0x1

    const-string v2, " "

    invoke-virtual {v0, p1, v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/lang/String;)Z

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    new-instance v0, Lcom/join/mgps/activity/SplashActivity$d;

    invoke-direct {v0, p0, p3, p2}, Lcom/join/mgps/activity/SplashActivity$d;-><init>(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/SplashIntentBean;Lcom/join/mgps/dto/ShowViewDataBean;)V

    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lc2/h;)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    invoke-virtual {p1, v1}, Lcom/join/android/app/component/video/EmptyControlVideoView;->setMute(Z)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    new-instance p2, Lcom/join/mgps/activity/SplashActivity$e;

    invoke-direct {p2, p0}, Lcom/join/mgps/activity/SplashActivity$e;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private u(Lcom/papa/sim/statistic/e;Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/e;->j(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/papa/sim/statistic/p;->v(Lcom/papa/sim/statistic/e;Z)V

    return-void
.end method


# virtual methods
.method A(Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 2

    const-string v0, "splash"

    .line 1
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setFrom(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getJump_type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    const/16 v1, 0x3391

    invoke-direct {v0, v1}, Lcom/join/mgps/dto/ExtBean;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 4
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    const/16 p1, 0x2711

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startMainActivity  time ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method B()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNow1  time ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    const/16 v0, 0x2711

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNow2  time ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    return-void
.end method

.method C()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x64L
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splashactivity  start finish time ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method D()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/WifiUtils;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/WifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/WifiUtils;->isWifiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/join/mgps/dto/ThAdSwitchDataBean;->getFx_ad_switch()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ThAdSwitchDataBean;->getType()I

    move-result v0

    iput v0, p0, Lcom/join/mgps/activity/SplashActivity;->y:I

    const/16 v3, 0x8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ThAdSwitchDataBean;->getFx_ad_id()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SplashActivity;->p(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ThAdSwitchDataBean;->getFx_sdk_key()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcom/join/mgps/activity/SplashActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->l:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ThAdSwitchDataBean;->getFx_ad_id()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SplashActivity;->q(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10
    :cond_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c059a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09127f

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v2, 0x7f09030a

    .line 12
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->g:Landroid/widget/TextView;

    const v2, 0x7f09030c

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    const v2, 0x7f09030b

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->i:Landroid/view/View;

    const v2, 0x7f09016b

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->d:Landroid/widget/RelativeLayout;

    const v2, 0x7f0906b6

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->e:Landroid/widget/ImageView;

    const v2, 0x7f09126e    # 1.8219993E38f

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/join/android/app/component/video/EmptyControlVideoView;

    iput-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->i:Landroid/view/View;

    new-instance v2, Lcom/join/mgps/activity/SplashActivity$b;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SplashActivity$b;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->D()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 24
    :goto_0
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "splash afterview2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->l()V

    .line 27
    :goto_1
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->C2(ILjava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 29
    sput-boolean v1, Lcom/join/mgps/service/CommonService;->I:Z

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splash afterview3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->w:Z

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->z()V

    return-void
.end method

.method l()V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "1"

    .line 1
    :try_start_0
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v2

    invoke-virtual {v2}, Lg1/b;->d()Ljava/util/List;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    .line 4
    invoke-virtual {v4}, Lcom/join/mgps/db/tables/ShowViewDataBeanTable;->getShowVieDatabean()Lcom/join/mgps/dto/ShowViewDataBean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 7
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v7, v11, :cond_9

    .line 8
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/join/mgps/dto/ShowViewDataBean;

    .line 9
    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-wide/16 v15, 0x3e8

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v14

    if-eq v14, v12, :cond_1

    .line 11
    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    mul-long v13, v13, v15

    .line 12
    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    mul-long v17, v17, v15

    cmp-long v15, v4, v13

    if-lez v15, :cond_8

    cmp-long v13, v4, v17

    if-gez v13, :cond_8

    .line 13
    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v13

    if-eq v13, v12, :cond_8

    .line 14
    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/join/mgps/dto/SplashIntentBean;

    .line 15
    iput-object v11, v1, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    goto/16 :goto_5

    .line 16
    :cond_1
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v13

    if-eq v13, v12, :cond_8

    .line 17
    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getBegin_times()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    mul-long v13, v13, v15

    .line 18
    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getEnd_times()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    mul-long v17, v17, v15

    cmp-long v15, v4, v13

    if-lez v15, :cond_8

    cmp-long v13, v4, v17

    if-gez v13, :cond_8

    .line 19
    invoke-virtual {v11}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v13

    .line 20
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 21
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/join/mgps/dto/SplashIntentBean;

    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/SplashIntentBean;->getTag_show()I

    move-result v6

    if-eq v6, v12, :cond_4

    .line 24
    iget-object v6, v1, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v6}, Lcom/join/mgps/pref/PrefDef_;->lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v6

    invoke-virtual {v6}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 25
    :cond_2
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v11

    goto :goto_4

    :cond_3
    :goto_3
    move-object v15, v2

    :cond_4
    :goto_4
    const/4 v2, 0x0

    const/4 v12, 0x2

    goto :goto_2

    .line 26
    :cond_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    if-eqz v15, :cond_6

    .line 27
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v9, v11

    .line 28
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 29
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 30
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/join/mgps/dto/SplashIntentBean;

    add-int/lit8 v2, v2, 0x1

    .line 31
    invoke-virtual {v10, v2}, Lcom/join/mgps/dto/SplashIntentBean;->setShowPosition(I)V

    .line 32
    invoke-virtual {v10}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 33
    iget-object v2, v1, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v10}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_5

    .line 34
    :cond_7
    iget-object v2, v1, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v2

    invoke-virtual {v10}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_9
    if-eqz v8, :cond_c

    .line 35
    invoke-virtual {v8}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 36
    iget-object v0, v1, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v1, v0, v8}, Lcom/join/mgps/activity/SplashActivity;->x(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    goto :goto_6

    .line 37
    :cond_a
    iget-object v0, v1, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v1, v0, v8}, Lcom/join/mgps/activity/SplashActivity;->v(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 38
    :goto_6
    iget-object v0, v1, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v0

    if-nez v0, :cond_b

    .line 39
    iget-object v0, v1, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ShowViewDataBean;->setTag_show(I)V

    .line 40
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/activity/SplashActivity;->o()Z

    move-result v0

    .line 42
    iget-object v2, v1, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_8

    .line 43
    :cond_b
    iget-object v0, v1, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ShowViewDataBean;->getTag_show()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 44
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v0

    iget-object v2, v1, Lcom/join/mgps/activity/SplashActivity;->A:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_c
    if-eqz v9, :cond_e

    .line 45
    invoke-virtual {v10}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 46
    invoke-virtual {v1, v9, v10}, Lcom/join/mgps/activity/SplashActivity;->x(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    goto :goto_7

    .line 47
    :cond_d
    invoke-virtual {v1, v9, v10}, Lcom/join/mgps/activity/SplashActivity;->v(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 48
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v10, v2, v3}, Lcom/join/mgps/dto/SplashIntentBean;->setShow_time(J)V

    .line 49
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object v0

    invoke-virtual {v9}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 50
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_8
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lc2/h;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->firstNewSplashV2()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x2711

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->x:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->x:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->q:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->x:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->q:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/activity/SplashActivity;->r()V

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/SplashActivity;->q:Z

    return-void
.end method

.method public s()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/join/mgps/activity/SplashActivity;->p:J

    sub-long/2addr v0, v2

    .line 2
    iget v2, p0, Lcom/join/mgps/activity/SplashActivity;->o:I

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-long v2, v2

    sub-long v0, v2, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    new-instance v3, Lcom/join/mgps/activity/SplashActivity$f;

    invoke-direct {v3, p0}, Lcom/join/mgps/activity/SplashActivity$f;-><init>(Lcom/join/mgps/activity/SplashActivity;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method v(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    .locals 9

    const-string v0, ""

    const-string v1, "_"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getStrategy_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->FullScreenAds:Lcom/papa/sim/statistic/Event;

    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "splash setimageback"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    .line 10
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object v1

    .line 12
    new-instance v3, Lcom/papa/sim/statistic/e;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    const-string v5, "spreadButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/papa/sim/statistic/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v2}, Lcom/join/mgps/activity/SplashActivity;->u(Lcom/papa/sim/statistic/e;Z)V

    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v2, Lcom/join/mgps/activity/SplashActivity$c;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/join/mgps/activity/SplashActivity$c;-><init>(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;Lcom/join/mgps/Util/IntentDateBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    const-wide/16 v1, 0xfa0

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote_local()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "http"

    const v2, 0x7f080079

    if-eqz v0, :cond_4

    .line 18
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p1, v2, p2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 23
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p2, v2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p2, v2, p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 27
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget-object v0, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p2, v2, p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_0

    .line 28
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p2, v2, p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    .line 30
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "splash loadimage"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->z()V

    :goto_1
    return-void
.end method

.method w(Lcom/join/mgps/dto/ShowViewDataBean;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "splash setiamgeBackx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/SplashIntentBean;->getPic_remote()Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getJump_info()Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/SplashIntentBean;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/SplashIntentBean;->getTag_show()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    return v2

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method x(Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
    .locals 8

    const-string v0, ""

    const-string v1, "_"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dto/ShowViewDataBean;->getStrategy_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->FullScreenAds:Lcom/papa/sim/statistic/Event;

    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    const/4 v1, 0x4

    .line 3
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    new-instance v1, Lcom/papa/sim/statistic/e;

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const-string v4, "spreadButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/papa/sim/statistic/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3}, Lcom/join/mgps/activity/SplashActivity;->u(Lcom/papa/sim/statistic/e;Z)V

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url_local()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "https"

    const-string v3, "http"

    if-eqz v1, :cond_3

    .line 12
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    if-eqz v0, :cond_6

    .line 15
    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->t(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->t(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v0}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->t(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/SplashIntentBean;->getVedio_url()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->t(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    goto :goto_0

    .line 23
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/join/mgps/activity/SplashActivity;->t(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V

    .line 25
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "splash loadimage"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->z()V

    :goto_1
    return-void
.end method

.method y()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setnormal time ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstRun()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->t:Lcom/join/mgps/dto/FirstIntentData;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isCustomApk()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->t:Lcom/join/mgps/dto/FirstIntentData;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FirstIntentData;->isAPKSplashImage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstRun()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const v1, 0x7f080bcc

    :try_start_1
    const-string v2, ""

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 8
    :goto_0
    array-length v5, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v6, "splash.jpg"

    const-string v7, "splash.png"

    const/4 v8, 0x1

    if-ge v3, v5, :cond_2

    .line 9
    :try_start_2
    aget-object v5, v0, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    .line 10
    :cond_0
    aget-object v5, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 11
    :try_start_3
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 12
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 13
    iget-object v3, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v2}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    .line 15
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 16
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3, v2}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_3

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 20
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    .line 21
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->v:Landroid/os/Handler;

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    const-wide/16 v2, 0xfa0

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isFirstRun()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->B()V

    goto :goto_4

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/activity/SplashActivity;->B()V

    :cond_7
    :goto_4
    return-void
.end method

.method z()V
    .locals 1

    const/16 v0, 0x2711

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
