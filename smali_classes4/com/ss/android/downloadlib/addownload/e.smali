.class public Lcom/ss/android/downloadlib/addownload/e;
.super Ljava/lang/Object;
.source "CommonDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/f;
.implements Lcom/ss/android/downloadlib/g/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/e$b;,
        Lcom/ss/android/downloadlib/addownload/e$a;,
        Lcom/ss/android/downloadlib/addownload/e$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private final b:Lcom/ss/android/downloadlib/g/m;

.field private c:Lcom/ss/android/downloadlib/addownload/g;

.field private d:Lcom/ss/android/downloadlib/addownload/d;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ss/android/download/api/model/DownloadShortInfo;

.field private h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

.field private i:Lcom/ss/android/downloadlib/addownload/e$c;

.field private final j:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

.field private k:Z

.field private l:J

.field private m:J

.field private n:Lcom/ss/android/download/api/download/DownloadModel;

.field private o:Lcom/ss/android/download/api/download/DownloadEventConfig;

.field private p:Lcom/ss/android/download/api/download/DownloadController;

.field private q:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/download/api/config/OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private final s:Z

.field private t:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/ss/android/download/api/config/IDownloadButtonClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/g/m;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/g/m;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/g/m$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/g/m;

    .line 3
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/addownload/g$a;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/addownload/g$a;-><init>(Lcom/ss/android/downloadlib/g/m;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->j:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    .line 7
    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->o:Lcom/ss/android/download/api/download/DownloadEventConfig;

    .line 8
    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->p:Lcom/ss/android/download/api/download/DownloadController;

    .line 9
    new-instance v1, Lcom/ss/android/downloadlib/addownload/g;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/g;-><init>(Lcom/ss/android/downloadlib/addownload/e;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    .line 10
    new-instance v1, Lcom/ss/android/downloadlib/addownload/d;

    invoke-direct {v1, v0}, Lcom/ss/android/downloadlib/addownload/d;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->d:Lcom/ss/android/downloadlib/addownload/d;

    .line 11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "ttdownloader_callback_twice"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/e;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/e;)Ljava/util/Map;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    return-object p0
.end method

.method private a(IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 1
    .param p3    # Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p3

    const-string v0, "fix_click_start"

    invoke-virtual {p3, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x3

    if-eq p2, p3, :cond_0

    .line 89
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()Lcom/ss/android/socialbase/downloader/downloader/d;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ss/android/socialbase/downloader/downloader/d;->e(I)Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(ZZ)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;II)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/e;IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/downloadlib/addownload/e;->a(IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/addownload/e;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->g(Z)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V
    .locals 2

    .line 93
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 94
    iput v1, v0, Landroid/os/Message;->what:I

    .line 95
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/g/m;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/download/api/model/DownloadShortInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->q()Lcom/ss/android/download/api/model/DownloadShortInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/ss/android/downloadlib/addownload/e;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->h(Z)V

    return-void
.end method

.method static synthetic c(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/downloadlib/addownload/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/e;->d:Lcom/ss/android/downloadlib/addownload/d;

    return-object p0
.end method

.method private c(I)Z
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/e;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 4
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/download/api/model/d;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    instance-of v4, v3, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v4, :cond_3

    .line 6
    check-cast v3, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    const/4 v4, 0x3

    .line 7
    invoke-virtual {v3, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setFunnelType(I)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    .line 8
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ss/android/downloadlib/g/i;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v1, v3, v4, p1}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 11
    iput v0, p1, Landroid/os/Message;->what:I

    .line 12
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/c;->a()Lcom/ss/android/downloadlib/addownload/c;

    move-result-object p1

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {p1, p0, v0, v1}, Lcom/ss/android/downloadlib/addownload/c;->a(Lcom/ss/android/downloadlib/addownload/e;ILcom/ss/android/download/api/download/DownloadModel;)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {p1, v3, v4, v1, v1}, Lcom/ss/android/downloadlib/d/a;->a(JZI)V

    :goto_1
    return v2
.end method

.method static synthetic d(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return-object p0
.end method

.method static synthetic e(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/downloadlib/addownload/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    return-object p0
.end method

.method private e(Z)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/e;->b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "notification_opt_2"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/ss/android/socialbase/downloader/notification/b;->a()Lcom/ss/android/socialbase/downloader/notification/b;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/notification/b;->f(I)V

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->f(Z)V

    return-void
.end method

.method static synthetic f(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/download/api/download/DownloadModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    return-object p0
.end method

.method private f(Z)V
    .locals 12

    .line 3
    sget-object v0, Lcom/ss/android/downloadlib/addownload/e;->a:Ljava/lang/String;

    const-string v1, "pBCD"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->o()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v0

    .line 6
    iget-boolean v1, p0, Lcom/ss/android/downloadlib/addownload/e;->r:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/e;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0, v3}, Lcom/ss/android/downloadlib/addownload/e;->d(Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 9
    iget-object v0, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v0, :cond_a

    .line 10
    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadController;->isAutoDownloadOnCardShow()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0, p1, v4}, Lcom/ss/android/downloadlib/addownload/e;->a(ZZ)V

    goto/16 :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/ss/android/downloadlib/addownload/e;->a(ZZ)V

    goto/16 :goto_1

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadController;->enableShowComplianceDialog()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v1, :cond_2

    .line 15
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a()Lcom/ss/android/downloadlib/addownload/compliance/b;

    move-result-object v1

    iget-object v2, v0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a()Lcom/ss/android/downloadlib/addownload/compliance/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(Lcom/ss/android/downloadlib/addownload/b/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 17
    :cond_2
    invoke-virtual {p0, p1, v4}, Lcom/ss/android/downloadlib/addownload/e;->a(ZZ)V

    goto/16 :goto_1

    .line 18
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pBCD continue download, status:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    if-eqz v1, :cond_4

    .line 20
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadModel;->isNeedWifi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setOnlyWifi(Z)V

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v1

    .line 23
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v2

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v5}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v2

    const/4 v5, -0x2

    if-eq v0, v5, :cond_8

    const/4 v5, -0x1

    if-ne v0, v5, :cond_5

    goto :goto_0

    .line 24
    :cond_5
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/l;->a(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 25
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->enablePause()Z

    move-result v3

    if-nez v3, :cond_6

    return-void

    .line 26
    :cond_6
    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/e;->d:Lcom/ss/android/downloadlib/addownload/d;

    invoke-virtual {v3, v4}, Lcom/ss/android/downloadlib/addownload/d;->a(Z)V

    .line 27
    invoke-static {}, Lcom/ss/android/downloadlib/c/h;->a()Lcom/ss/android/downloadlib/c/h;

    move-result-object v3

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v4

    iget-wide v5, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v4, v5, v6}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ss/android/downloadlib/c/h;->b(Lcom/ss/android/downloadad/api/a/b;)V

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/d/f;->a()Lcom/ss/android/downloadlib/addownload/d/f;

    move-result-object v3

    new-instance v4, Lcom/ss/android/downloadlib/addownload/e$3;

    move-object v5, v4

    move-object v6, p0

    move v7, v1

    move v8, p1

    move-object v9, v2

    move v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/ss/android/downloadlib/addownload/e$3;-><init>(Lcom/ss/android/downloadlib/addownload/e;IZLcom/ss/android/downloadad/api/a/b;I)V

    invoke-virtual {v3, v2, v0, v4}, Lcom/ss/android/downloadlib/addownload/d/f;->a(Lcom/ss/android/downloadad/api/a/b;ILcom/ss/android/downloadlib/addownload/d/c;)V

    goto :goto_1

    .line 29
    :cond_7
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2, v3, p1}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    .line 30
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-direct {p0, v1, v0, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(IILcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    goto :goto_1

    .line 31
    :cond_8
    :goto_0
    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4, v5, p1}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    if-eqz v2, :cond_9

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/downloadad/api/a/b;->h(J)V

    .line 33
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ss/android/downloadad/api/a/b;->i(J)V

    .line 34
    :cond_9
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v3}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setDownloadFromReserveWifi(Z)V

    .line 35
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->d:Lcom/ss/android/downloadlib/addownload/d;

    new-instance v8, Lcom/ss/android/downloadlib/addownload/b/e;

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->l()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v6

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/downloadlib/addownload/b/e;-><init>(JLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    invoke-virtual {p1, v8}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 36
    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/e;->d:Lcom/ss/android/downloadlib/addownload/d;

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v7

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getTotalBytes()J

    move-result-wide v9

    new-instance v11, Lcom/ss/android/downloadlib/addownload/e$2;

    invoke-direct {v11, p0, v1, v0}, Lcom/ss/android/downloadlib/addownload/e$2;-><init>(Lcom/ss/android/downloadlib/addownload/e;II)V

    move v6, v1

    invoke-virtual/range {v5 .. v11}, Lcom/ss/android/downloadlib/addownload/d;->a(IJJLcom/ss/android/downloadlib/addownload/e$a;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private g(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/android/downloadlib/addownload/e;->d:Lcom/ss/android/downloadlib/addownload/d;

    new-instance v8, Lcom/ss/android/downloadlib/addownload/b/e;

    iget-wide v3, v0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    iget-object v5, v0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct/range {p0 .. p0}, Lcom/ss/android/downloadlib/addownload/e;->l()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/downloadlib/addownload/b/e;-><init>(JLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    invoke-virtual {v1, v8}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/downloadlib/addownload/b/e;)V

    .line 3
    iget-object v9, v0, Lcom/ss/android/downloadlib/addownload/e;->d:Lcom/ss/android/downloadlib/addownload/d;

    new-instance v15, Lcom/ss/android/downloadlib/addownload/e$5;

    move/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/ss/android/downloadlib/addownload/e$5;-><init>(Lcom/ss/android/downloadlib/addownload/e;Z)V

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/ss/android/downloadlib/addownload/d;->a(IJJLcom/ss/android/downloadlib/addownload/e$a;)V

    return-void
.end method

.method static synthetic g(Lcom/ss/android/downloadlib/addownload/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/android/downloadlib/addownload/e;->s:Z

    return p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/ss/android/downloadlib/addownload/e;)Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/addownload/e;->j:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    return-object p0
.end method

.method private h(Z)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/g;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    .line 3
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onDownloadStart(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->j:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/g;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)I

    move-result v0

    .line 5
    sget-object v1, Lcom/ss/android/downloadlib/addownload/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginDown id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz v0, :cond_3

    .line 6
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v2

    const-string v4, "fix_click_start"

    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;Z)V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/g;->a()V

    goto :goto_2

    .line 9
    :cond_3
    new-instance p1, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v2}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    move-result-object p1

    const/4 v2, -0x1

    .line 10
    invoke-virtual {p1, v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    .line 11
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 12
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    iget-wide v4, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    new-instance v2, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/4 v6, 0x2

    const-string v7, "start download failed, id=0"

    invoke-direct {v2, v6, v7}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v4, v5, v2}, Lcom/ss/android/downloadlib/d/a;->a(JLcom/ss/android/socialbase/downloader/exception/BaseException;)V

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    const-string v2, "beginDown"

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/e/c;->b(Ljava/lang/String;)V

    .line 14
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    invoke-virtual {p0}, Lcom/ss/android/downloadlib/addownload/e;->c()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/addownload/g;->a(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginDown IC id:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 16
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->k()V

    :cond_5
    return-void
.end method

.method static synthetic i(Lcom/ss/android/downloadlib/addownload/e;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->q:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->q:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/download/api/config/OnItemClickListener;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->l()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v2

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/download/api/config/OnItemClickListener;->onItemClick(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->q:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->b()Lcom/ss/android/download/api/config/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v3

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->l()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ss/android/download/api/config/c;->a(Landroid/content/Context;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadEventConfig;)V

    :goto_0
    return-void
.end method

.method private l()Lcom/ss/android/download/api/download/DownloadEventConfig;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->o:Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/download/api/download/c$a;

    invoke-direct {v0}, Lcom/ss/android/download/api/download/c$a;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/download/api/download/c$a;->a()Lcom/ss/android/download/api/download/c;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private m()Lcom/ss/android/download/api/download/DownloadController;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->p:Lcom/ss/android/download/api/download/DownloadController;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/download/api/download/b;

    invoke-direct {v0}, Lcom/ss/android/download/api/download/b;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->p:Lcom/ss/android/download/api/download/DownloadController;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->p:Lcom/ss/android/download/api/download/DownloadController;

    return-object v0
.end method

.method private n()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/addownload/e;->a:Ljava/lang/String;

    const-string v1, "pICD"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v1, v3}, Lcom/ss/android/downloadlib/addownload/g;->d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pICD BC"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/addownload/e;->f(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "pICD IC"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->k()V

    :goto_0
    return-void
.end method

.method private o()Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "fix_click_start"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getCurBytes()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    return v3

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 5
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v2, -0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 7
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-static {v0, v2, v4}, Lcom/ss/android/socialbase/downloader/i/f;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    return v3

    :catch_0
    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v0, :cond_6

    return v3

    .line 10
    :cond_6
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 11
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->canResume(I)Z

    move-result v0

    if-nez v0, :cond_7

    return v3

    .line 12
    :cond_7
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    return v1
.end method

.method private p()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->i:Lcom/ss/android/downloadlib/addownload/e$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->i:Lcom/ss/android/downloadlib/addownload/e$c;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    :cond_0
    new-instance v0, Lcom/ss/android/downloadlib/addownload/e$c;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/ss/android/downloadlib/addownload/e$c;-><init>(Lcom/ss/android/downloadlib/addownload/e;Lcom/ss/android/downloadlib/addownload/e$1;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->i:Lcom/ss/android/downloadlib/addownload/e$c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/ss/android/downloadlib/g/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method private q()Lcom/ss/android/download/api/model/DownloadShortInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->g:Lcom/ss/android/download/api/model/DownloadShortInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ss/android/download/api/model/DownloadShortInfo;

    invoke-direct {v0}, Lcom/ss/android/download/api/model/DownloadShortInfo;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->g:Lcom/ss/android/download/api/model/DownloadShortInfo;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->g:Lcom/ss/android/download/api/model/DownloadShortInfo;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/e;
    .locals 2

    if-eqz p2, :cond_1

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "back_use_softref_listener"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/e;
    .locals 1

    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->e:Ljava/lang/ref/WeakReference;

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/j;->b(Landroid/content/Context;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/download/DownloadController;)Lcom/ss/android/downloadlib/addownload/e;
    .locals 3

    .line 26
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->p:Lcom/ss/android/download/api/download/DownloadController;

    .line 27
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {p1}, Lcom/ss/android/downloadlib/g/e;->b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "force_auto_open"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/download/DownloadController;->setLinkMode(I)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object p1

    const-string v0, "fix_show_dialog"

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getExtra()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "subprocess"

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    .line 32
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/download/DownloadController;->setEnableNewActivity(Z)V

    .line 33
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/download/api/download/DownloadController;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/download/DownloadEventConfig;)Lcom/ss/android/downloadlib/addownload/e;
    .locals 3

    .line 34
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->o:Lcom/ss/android/download/api/download/DownloadEventConfig;

    .line 35
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->l()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadEventConfig;->getDownloadScene()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/ss/android/downloadlib/addownload/e;->r:Z

    .line 36
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->l()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/download/api/download/DownloadEventConfig;)V

    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/e;
    .locals 5

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->isAd()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getLogExtra()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    const-string v1, "setDownloadModel ad error"

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v0, :cond_2

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "setDownloadModel id=0"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/e/c;->a(ZLjava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "fix_model_id"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setId(J)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    .line 17
    :cond_2
    :goto_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/download/api/download/DownloadModel;)V

    .line 18
    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    .line 19
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    .line 20
    invoke-static {p1}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    check-cast p1, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    const-wide/16 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setExtraValue(J)V

    .line 22
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {p1, v2, v3}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/ss/android/downloadad/api/a/b;->l()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/ss/android/downloadad/api/a/b;->e(J)V

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/i;->a()Lcom/ss/android/downloadlib/addownload/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/addownload/b/i;->a(Lcom/ss/android/downloadad/api/a/b;)V

    :cond_3
    return-object p0
.end method

.method public a(J)Lcom/ss/android/downloadlib/addownload/f;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 71
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    .line 73
    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    .line 74
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/g;->a(J)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "setModelId"

    invoke-virtual {p1, p2, v0}, Lcom/ss/android/downloadlib/e/c;->a(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Lcom/ss/android/downloadlib/addownload/f;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->t:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->t:Ljava/lang/ref/SoftReference;

    :goto_0
    return-object p0
.end method

.method public a(Lcom/ss/android/download/api/config/OnItemClickListener;)Lcom/ss/android/downloadlib/addownload/f;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->q:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->q:Ljava/lang/ref/SoftReference;

    :goto_0
    return-object p0
.end method

.method public a()V
    .locals 5

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/e;->k:Z

    .line 40
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->l()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/download/api/download/DownloadEventConfig;)V

    .line 41
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/download/api/download/DownloadController;)V

    .line 42
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    iget-wide v2, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/g;->a(J)V

    .line 43
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->p()V

    .line 44
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enable_empty_listener"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    const/high16 v1, -0x80000000

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/ss/android/download/api/config/a;

    invoke-direct {v0}, Lcom/ss/android/download/api/config/a;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/downloadlib/addownload/e;->a(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/e;

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 76
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/e;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    iput-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 79
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->q()Lcom/ss/android/download/api/model/DownloadShortInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/ss/android/downloadlib/addownload/g;->a(Landroid/os/Message;Lcom/ss/android/download/api/model/DownloadShortInfo;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 64
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/d;->b()Lcom/ss/android/socialbase/appdownloader/c/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/appdownloader/c/d;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 66
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->cancel(IZ)V

    goto :goto_0

    .line 67
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ss/android/socialbase/appdownloader/DownloadHandlerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.ss.intent.action.DOWNLOAD_DELETE"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    const-string v1, "extra_click_download_ids"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    .line 80
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    :cond_0
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 81
    invoke-static {p1}, Lcom/ss/android/downloadlib/g/j;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->m()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/download/api/download/DownloadController;->enableNewActivity()Z

    move-result p1

    if-nez p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/download/DownloadModel;->setFilePath(Ljava/lang/String;)Lcom/ss/android/download/api/download/DownloadModel;

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-static {p1}, Lcom/ss/android/downloadlib/g/e;->c(Lcom/ss/android/download/api/download/DownloadModel;)I

    move-result p1

    if-nez p1, :cond_2

    .line 85
    sget-object p1, Lcom/ss/android/downloadlib/addownload/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "pBCD not start"

    invoke-static {p1, v1, v0}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 86
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    new-instance v0, Lcom/ss/android/downloadlib/addownload/e$4;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/downloadlib/addownload/e$4;-><init>(Lcom/ss/android/downloadlib/addownload/e;Z)V

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/download/api/config/s;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0, p2}, Lcom/ss/android/downloadlib/addownload/e;->g(Z)V

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 50
    iput-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/e;->k:Z

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/downloadlib/addownload/e;->l:J

    .line 52
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz p1, :cond_1

    .line 53
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->getInstance(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/Downloader;

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/Downloader;->removeTaskMainListener(I)V

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->i:Lcom/ss/android/downloadlib/addownload/e$c;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p1, v0, :cond_2

    .line 55
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->i:Lcom/ss/android/downloadlib/addownload/e$c;

    invoke-virtual {p1, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/g;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    .line 57
    sget-object p1, Lcom/ss/android/downloadlib/addownload/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind removeCallbacksAndMessages, downloadUrl:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-nez v2, :cond_3

    const-string v2, ""

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 58
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/g/m;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 59
    iput-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->g:Lcom/ss/android/download/api/model/DownloadShortInfo;

    .line 60
    iput-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    return v1

    .line 61
    :cond_4
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 62
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    invoke-virtual {p1, v1}, Lcom/ss/android/downloadlib/addownload/g;->b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_5
    return v0
.end method

.method public synthetic b(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/f;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/addownload/e;->a(ILcom/ss/android/download/api/download/DownloadStatusChangeListener;)Lcom/ss/android/downloadlib/addownload/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/f;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/addownload/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/ss/android/download/api/download/DownloadController;)Lcom/ss/android/downloadlib/addownload/f;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/download/api/download/DownloadController;)Lcom/ss/android/downloadlib/addownload/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/ss/android/download/api/download/DownloadEventConfig;)Lcom/ss/android/downloadlib/addownload/f;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/download/api/download/DownloadEventConfig;)Lcom/ss/android/downloadlib/addownload/e;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/f;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->a(Lcom/ss/android/download/api/download/DownloadModel;)Lcom/ss/android/downloadlib/addownload/e;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error actionType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/g;->a(J)V

    .line 11
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v2

    iget-wide v3, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/downloadlib/addownload/b/f;->e(J)Lcom/ss/android/downloadlib/addownload/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/downloadlib/addownload/b/e;->y()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object v2

    const-string v3, "handleDownload ModelBox !isStrictValid"

    invoke-virtual {v2, v3}, Lcom/ss/android/downloadlib/e/c;->a(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/e;->c:Lcom/ss/android/downloadlib/addownload/g;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/ss/android/downloadlib/addownload/e;->r:Z

    invoke-virtual {v2, v3, p1, v4}, Lcom/ss/android/downloadlib/addownload/g;->a(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v2, :cond_5

    .line 14
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->c(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "handleDownload id:"

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_5

    .line 15
    sget-object p1, Lcom/ss/android/downloadlib/addownload/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",pBC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadlib/addownload/e;->b(Z)V

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    .line 17
    sget-object p1, Lcom/ss/android/downloadlib/addownload/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",pIC:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/ss/android/downloadlib/addownload/e;->c(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/addownload/e;->e(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/ss/android/downloadlib/addownload/e;->k:Z

    return v0
.end method

.method public c(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 15
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(JI)V

    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->n()V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/e;->l:J

    return-wide v0
.end method

.method public d(Z)Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->t:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    const-string v2, "mDownloadButtonClickListener has recycled"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-interface {p1, v0}, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;->handleComplianceDialog(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->t:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-interface {p1}, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;->handleMarketFailedComplianceDialog()V

    :goto_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/e;->t:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7
    :catch_0
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/e/c;->b(Ljava/lang/String;)V

    return v1

    .line 8
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/e/c;->a()Lcom/ss/android/downloadlib/e/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ss/android/downloadlib/e/c;->b(Ljava/lang/String;)V

    return v1
.end method

.method public e()Z
    .locals 5

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "quick_app_enable_switch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    .line 4
    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/download/api/model/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    .line 5
    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/c;->a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/e;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-interface {v3}, Lcom/ss/android/download/api/download/DownloadModel;->getQuickAppModel()Lcom/ss/android/download/api/model/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/download/api/model/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/g/l;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->b:Lcom/ss/android/downloadlib/g/m;

    new-instance v1, Lcom/ss/android/downloadlib/addownload/e$1;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/addownload/e$1;-><init>(Lcom/ss/android/downloadlib/addownload/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public g()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/ss/android/downloadlib/addownload/g;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;

    .line 6
    invoke-interface {v1}, Lcom/ss/android/download/api/download/DownloadStatusChangeListener;->onIdle()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->h:Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    if-eqz v0, :cond_2

    const/4 v1, -0x4

    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->setStatus(I)V

    :cond_2
    return-void
.end method

.method public h()V
    .locals 3

    .line 17
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadlib/addownload/e;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/addownload/b/f;->f(J)V

    return-void
.end method

.method public i()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/e;->t:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/e;->n:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-static {v1, v0}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z

    move-result v0

    return v0
.end method
