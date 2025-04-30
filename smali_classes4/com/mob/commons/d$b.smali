.class Lcom/mob/commons/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:[Lcom/mob/commons/d$b;


# instance fields
.field private b:J

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mob/commons/d$b;

    .line 1
    sput-object v0, Lcom/mob/commons/d$b;->a:[Lcom/mob/commons/d$b;

    return-void
.end method

.method private constructor <init>(JLjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/mob/commons/d$b;->b:J

    .line 3
    iput-object p3, p0, Lcom/mob/commons/d$b;->c:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/d$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mob/commons/d$b;->b:J

    return-wide v0
.end method

.method static synthetic a(JLjava/util/HashMap;)Lcom/mob/commons/d$b;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/mob/commons/d$b;->b(JLjava/util/HashMap;)Lcom/mob/commons/d$b;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 3
    :try_start_0
    sget-object v0, Lcom/mob/commons/d$b;->a:[Lcom/mob/commons/d$b;

    .line 4
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 5
    :try_start_1
    aget-object v2, v0, v1

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/mob/commons/d$b;->b:J

    .line 7
    iget-object v2, p0, Lcom/mob/commons/d$b;->c:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/mob/commons/d$b;->c:Ljava/util/HashMap;

    .line 10
    aput-object p0, v0, v1

    .line 11
    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    return-void
.end method

.method private static b(JLjava/util/HashMap;)Lcom/mob/commons/d$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/mob/commons/d$b;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/mob/commons/d$b;->a:[Lcom/mob/commons/d$b;

    .line 3
    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 4
    :try_start_0
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 5
    iput-wide p0, v2, Lcom/mob/commons/d$b;->b:J

    .line 6
    iget-object p0, v2, Lcom/mob/commons/d$b;->c:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 8
    :cond_0
    iput-object p2, v2, Lcom/mob/commons/d$b;->c:Ljava/util/HashMap;

    const/4 p0, 0x0

    .line 9
    aput-object p0, v0, v1

    .line 10
    monitor-exit v0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Lcom/mob/commons/d$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/mob/commons/d$b;-><init>(JLjava/util/HashMap;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static synthetic b(Lcom/mob/commons/d$b;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/commons/d$b;->c:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/mob/commons/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/d$b$1;

    invoke-direct {v1, p0}, Lcom/mob/commons/d$b$1;-><init>(Lcom/mob/commons/d$b;)V

    invoke-static {v0, v1}, Lcom/mob/commons/l;->a(Ljava/io/File;Lcom/mob/commons/k;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/mob/commons/d$b;->a()V

    return-void

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/mob/commons/d$b;->a()V

    .line 4
    throw v0
.end method
