.class public Lcom/ss/android/socialbase/downloader/downloader/c;
.super Ljava/lang/Object;
.source "DownloadComponentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/downloader/c$a;
    }
.end annotation


# static fields
.field private static volatile A:Lcom/ss/android/socialbase/downloader/d/b;

.field private static volatile B:Lcom/ss/android/socialbase/downloader/depend/aa;

.field private static volatile C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/ak;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile D:Z

.field private static volatile E:Lokhttp3/OkHttpClient;

.field private static volatile F:Lcom/ss/android/socialbase/downloader/network/f;

.field private static volatile G:Lcom/ss/android/socialbase/downloader/network/f;

.field private static volatile H:Lcom/ss/android/socialbase/downloader/downloader/u;

.field private static final I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;"
        }
    .end annotation
.end field

.field private static J:Z

.field private static K:I

.field private static final L:I

.field private static final M:I

.field private static final N:I

.field private static final O:I

.field private static P:I

.field private static Q:Z

.field private static final R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/ab;",
            ">;"
        }
    .end annotation
.end field

.field private static T:I

.field private static U:Z

.field private static V:Z

.field private static W:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private static X:Lcom/ss/android/socialbase/downloader/d/c;

.field private static volatile Y:Z

.field private static volatile a:Landroid/content/Context;

.field private static volatile b:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private static volatile c:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private static volatile d:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private static volatile e:Lcom/ss/android/socialbase/downloader/depend/af;

.field private static volatile f:Lcom/ss/android/socialbase/downloader/impls/a;

.field private static volatile g:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private static volatile h:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private static volatile i:Lcom/ss/android/socialbase/downloader/downloader/c$a;

.field private static volatile j:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

.field private static volatile k:Lcom/ss/android/socialbase/downloader/network/h;

.field private static volatile l:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

.field private static volatile m:Lcom/ss/android/socialbase/downloader/network/h;

.field private static volatile n:Lcom/ss/android/socialbase/downloader/downloader/l;

.field private static volatile o:Ljava/util/concurrent/ExecutorService;

.field private static volatile p:Ljava/util/concurrent/ExecutorService;

.field private static volatile q:Ljava/util/concurrent/ExecutorService;

.field private static volatile r:Ljava/util/concurrent/ExecutorService;

.field private static volatile s:Ljava/util/concurrent/ExecutorService;

.field private static volatile t:Ljava/util/concurrent/ExecutorService;

.field private static volatile u:Ljava/util/concurrent/ExecutorService;

.field private static volatile v:Ljava/util/concurrent/ExecutorService;

.field private static volatile w:Lcom/ss/android/socialbase/downloader/downloader/g;

.field private static volatile x:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

.field private static volatile y:Lcom/ss/android/socialbase/downloader/downloader/s;

.field private static volatile z:Lcom/ss/android/socialbase/downloader/downloader/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->C:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->D:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->E:Lokhttp3/OkHttpClient;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->I:Ljava/util/List;

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->J:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/c;->L:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    sput v3, Lcom/ss/android/socialbase/downloader/downloader/c;->M:I

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/c;->N:I

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/c;->O:I

    const/16 v1, 0x2000

    sput v1, Lcom/ss/android/socialbase/downloader/downloader/c;->P:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->R:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->S:Ljava/util/List;

    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/c;->U:Z

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->V:Z

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->Y:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->I:Ljava/util/List;

    return-object v0
.end method

.method public static B()Lcom/ss/android/socialbase/downloader/downloader/k;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/i;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/i;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-object v0
.end method

.method public static C()Lcom/ss/android/socialbase/downloader/impls/a;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/e;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/e;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    return-object v0
.end method

.method public static D()I
    .locals 1

    sget v0, Lcom/ss/android/socialbase/downloader/downloader/c;->T:I

    return v0
.end method

.method public static E()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->B:Lcom/ss/android/socialbase/downloader/depend/aa;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->B:Lcom/ss/android/socialbase/downloader/depend/aa;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/aa;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->B:Lcom/ss/android/socialbase/downloader/depend/aa;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/depend/aa;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->i:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static F()V
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oppo"

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    sget-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/constants/e;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static G()Z
    .locals 1

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->U:Z

    return v0
.end method

.method public static declared-synchronized H()I
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/ss/android/socialbase/downloader/downloader/c;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static I()Lcom/ss/android/socialbase/downloader/downloader/h;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/c;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/c;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Lcom/ss/android/socialbase/downloader/downloader/h;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0
.end method

