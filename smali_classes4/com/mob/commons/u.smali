.class public Lcom/mob/commons/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/u$a;,
        Lcom/mob/commons/u$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static final e:Ljava/util/concurrent/ExecutorService;

.field public static final f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "M-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0022hdhi"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/u;->a:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "003Fghekhi"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/u;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x2

    const/4 v1, 0x5

    .line 4
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Lcom/mob/commons/u$b;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Lcom/mob/commons/u$b;-><init>(I)V

    new-instance v9, Lcom/mob/commons/u$a;

    invoke-direct {v9}, Lcom/mob/commons/u$a;-><init>()V

    const/4 v2, 0x2

    const-wide/16 v4, 0x3c

    move-object v1, v0

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/mob/commons/u;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v17, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Lcom/mob/commons/u$b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/mob/commons/u$b;-><init>(I)V

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-wide/16 v14, 0x78

    move-object v11, v0

    move-object/from16 v18, v1

    invoke-direct/range {v11 .. v18}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/mob/commons/u;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    new-instance v0, Lcom/mob/commons/u$b;

    invoke-direct {v0, v10}, Lcom/mob/commons/u$b;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/u;->e:Ljava/util/concurrent/ExecutorService;

    .line 7
    new-instance v0, Lcom/mob/commons/u$b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/mob/commons/u$b;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mob/commons/u;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
