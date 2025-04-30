.class public Lcn/sharesdk/tencent/qzone/QZone;
.super Lcn/sharesdk/framework/Platform;
.source "QZone.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "QZone"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/Platform;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method private a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    new-instance v0, Lcn/sharesdk/framework/utils/h;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/h;-><init>()V

    const-string v1, "com.qzone"

    const-string v2, "com.qzonex.module.operation.ui.QZonePublishMoodActivity"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/framework/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1, p0}, Lcn/sharesdk/framework/utils/h;->a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/Platform;)V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ShareParams"

    .line 7
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    invoke-interface {p1, p0, v1, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lcn/sharesdk/tencent/qzone/QZone;ILjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/framework/Platform;->afterRegister(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method private b(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->isShareTencentWeibo()Z

    move-result v2

    const/16 v3, 0x9

    .line 5
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setImagePath(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->getPlatformActionListener()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v0

    .line 11
    new-instance v1, Lcn/sharesdk/tencent/qzone/QZone$2;

    invoke-direct {v1, p0, v0, p1}, Lcn/sharesdk/tencent/qzone/QZone$2;-><init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform$ShareParams;)V

    .line 12
    invoke-virtual {p0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 13
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->authorize()V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 16
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_2

    .line 17
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "share params\' value of text is empty!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p0, v0, v4}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    move-result-object v4

    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {v4, v1, v0}, Lcn/sharesdk/tencent/qzone/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {v4, v1, v0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_5

    .line 23
    iget-object v1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v1, :cond_5

    .line 24
    new-instance v2, Ljava/lang/Throwable;

    const-string v4, "response is empty"

    invoke-direct {v2, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0, v3, v2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    const-string v1, "ShareParams"

    .line 25
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_6

    .line 27
    invoke-interface {p1, p0, v3, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_6

    .line 29
    invoke-interface {v0, p0, v3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic c(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method private c(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x9

    .line 2
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcn/sharesdk/tencent/qzone/QZone;->isClientValid()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v11, v4

    goto :goto_0

    :cond_0
    move-object v11, v3

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getSite()Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getFilePath()Ljava/lang/String;

    move-result-object v13

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getShareType()I

    move-result v7

    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 13
    invoke-virtual {v1, v4, v6}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v0, v4}, Lcn/sharesdk/framework/InnerShareParams;->setText(Ljava/lang/String;)V

    :cond_1
    move-object v10, v4

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    invoke-virtual {v1, v3, v6}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Lcn/sharesdk/framework/InnerShareParams;->setTitleUrl(Ljava/lang/String;)V

    :cond_2
    move-object v9, v3

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getQQMiniProgramAppid()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getQQMiniProgramPath()Ljava/lang/String;

    move-result-object v15

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getQQMiniProgramType()Ljava/lang/String;

    move-result-object v16

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v17

    .line 22
    invoke-static/range {p0 .. p0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    move-result-object v6

    .line 23
    new-instance v3, Lcn/sharesdk/tencent/qzone/QZone$3;

    invoke-direct {v3, v1, v0}, Lcn/sharesdk/tencent/qzone/QZone$3;-><init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/framework/Platform$ShareParams;)V

    move-object/from16 v18, v3

    invoke-virtual/range {v6 .. v18}, Lcn/sharesdk/tencent/qzone/utils/b;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object v0, v1, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_4

    .line 25
    new-instance v3, Lcn/sharesdk/tencent/qzone/utils/QQClientNotExistException;

    invoke-direct {v3}, Lcn/sharesdk/tencent/qzone/utils/QQClientNotExistException;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 26
    iget-object v3, v1, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v3, :cond_5

    .line 27
    invoke-interface {v3, v1, v2, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic d(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic e(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic f(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic g(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic h(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic i(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformDb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    return-object p0
.end method

.method static synthetic j(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic k(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic l(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic m(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic n(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic o(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic p(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method

.method static synthetic q(Lcn/sharesdk/tencent/qzone/QZone;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    return-object p0
.end method


# virtual methods
.method protected checkAuthorize(ILjava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/b;->b()Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->b:Z

    if-eqz v1, :cond_0

    if-ne p1, v2, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->isAuthValid()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/framework/Platform;->innerAuthorize(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->b(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->c(Ljava/lang/String;)V

    return v3
.end method

.method protected doAuthorize([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->a([Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcn/sharesdk/tencent/qzone/QZone$1;

    invoke-direct {p1, p0, v0}, Lcn/sharesdk/tencent/qzone/QZone$1;-><init>(Lcn/sharesdk/tencent/qzone/QZone;Lcn/sharesdk/tencent/qzone/utils/b;)V

    .line 5
    invoke-virtual {p0}, Lcn/sharesdk/framework/Platform;->isSSODisable()Z

    move-result v1

    .line 6
    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/authorize/AuthorizeListener;Z)V

    return-void
.end method

.method protected doCustomerProtocol(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2, p4, p5}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "ret"

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 5
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_1

    .line 6
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, p3, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    iget-object p2, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_3

    .line 9
    new-instance p2, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p2}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p2, p1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, p3, p4}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_3
    return-void

    .line 11
    :cond_4
    iget-object p2, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p2, :cond_5

    .line 12
    invoke-interface {p2, p0, p3, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_5
    return-void

    .line 13
    :cond_6
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_7

    .line 14
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, p3, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method protected doShare(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QZone start Share with Appid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bypassApproval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/sharesdk/tencent/qzone/QZone;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QZone ShareParams:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->b:Z

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->isShareTencentWeibo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->b(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, p1}, Lcn/sharesdk/tencent/qzone/QZone;->c(Lcn/sharesdk/framework/Platform$ShareParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected filterFriendshipInfo(ILjava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected filterShareContent(Lcn/sharesdk/framework/Platform$ShareParams;Ljava/util/HashMap;)Lcn/sharesdk/framework/a/b/f$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform$ShareParams;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/sharesdk/framework/a/b/f$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/a/b/f$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/a/b/f$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/framework/a/b/f$a;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object p2, v0, Lcn/sharesdk/framework/a/b/f$a;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, "large_url"

    .line 6
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    iget-object v1, v0, Lcn/sharesdk/framework/a/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "small_url"

    .line 8
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v1, v0, Lcn/sharesdk/framework/a/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 10
    iget-object p2, v0, Lcn/sharesdk/framework/a/b/f$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 12
    iget-object v1, v0, Lcn/sharesdk/framework/a/b/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getTitleUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "titleUrl"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Lcn/sharesdk/framework/InnerShareParams;->getSite()Ljava/lang/String;

    move-result-object p1

    const-string v1, "site"

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iput-object p2, v0, Lcn/sharesdk/framework/a/b/f$a;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method protected follow(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 2
    invoke-interface {p1, p0, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected getBilaterals(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFollowers(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFollowings(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected getFriendList(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    .line 2
    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformId()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasShareCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected initDevInfo(Ljava/lang/String;)V
    .locals 2

    const-string p1, "AppId"

    .line 1
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    const-string v0, "BypassApproval"

    .line 2
    invoke-virtual {p0, v0}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->b:Z

    .line 3
    iget-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "QQ"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    sget-object v1, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/Platform;->copyDevinfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcn/sharesdk/framework/Platform;->getDevinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Try to use the dev info of QQ, this will cause Id and SortId field are always 0."

    invoke-virtual {p1, v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method public isClientValid()Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/tencent/qzone/utils/b;->d()Z

    move-result v0

    return v0
.end method

.method protected setNetworkDevinfo()V
    .locals 4

    const-string v0, "app_id"

    const-string v1, "AppId"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    const/16 v2, 0x18

    .line 3
    invoke-virtual {p0, v2, v0, v1}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x6

    .line 5
    invoke-virtual {p0, v2, v3}, Lcn/sharesdk/framework/Platform;->copyNetworkDevinfo(II)V

    .line 6
    invoke-virtual {p0, v0, v1}, Lcn/sharesdk/framework/Platform;->getNetworkDevinfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/tencent/qzone/QZone;->a:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Try to use the dev info of QQ, this will cause Id and SortId field are always 0."

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method protected timeline(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x7

    .line 2
    invoke-interface {p1, p0, p2}, Lcn/sharesdk/framework/PlatformActionListener;->onCancel(Lcn/sharesdk/framework/Platform;I)V

    :cond_0
    return-void
.end method

.method protected userInfor(Ljava/lang/String;)V
    .locals 14

    const-string v0, "1"

    const-string v1, "is_yellow_vip"

    const-string v2, "figureurl"

    const-string v3, "figureurl_1"

    const-string v4, "figureurl_2"

    const-string v5, "figureurl_qq_1"

    const-string v6, "figureurl_qq_2"

    const-string v7, "nickname"

    const-string v8, "ret"

    const-string v9, "userTags"

    const-string v10, "gender"

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-gez v11, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v11, 0x8

    if-eqz p1, :cond_15

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gez v12, :cond_2

    goto/16 :goto_5

    .line 4
    :cond_2
    invoke-static {p0}, Lcn/sharesdk/tencent/qzone/utils/b;->a(Lcn/sharesdk/framework/Platform;)Lcn/sharesdk/tencent/qzone/utils/b;

    move-result-object v12

    .line 5
    :try_start_0
    invoke-virtual {v12, p1}, Lcn/sharesdk/tencent/qzone/utils/b;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 6
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v13

    if-gtz v13, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 8
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_4

    .line 9
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_4
    return-void

    .line 10
    :cond_5
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_7

    .line 11
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_6

    .line 12
    new-instance p1, Lcom/mob/tools/utils/Hashon;

    invoke-direct {p1}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {p1, v12}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p0, v11, v1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_6
    return-void

    .line 14
    :cond_7
    iget-object v8, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v8}, Lcn/sharesdk/framework/PlatformDb;->getUserId()Ljava/lang/String;

    move-result-object v8

    if-ne p1, v8, :cond_10

    .line 15
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v12, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "iconQQ"

    if-eqz p1, :cond_8

    .line 17
    :try_start_1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_8
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 19
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_9
    :goto_0
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "icon"

    if-eqz p1, :cond_a

    .line 21
    :try_start_2
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_a
    invoke-virtual {v12, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 23
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_b
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 25
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_c
    :goto_1
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v2, "secretType"

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 28
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v1, "snsUserLevel"

    const-string v2, "level"

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_d
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssdk_gender_male"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 31
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ssdk_gender_female"

    invoke-static {v2, v3}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 32
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 33
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "0"

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_e
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 35
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_f
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    const-string v0, "2"

    invoke-virtual {p1, v10, v0}, Lcn/sharesdk/framework/PlatformDb;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_10
    :goto_2
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_14

    .line 38
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v9}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 39
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->db:Lcn/sharesdk/framework/PlatformDb;

    invoke-virtual {p1, v9}, Lcn/sharesdk/framework/PlatformDb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, v9, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_11
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    invoke-interface {p1, p0, v11, v12}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto :goto_4

    .line 41
    :cond_12
    :goto_3
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_13

    .line 42
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_13
    return-void

    :catchall_0
    move-exception p1

    .line 43
    iget-object v0, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_14

    .line 44
    invoke-interface {v0, p0, v11, p1}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_14
    :goto_4
    return-void

    .line 45
    :cond_15
    :goto_5
    iget-object p1, p0, Lcn/sharesdk/framework/Platform;->listener:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz p1, :cond_16

    .line 46
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "qq account is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v11, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_16
    return-void
.end method