.method public static J()Lcom/ss/android/socialbase/downloader/depend/af;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->e:Lcom/ss/android/socialbase/downloader/depend/af;

    return-object v0
.end method

.method public static K()Lcom/ss/android/socialbase/downloader/downloader/g;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->w:Lcom/ss/android/socialbase/downloader/downloader/g;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->w:Lcom/ss/android/socialbase/downloader/downloader/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/b;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/b;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->w:Lcom/ss/android/socialbase/downloader/downloader/g;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->w:Lcom/ss/android/socialbase/downloader/downloader/g;

    return-object v0
.end method

.method public static L()Lcom/ss/android/socialbase/downloader/downloader/s;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->y:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->y:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/j;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/j;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->y:Lcom/ss/android/socialbase/downloader/downloader/s;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->y:Lcom/ss/android/socialbase/downloader/downloader/s;

    return-object v0
.end method

.method public static M()Lcom/ss/android/socialbase/downloader/downloader/u;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->H:Lcom/ss/android/socialbase/downloader/downloader/u;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->H:Lcom/ss/android/socialbase/downloader/downloader/u;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/u$a;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/u$a;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->H:Lcom/ss/android/socialbase/downloader/downloader/u;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->H:Lcom/ss/android/socialbase/downloader/downloader/u;

    return-object v0
.end method

.method public static declared-synchronized N()Landroid/content/Context;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized O()Z
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->Q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static P()Lcom/ss/android/socialbase/downloader/d/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->X:Lcom/ss/android/socialbase/downloader/d/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/c$3;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/c$3;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->X:Lcom/ss/android/socialbase/downloader/d/c;

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->X:Lcom/ss/android/socialbase/downloader/d/c;

    return-object v0
.end method

.method public static Q()Lcom/ss/android/socialbase/downloader/downloader/r;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->W:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object v0
.end method

.method public static R()Z
    .locals 1

    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->Y:Z

    return v0
.end method

.method public static S()Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportMultiProc::="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->i:Lcom/ss/android/socialbase/downloader/downloader/c$a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wjd"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->i:Lcom/ss/android/socialbase/downloader/downloader/c$a;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static T()Lcom/ss/android/socialbase/downloader/downloader/c$a;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->i:Lcom/ss/android/socialbase/downloader/downloader/c$a;

    return-object v0
.end method

