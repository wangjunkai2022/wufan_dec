.class public Lcom/ss/android/socialbase/appdownloader/d;
.super Ljava/lang/Object;
.source "AppDownloader.java"


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static volatile b:Lcom/ss/android/socialbase/appdownloader/d;

.field private static f:Z

.field private static g:Z


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

.field private h:Z

.field private i:Lcom/ss/android/socialbase/appdownloader/c/c;

.field private j:Lcom/ss/android/socialbase/appdownloader/c/d;

.field private k:Lcom/ss/android/socialbase/appdownloader/c/h;

.field private l:Lcom/ss/android/socialbase/appdownloader/c/g;

.field private m:Lcom/ss/android/socialbase/appdownloader/c/m;

.field private n:Lcom/ss/android/socialbase/appdownloader/c/f;

.field private o:Lcom/ss/android/socialbase/appdownloader/c/j;

.field private p:Lcom/ss/android/socialbase/downloader/depend/ad;

.field private q:Lcom/ss/android/socialbase/downloader/depend/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d;)Lcom/ss/android/socialbase/appdownloader/c/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/appdownloader/d;->k:Lcom/ss/android/socialbase/appdownloader/c/h;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/depend/z;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_0
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d$4;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/d$4;-><init>(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/appdownloader/c/e;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    if-eqz p1, :cond_1

    .line 147
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "User-Agent"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/c;

    if-eqz v3, :cond_0

    .line 131
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 133
    :cond_1
    new-instance v4, Lcom/ss/android/socialbase/downloader/model/c;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    .line 135
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/c;

    sget-object v2, Lcom/ss/android/socialbase/appdownloader/b/a;->a:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->download()I

    .line 125
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setAntiHijackErrorCode(I)V

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 127
    invoke-virtual {p1, p3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setSavePathRedirected(Z)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isSavePathRedirected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->f:Z

    if-nez v0, :cond_0

    const-string v0, "application/vnd.android.package-archive"

    .line 3
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/constants/e;->a(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Landroid/content/Context;)V

    .line 5
    new-instance p1, Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-direct {p1}, Lcom/ss/android/socialbase/appdownloader/d/b;-><init>()V

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/downloader/l;)V

    .line 6
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/d;->q()V

    .line 7
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/d;->r()V

    const/4 p1, 0x1

    .line 8
    sput-boolean p1, Lcom/ss/android/socialbase/appdownloader/d;->f:Z

    :cond_0
    return-void
.end method

.method public static j()Lcom/ss/android/socialbase/appdownloader/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/socialbase/appdownloader/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/d;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/d;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    .line 4
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.ss.intent.action.DOWNLOAD_COMPLETE"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 9
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 12
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    .line 13
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d$1;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d$1;-><init>(Lcom/ss/android/socialbase/appdownloader/d;)V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/r;->a(Lcom/ss/android/socialbase/downloader/impls/r$b;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/appdownloader/f;)I
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    if-eqz v8, :cond_18

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v11, 0x1

    .line 18
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v9

    .line 21
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->s()I

    move-result v5

    if-nez v5, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 22
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->L()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2, v6}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 26
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v12, 0xff

    if-le v4, v12, :cond_4

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, v2

    .line 29
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->l()Ljava/lang/String;

    move-result-object v4

    const-string v12, ".apk"

    .line 30
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->l()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v4, "application/vnd.android.package-archive"

    .line 31
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->c()Ljava/lang/String;

    move-result-object v12

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->c()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 33
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/c;->b()Ljava/lang/String;

    move-result-object v12

    :cond_7
    move-object v15, v12

    .line 34
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_17

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto/16 :goto_9

    .line 35
    :cond_8
    invoke-static {v1, v15}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ad()Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v12

    const-string v13, "resume_task_override_settings"

    invoke-virtual {v12, v13}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 37
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v12

    invoke-virtual {v12, v14}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v12, :cond_9

    .line 38
    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    invoke-virtual {v12}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getDownloadSettingString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :catchall_0
    :cond_9
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ad()Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/ss/android/socialbase/downloader/g/a;->a(ILorg/json/JSONObject;)V

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->K()Z

    move-result v12

    .line 41
    invoke-static {v14}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v13

    const-string v10, "modify_force"

    invoke-virtual {v13, v10, v11}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_a

    if-nez v12, :cond_a

    .line 42
    invoke-static {v15, v2}, Lcom/ss/android/socialbase/downloader/i/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadInfo(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v10

    if-nez v10, :cond_a

    const/4 v10, 0x1

    goto :goto_1

    :cond_a
    move v10, v12

    .line 43
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->j()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v12

    if-nez v12, :cond_c

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->e()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->f()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 45
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->n()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 46
    new-instance v12, Lcom/ss/android/socialbase/appdownloader/e/b;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->n()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/ss/android/socialbase/appdownloader/e/b;-><init>(Lcom/ss/android/socialbase/downloader/notification/a;)V

    :cond_c
    move/from16 v20, v14

    move-object/from16 v21, v15

    goto :goto_2

    .line 47
    :cond_d
    new-instance v19, Lcom/ss/android/socialbase/appdownloader/e/b;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->k()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v12, v19

    move/from16 v20, v14

    move-object/from16 v21, v15

    move-object v15, v3

    move-object/from16 v16, v21

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v18}, Lcom/ss/android/socialbase/appdownloader/e/b;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v19

    .line 48
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->N()Lcom/ss/android/socialbase/downloader/depend/n;

    move-result-object v13

    if-nez v13, :cond_e

    .line 49
    new-instance v13, Lcom/ss/android/socialbase/appdownloader/d$2;

    invoke-direct {v13, v7}, Lcom/ss/android/socialbase/appdownloader/d$2;-><init>(Lcom/ss/android/socialbase/appdownloader/d;)V

    .line 50
    :cond_e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->A()Ljava/util/List;

    move-result-object v14

    .line 51
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_f

    .line 52
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ss/android/socialbase/downloader/depend/m;

    .line 53
    invoke-virtual {v8, v15}, Lcom/ss/android/socialbase/appdownloader/f;->a(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/appdownloader/f;

    goto :goto_3

    .line 54
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->k()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 55
    :try_start_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 56
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 57
    :cond_10
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    :goto_4
    const-string v9, "auto_install_with_notification"

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->g()Z

    move-result v11

    invoke-virtual {v15, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v9, "auto_install_without_notification"

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->f()Z

    move-result v11

    invoke-virtual {v15, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :catchall_1
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->e()Z

    move-result v9

    if-nez v9, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->f()Z

    move-result v9

    if-eqz v9, :cond_11

    goto :goto_5

    :cond_11
    const/4 v9, 0x0

    goto :goto_6

    :cond_12
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_13

    .line 62
    invoke-static/range {v20 .. v20}, Lcom/ss/android/socialbase/downloader/g/a;->a(I)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v11

    const-string v15, "enable_notification_ui"

    invoke-virtual {v11, v15}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v11

    const/4 v15, 0x1

    if-lt v11, v15, :cond_13

    .line 63
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/c;->a()Lcom/ss/android/socialbase/appdownloader/e/c;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->aa()Ljava/lang/String;

    move-result-object v15

    move/from16 v8, v20

    invoke-virtual {v11, v8, v15}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(ILjava/lang/String;)V

    goto :goto_7

    :cond_13
    move/from16 v8, v20

    .line 64
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->with(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v11

    .line 65
    invoke-virtual {v11, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->url(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ab()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->backUpUrls(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->name(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->title(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    move-object/from16 v2, v21

    .line 69
    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->savePath(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->onlyWifi(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extraHeaders(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 72
    invoke-virtual {v0, v13}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->depend(Lcom/ss/android/socialbase/downloader/depend/n;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->backUpUrlRetryCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v9}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->showNotification(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v14}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extra(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mimeType(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->D()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->minProgressTimeMsInterval(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->E()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->maxProgressCount(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->i()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->mainThreadListener(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v12}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationListener(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->O()Lcom/ss/android/socialbase/appdownloader/c/e;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/depend/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationEventListener(Lcom/ss/android/socialbase/downloader/depend/z;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v10}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->force(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->autoResumed(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->showNotificationForAutoResumed(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->o()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkStategy(Lcom/ss/android/socialbase/downloader/downloader/h;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->p()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->chunkAdjustCalculator(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needHttpsToHttpRetry(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->packageName(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->md5(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->expectFileLength(J)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needRetryDelay(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeArray(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->A()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needDefaultHttpServiceBackUp(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needReuseFirstConnection(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needReuseChunkRunnable(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->G()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needIndependentProcess(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->J()Lcom/ss/android/socialbase/downloader/constants/EnqueueType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->enqueueType(Lcom/ss/android/socialbase/downloader/constants/EnqueueType;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->M()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorDepend(Lcom/ss/android/socialbase/downloader/depend/x;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->C()Lcom/ss/android/socialbase/downloader/downloader/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->retryDelayTimeCalculator(Lcom/ss/android/socialbase/downloader/downloader/s;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->H()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->headConnectionAvailable(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 102
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->P()Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->fileUriProvider(Lcom/ss/android/socialbase/downloader/depend/IDownloadFileUriProvider;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ac()Lcom/ss/android/socialbase/downloader/depend/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->diskSpaceHandler(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needChunkDowngradeRetry(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->Q()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->notificationClickCallback(Lcom/ss/android/socialbase/downloader/depend/af;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->ad()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->downloadSetting(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->iconUrl(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->V()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->needSDKMonitor(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->monitorScene(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->X()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->extraMonitorStatus([I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->T()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->executorGroup(I)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->U()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->throttleNetSpeed(J)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->distinctDirectory(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v0

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->Z()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setAutoInstall(Z)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->R()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->R()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->setDownloadCompleteHandlers(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadTask;

    :cond_14
    if-eqz v4, :cond_16

    if-eqz v9, :cond_15

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->S()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/e/d;->a()Z

    move-result v0

    if-nez v0, :cond_15

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v9, Lcom/ss/android/socialbase/appdownloader/d$3;

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/socialbase/appdownloader/d$3;-><init>(Lcom/ss/android/socialbase/appdownloader/d;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    invoke-static {v0, v9}, Lcom/ss/android/socialbase/appdownloader/e/d;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V

    goto :goto_8

    .line 119
    :cond_15
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification permission need not request, start download :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {v7, v4, v5, v6}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;IZ)V

    .line 121
    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadTask;->getDownloadInfo()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_16
    :goto_8
    return v8

    :cond_17
    :goto_9
    const/4 v1, 0x0

    return v1

    :catchall_2
    move-exception v0

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/f;->M()Lcom/ss/android/socialbase/downloader/depend/x;

    move-result-object v1

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v3, 0x3eb

    const-string v4, "addDownloadTask"

    invoke-static {v0, v4}, Lcom/ss/android/socialbase/downloader/i/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/depend/x;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Lcom/ss/android/socialbase/downloader/exception/BaseException;I)V

    .line 123
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "add download task error:%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_18
    :goto_a
    const/4 v4, 0x0

    return v4
.end method

.method public a()Lcom/ss/android/socialbase/appdownloader/c/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->i:Lcom/ss/android/socialbase/appdownloader/c/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 4

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/d;->h()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 141
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 142
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0

    .line 144
    :cond_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v3, "get_download_info_by_list"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 146
    sget-object p2, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "getAppDownloadInfo error:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p2, "application/vnd.android.package-archive"

    :cond_0
    return-object p2
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getUnCompletedDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;II)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 12
    :pswitch_1
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->pause(I)V

    goto :goto_0

    .line 13
    :pswitch_2
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->resume(I)V

    goto :goto_0

    :pswitch_3
    const/4 p3, 0x1

    .line 14
    invoke-static {p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    goto :goto_0

    .line 15
    :pswitch_4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->restart(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/c/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/appdownloader/c/h;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 7
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/d;->i:Lcom/ss/android/socialbase/appdownloader/c/c;

    :cond_0
    if-eqz p4, :cond_1

    .line 8
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Lcom/ss/android/socialbase/appdownloader/c/d;

    :cond_1
    if-eqz p5, :cond_2

    .line 9
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/d;->k:Lcom/ss/android/socialbase/appdownloader/c/h;

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/appdownloader/d;->c(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/appdownloader/c/g;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->l:Lcom/ss/android/socialbase/appdownloader/c/g;

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/appdownloader/c/j;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->o:Lcom/ss/android/socialbase/appdownloader/c/j;

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/ad;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->p:Lcom/ss/android/socialbase/downloader/depend/ad;

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/ag;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->q:Lcom/ss/android/socialbase/downloader/depend/ag;

    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/r;)V
    .locals 1

    .line 151
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setReserveWifiStatusListener(Lcom/ss/android/socialbase/downloader/downloader/r;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->d:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/ss/android/socialbase/appdownloader/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Lcom/ss/android/socialbase/appdownloader/c/d;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getDownloadingDownloadInfosWithMimeType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->setDefaultSavePath(Ljava/lang/String;)V

    return-void
.end method

.method public c()Lcom/ss/android/socialbase/appdownloader/c/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->k:Lcom/ss/android/socialbase/appdownloader/c/h;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ss/android/socialbase/appdownloader/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->n:Lcom/ss/android/socialbase/appdownloader/c/f;

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "package_flag_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public g()Lcom/ss/android/socialbase/appdownloader/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->o:Lcom/ss/android/socialbase/appdownloader/c/j;

    return-object v0
.end method

.method public h()Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getGlobalSaveDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/ss/android/socialbase/appdownloader/c/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->m:Lcom/ss/android/socialbase/appdownloader/c/m;

    return-object v0
.end method

.method public l()Lcom/ss/android/socialbase/appdownloader/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->l:Lcom/ss/android/socialbase/appdownloader/c/g;

    return-object v0
.end method

.method public m()Lcom/ss/android/socialbase/downloader/downloader/r;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getReserveWifiStatusListener()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/ss/android/socialbase/downloader/depend/ad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->p:Lcom/ss/android/socialbase/downloader/depend/ad;

    return-object v0
.end method

.method public o()Lcom/ss/android/socialbase/downloader/depend/ag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->q:Lcom/ss/android/socialbase/downloader/depend/ag;

    return-object v0
.end method
