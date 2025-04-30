.class Lcom/efs/sdk/memoryinfo/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/protocol/record/EfsJSONLog;",
            ">;"
        }
    .end annotation
.end field

.field volatile C:Z

.field private final a:Lcom/efs/sdk/base/EfsReporter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/memoryinfo/e;->B:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/efs/sdk/memoryinfo/e;->a:Lcom/efs/sdk/base/EfsReporter;

    .line 4
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/efs/sdk/memoryinfo/e;->C:Z

    .line 6
    iget-boolean v1, p0, Lcom/efs/sdk/memoryinfo/e;->C:Z

    if-nez v1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p2

    new-instance v0, Lcom/efs/sdk/memoryinfo/e$1;

    invoke-direct {v0, p0, p1}, Lcom/efs/sdk/memoryinfo/e$1;-><init>(Lcom/efs/sdk/memoryinfo/e;Landroid/content/Context;)V

    const-string p1, "umid"

    invoke-virtual {p2, p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "um_umid_header"

    .line 9
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/efs/sdk/memoryinfo/e;)Lcom/efs/sdk/base/EfsReporter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/e;->a:Lcom/efs/sdk/base/EfsReporter;

    return-object p0
.end method

.method static synthetic a(Lcom/efs/sdk/memoryinfo/e;Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/efs/sdk/memoryinfo/e;->a(Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V

    return-void
.end method

.method static synthetic b(Lcom/efs/sdk/memoryinfo/e;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/efs/sdk/memoryinfo/e;->C:Z

    return v0
.end method

.method static synthetic c(Lcom/efs/sdk/memoryinfo/e;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/e;->B:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V
    .locals 1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/memoryinfo/e;->a:Lcom/efs/sdk/base/EfsReporter;

    invoke-virtual {v0, p1}, Lcom/efs/sdk/base/EfsReporter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "send"

    .line 4
    invoke-static {v0, p1}, Lcom/efs/sdk/memoryinfo/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