.method private static U()V
    .locals 3

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->x:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->x:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    :cond_0
    sget-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->J:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Landroid/content/Context;

    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/c;->x:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->J:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->getSavePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->B()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;IZ",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")",
            "Lcom/ss/android/socialbase/downloader/network/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)[I

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p2, v2

    :try_start_0
    invoke-static {p0, p1, v4, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v4

    :catch_0
    move-exception v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return-object v1

    :cond_2
    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;IZ",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v7, p4

    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->d()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->h()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz p5, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, p1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, p1

    goto :goto_3

    :cond_1
    :goto_1
    move v5, p0

    move-object v6, p1

    move-object v8, p3

    :try_start_1
    invoke-interface {v0, p0, p1, p3}, Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v8, v1, v3

    const/4 v10, 0x0

    const-string v11, "get"

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v8

    move-object v6, v11

    move/from16 v7, p4

    move-object v8, v10

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    move-object v8, v2

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz p5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-string v11, "get"

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v9

    move-object v6, v11

    move/from16 v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_3
    throw v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x3fe

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpService not exist, netLib = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static a(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;IZ",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p4

    :goto_0
    new-instance v1, Lcom/ss/android/socialbase/downloader/model/c;

    const-string v2, "ss_d_request_host_ip_114"

    move-object/from16 v10, p3

    invoke-direct {v1, v2, v10}, Lcom/ss/android/socialbase/downloader/model/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    move-object v1, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    if-nez p0, :cond_2

    const/4 v0, 0x2

    move-object/from16 v1, p4

    goto :goto_1

    :cond_2
    move-object/from16 v1, p4

    move/from16 v0, p5

    :goto_1
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)[I

    move-result-object v2

    array-length v11, v2

    const/4 v0, 0x0

    const/4 v12, 0x0

    move-object v0, v12

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_6

    aget v7, v2, v13

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v1

    move/from16 v8, p6

    move-object/from16 v9, p7

    :try_start_0
    invoke-static/range {v3 .. v9}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual/range {p7 .. p7}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;->isExpiredRedownload()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/i/f;->g(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/i/f;->c(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dcach::http exception 304, throw excepiton, not retry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_3
    move-object v0, v3

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    if-nez v0, :cond_7

    return-object v12

    :cond_7
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static a(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/network/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(ZILjava/lang/String;Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized a()V
    .locals 3

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->J:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->x:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Landroid/content/Context;

    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/c;->x:Lcom/ss/android/socialbase/downloader/downloader/DownloadReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Landroid/content/Context;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object p0

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/constants/d;)V
    .locals 4

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->R:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/k;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/d;->b:Lcom/ss/android/socialbase/downloader/constants/d;

    if-ne p0, v3, :cond_1

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/k;->a()V

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/d;->c:Lcom/ss/android/socialbase/downloader/constants/d;

    if-ne p0, v3, :cond_0

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/depend/k;->b()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/d;->c:Lcom/ss/android/socialbase/downloader/constants/d;

    if-ne p0, v1, :cond_3

    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->R:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/d/b;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->A:Lcom/ss/android/socialbase/downloader/d/b;

    :cond_0
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/d/c;)V
    .locals 0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->X:Lcom/ss/android/socialbase/downloader/d/c;

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/aa;)V
    .locals 0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->B:Lcom/ss/android/socialbase/downloader/depend/aa;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->a()V

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/af;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->e:Lcom/ss/android/socialbase/downloader/depend/af;

    :cond_0
    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/ak;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->C:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->C:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->R:Ljava/util/List;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V
    .locals 3

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->Y:Z

    if-eqz v1, :cond_0

    const-string p0, "DownloadComponentManager"

    const-string v1, "component has init"

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->D:Z

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V

    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez p0, :cond_1

    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    :cond_1
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-nez p0, :cond_2

    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/h;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    :cond_2
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->h:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-nez p0, :cond_3

    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->i:Lcom/ss/android/socialbase/downloader/downloader/c$a;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->i:Lcom/ss/android/socialbase/downloader/downloader/c$a;

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/c$a;->a()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object p0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->h:Lcom/ss/android/socialbase/downloader/downloader/o;

    :cond_3
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez p0, :cond_4

    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/i;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/i;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    :cond_4
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez p0, :cond_5

    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/e;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/e;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->f:Lcom/ss/android/socialbase/downloader/impls/a;

    :cond_5
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-nez p0, :cond_6

    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/c;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/c;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Lcom/ss/android/socialbase/downloader/downloader/h;

    :cond_6
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->w:Lcom/ss/android/socialbase/downloader/downloader/g;

    if-nez p0, :cond_7

    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/b;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/b;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->w:Lcom/ss/android/socialbase/downloader/downloader/g;

    :cond_7
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->y:Lcom/ss/android/socialbase/downloader/downloader/s;

    if-nez p0, :cond_8

    new-instance p0, Lcom/ss/android/socialbase/downloader/impls/j;

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/j;-><init>()V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->y:Lcom/ss/android/socialbase/downloader/downloader/s;

    :cond_8
    sget p0, Lcom/ss/android/socialbase/downloader/downloader/c;->K:I

    if-lez p0, :cond_9

    sget v2, Lcom/ss/android/socialbase/downloader/downloader/c;->L:I

    if-le p0, v2, :cond_a

    :cond_9
    sget p0, Lcom/ss/android/socialbase/downloader/downloader/c;->L:I

    sput p0, Lcom/ss/android/socialbase/downloader/downloader/c;->K:I

    :cond_a
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->U()V

    sget-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/c;->D:Z

    const/4 v2, 0x1

    if-eqz p0, :cond_b

    if-nez v1, :cond_b

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->c()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/socialbase/downloader/downloader/m;->startService()V

    goto :goto_0

    :cond_b
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->d()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    if-eqz p0, :cond_d

    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/c$1;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/c$1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_c
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/i/f;->d(Landroid/content/Context;)Ljava/lang/String;

    :cond_d
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->F()V

    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/c;->Y:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/c$a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIndependentServiceCreator::creator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wjd"

    invoke-static {v1, v0}, Lcom/ss/android/socialbase/downloader/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->i:Lcom/ss/android/socialbase/downloader/downloader/c$a;

    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/g;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->w:Lcom/ss/android/socialbase/downloader/downloader/g;

    :cond_0
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/h;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->d:Lcom/ss/android/socialbase/downloader/downloader/h;

    :cond_0
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/j;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    :cond_0
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/downloader/downloader/k;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->c:Lcom/ss/android/socialbase/downloader/downloader/k;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Lcom/ss/android/socialbase/downloader/downloader/l;)V
    .locals 1

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->n:Lcom/ss/android/socialbase/downloader/downloader/l;

    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    instance-of p0, p0, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    check-cast p0, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/downloader/r;)V
    .locals 0

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V
    .locals 3

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->S:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/ab;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/ss/android/socialbase/downloader/depend/ab;->a(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->j:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    :cond_0
    sget-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->j:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/c;->Q:Z

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/network/h;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->k:Lcom/ss/android/socialbase/downloader/network/h;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->u:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/c;->V:Z

    return-void
.end method

.method private static a(I)[I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-array p0, v2, [I

    fill-array-data p0, :array_0

    return-object p0

    :cond_0
    new-array p0, v2, [I

    fill-array-data p0, :array_1

    return-object p0

    :cond_1
    new-array p0, v1, [I

    aput v1, p0, v0

    return-object p0

    :cond_2
    new-array p0, v1, [I

    aput v0, p0, v0

    return-object p0

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;IZLcom/ss/android/socialbase/downloader/model/DownloadInfo;)Lcom/ss/android/socialbase/downloader/network/g;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;IZ",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo;",
            ")",
            "Lcom/ss/android/socialbase/downloader/network/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/android/socialbase/downloader/exception/BaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move v7, p2

    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->f()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->i()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, p0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, p0

    goto :goto_3

    :cond_1
    :goto_1
    move-object v5, p0

    move-object v6, p1

    :try_start_1
    invoke-interface {v0, p0, p1}, Lcom/ss/android/socialbase/downloader/network/h;->a(Ljava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/g;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_2

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v8, v1, v3

    const/4 v10, 0x0

    const-string v11, "head"

    move-object v1, v0

    move-object v2, p0

    move-object v3, v6

    move-wide v4, v8

    move-object v6, v11

    move v7, p2

    move-object v8, v10

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v9}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    move-object v8, v2

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-eqz p3, :cond_3

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    const-string v11, "head"

    move-object v2, p0

    move-object v3, v6

    move-wide v4, v9

    move-object v6, v11

    move v7, p2

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v9}, Lcom/ss/android/socialbase/downloader/d/a;->a(Lcom/ss/android/socialbase/downloader/network/g;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/io/IOException;Lcom/ss/android/socialbase/downloader/model/DownloadInfo;)V

    :cond_3
    throw v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/downloader/exception/BaseException;

    const/16 v1, 0x3fe

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpService not exist, netLib = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/exception/BaseException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public static declared-synchronized b()V
    .locals 5

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->D:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->N()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v1

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/m;->startService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_3
    sput-boolean v2, Lcom/ss/android/socialbase/downloader/downloader/c;->D:Z

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcom/ss/android/socialbase/downloader/downloader/c;->K:I

    :cond_0
    return-void
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/depend/k;)V
    .locals 2

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->R:Ljava/util/List;

    monitor-enter v0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static declared-synchronized b(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V
    .locals 1

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V
    .locals 3

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->S:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/depend/ab;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0, p1}, Lcom/ss/android/socialbase/downloader/depend/ab;->b(Lcom/ss/android/socialbase/downloader/model/DownloadTask;I)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->r()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/i/f;->d()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static b(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->v:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/ss/android/socialbase/downloader/downloader/c;->U:Z

    return-void
.end method

.method private static c(Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;)V
    .locals 2

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCache()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCache()Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/downloader/j;)V

    :cond_1
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getIdGenerator()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getIdGenerator()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    :cond_2
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkCntCalculator()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkCntCalculator()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/downloader/h;)V

    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getNotificationClickCallback()Lcom/ss/android/socialbase/downloader/depend/af;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/depend/af;)V

    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMaxDownloadPoolSize()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMaxDownloadPoolSize()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getHttpService()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getHttpService()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)V

    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getHeadHttpService()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getHeadHttpService()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/network/h;)V

    :cond_7
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadLaunchHandler()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadLaunchHandler()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/downloader/l;)V

    :cond_8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getCPUThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getCPUThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->c(Ljava/util/concurrent/ExecutorService;)V

    :cond_9
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getIOThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getIOThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->d(Ljava/util/concurrent/ExecutorService;)V

    :cond_a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixDefaultDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixDefaultDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->e(Ljava/util/concurrent/ExecutorService;)V

    :cond_b
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixFrequentDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixFrequentDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->f(Ljava/util/concurrent/ExecutorService;)V

    :cond_c
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixApkDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMixApkDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->g(Ljava/util/concurrent/ExecutorService;)V

    :cond_d
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDBThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDBThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->h(Ljava/util/concurrent/ExecutorService;)V

    :cond_e
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/concurrent/ExecutorService;)V

    :cond_f
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getOkHttpDispatcherExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getOkHttpDispatcherExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Ljava/util/concurrent/ExecutorService;)V

    :cond_10
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadCompleteHandlers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Ljava/util/List;)V

    :cond_11
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMonitorConfig()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getMonitorConfig()Lcom/ss/android/socialbase/downloader/downloader/q;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->z:Lcom/ss/android/socialbase/downloader/downloader/q;

    :cond_12
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getWriteBufferSize()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getWriteBufferSize()I

    move-result v0

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/c;->P:I

    :cond_13
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkAdjustCalculator()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getChunkAdjustCalculator()Lcom/ss/android/socialbase/downloader/downloader/g;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/downloader/g;)V

    :cond_14
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->isDownloadInMultiProcess()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/downloader/downloader/c;->D:Z

    :cond_15
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadExpSwitch()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadExpSwitch()I

    move-result v0

    sput v0, Lcom/ss/android/socialbase/downloader/downloader/c;->T:I

    :cond_16
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadSetting()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadSetting()Lcom/ss/android/socialbase/downloader/depend/aa;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/depend/aa;)V

    :cond_17
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadDns()Lcom/ss/android/socialbase/downloader/network/f;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadDns()Lcom/ss/android/socialbase/downloader/network/f;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->F:Lcom/ss/android/socialbase/downloader/network/f;

    :cond_18
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getTTNetHandler()Lcom/ss/android/socialbase/downloader/downloader/u;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getTTNetHandler()Lcom/ss/android/socialbase/downloader/downloader/u;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->H:Lcom/ss/android/socialbase/downloader/downloader/u;

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->H:Lcom/ss/android/socialbase/downloader/downloader/u;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/u;->a()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->H:Lcom/ss/android/socialbase/downloader/downloader/u;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/u;->b()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)V

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->H:Lcom/ss/android/socialbase/downloader/downloader/u;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/u;->c()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    goto :goto_0

    :cond_19
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->h()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;)V

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->i()Lcom/ss/android/socialbase/downloader/network/h;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/network/h;)V

    :cond_1a
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->needAutoRefreshUnSuccessTask()Z

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(Z)V

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadMonitorListener()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;->getDownloadMonitorListener()Lcom/ss/android/socialbase/downloader/d/b;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lcom/ss/android/socialbase/downloader/d/b;)V

    :cond_1b
    return-void
.end method

.method private static c(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->o:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static declared-synchronized c()Z
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c1655219899538dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :goto_0
    :pswitch_0
    const/16 v0, 0x49

    const/16 v1, 0x60

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_1
    packed-switch v1, :pswitch_data_1

    :pswitch_2
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-char v1, p0, v0

    xor-int/2addr v1, v0

    int-to-char v1, v1

    aput-char v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :pswitch_4
    const/16 v0, 0x4a

    const/16 v1, 0x37

    goto :goto_1

    :goto_3
    const/16 v0, 0x48

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x37
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static d()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->j:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    return-object v0
.end method

.method private static d(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->p:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/ak;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->C:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->C:Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static e(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->q:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static f()Lcom/ss/android/socialbase/downloader/network/h;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->k:Lcom/ss/android/socialbase/downloader/network/h;

    return-object v0
.end method

.method private static f(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->r:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static g()Lcom/ss/android/socialbase/downloader/d/b;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->A:Lcom/ss/android/socialbase/downloader/d/b;

    return-object v0
.end method

.method private static g(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->s:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static h()Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->l:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->l:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/g;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/g;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->l:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->l:Lcom/ss/android/socialbase/downloader/network/IDownloadHttpService;

    return-object v0
.end method

.method private static h(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/ss/android/socialbase/downloader/downloader/c;->t:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static i()Lcom/ss/android/socialbase/downloader/network/h;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->m:Lcom/ss/android/socialbase/downloader/network/h;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->m:Lcom/ss/android/socialbase/downloader/network/h;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/f;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/f;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->m:Lcom/ss/android/socialbase/downloader/network/h;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->m:Lcom/ss/android/socialbase/downloader/network/h;

    return-object v0
.end method

.method public static j()Z
    .locals 3

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    sget-boolean v1, Lcom/ss/android/socialbase/downloader/downloader/c;->V:Z

    const-string v2, "switch_not_auto_boot_service"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/g/a;->a(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized k()Lcom/ss/android/socialbase/downloader/downloader/q;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->z:Lcom/ss/android/socialbase/downloader/downloader/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static l()Ljava/util/concurrent/ExecutorService;
    .locals 11

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->o:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/c;->L:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v2, "DownloadThreadPool-cpu-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->o:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->o:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static m()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->p:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->p:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static n()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->r:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->r:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static o()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->s:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->s:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static p()Ljava/util/concurrent/ExecutorService;
    .locals 11

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->q:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->q:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/c;->N:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v2, "DownloadThreadPool-mix-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->q:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->q:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static q()Ljava/util/concurrent/ExecutorService;
    .locals 11

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->u:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->u:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/c;->M:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v2, "DownloadThreadPool-chunk-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->u:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->u:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static r()Ljava/util/concurrent/ExecutorService;
    .locals 11

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/ss/android/socialbase/downloader/downloader/c;->O:I

    const-wide/16 v5, 0xf

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/ss/android/socialbase/downloader/h/a;

    const-string v2, "DownloadThreadPool-db-fixed"

    const/4 v10, 0x1

    invoke-direct {v9, v2, v10}, Lcom/ss/android/socialbase/downloader/h/a;-><init>(Ljava/lang/String;Z)V

    move-object v2, v1

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->t:Ljava/util/concurrent/ExecutorService;

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->t:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static s()Lokhttp3/OkHttpClient;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->E:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->E:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->t()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->E:Lokhttp3/OkHttpClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->E:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static t()Lokhttp3/OkHttpClient$Builder;
    .locals 5

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->v:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    new-instance v1, Lokhttp3/Dispatcher;

    sget-object v2, Lcom/ss/android/socialbase/downloader/downloader/c;->v:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lokhttp3/Dispatcher;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    return-object v0
.end method

.method public static u()Lcom/ss/android/socialbase/downloader/network/f;
    .locals 1

    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->F:Lcom/ss/android/socialbase/downloader/network/f;

    return-object v0
.end method

.method public static v()Lcom/ss/android/socialbase/downloader/network/f;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->G:Lcom/ss/android/socialbase/downloader/network/f;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->G:Lcom/ss/android/socialbase/downloader/network/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/c$2;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/downloader/c$2;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->G:Lcom/ss/android/socialbase/downloader/network/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->G:Lcom/ss/android/socialbase/downloader/network/f;

    return-object v0
.end method

.method public static declared-synchronized w()Lcom/ss/android/socialbase/downloader/downloader/l;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->n:Lcom/ss/android/socialbase/downloader/downloader/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static x()Lcom/ss/android/socialbase/downloader/downloader/j;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/d;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/d;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->b:Lcom/ss/android/socialbase/downloader/downloader/j;

    return-object v0
.end method

.method public static y()Lcom/ss/android/socialbase/downloader/downloader/o;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/socialbase/downloader/impls/h;

    invoke-direct {v1}, Lcom/ss/android/socialbase/downloader/impls/h;-><init>()V

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->g:Lcom/ss/android/socialbase/downloader/downloader/o;

    return-object v0
.end method

.method public static z()Lcom/ss/android/socialbase/downloader/downloader/o;
    .locals 2

    const-class v0, Lcom/ss/android/socialbase/downloader/downloader/c;

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->h:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-nez v1, :cond_1

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->h:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-nez v1, :cond_0

    sget-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->i:Lcom/ss/android/socialbase/downloader/downloader/c$a;

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/c$a;->a()Lcom/ss/android/socialbase/downloader/downloader/o;

    move-result-object v1

    sput-object v1, Lcom/ss/android/socialbase/downloader/downloader/c;->h:Lcom/ss/android/socialbase/downloader/downloader/o;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/c;->h:Lcom/ss/android/socialbase/downloader/downloader/o;

    return-object v0
.end method
