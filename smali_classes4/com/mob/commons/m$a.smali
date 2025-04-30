.class Lcom/mob/commons/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:[Lcom/mob/commons/m$a;


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mob/commons/m$a;

    .line 1
    sput-object v0, Lcom/mob/commons/m$a;->a:[Lcom/mob/commons/m$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/mob/commons/m$a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/commons/m$a;->b()Lcom/mob/commons/m$a;

    move-result-object v0

    return-object v0
.end method

.method private static b()Lcom/mob/commons/m$a;
    .locals 4

    .line 1
    sget-object v0, Lcom/mob/commons/m$a;->a:[Lcom/mob/commons/m$a;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 3
    :try_start_0
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 4
    aput-object v3, v0, v1

    .line 5
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lcom/mob/commons/m$a;

    invoke-direct {v1}, Lcom/mob/commons/m$a;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private b(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 8
    invoke-static {}, Lcom/mob/commons/m;->a()Lcom/mob/commons/m;

    move-result-object v0

    new-instance v7, Lcom/mob/commons/m$a$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p3

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/mob/commons/m$a$1;-><init>(Lcom/mob/commons/m$a;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v7}, Lcom/mob/commons/m;->a(Lcom/mob/commons/m;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/mob/commons/m$c;->a()Lcom/mob/commons/m$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/commons/m$c;->run()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/mob/commons/m$a;->a:[Lcom/mob/commons/m$a;

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 3
    :try_start_1
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 4
    aput-object p0, v0, v1

    .line 5
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
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


# virtual methods
.method public a(IILjava/lang/String;Ljava/lang/String;)Lcom/mob/commons/m$a;
    .locals 0

    .line 2
    iput p1, p0, Lcom/mob/commons/m$a;->b:I

    .line 3
    iput p2, p0, Lcom/mob/commons/m$a;->c:I

    .line 4
    iput-object p3, p0, Lcom/mob/commons/m$a;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/mob/commons/m$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/mob/commons/m$a;->b:I

    iget v1, p0, Lcom/mob/commons/m$a;->c:I

    iget-object v2, p0, Lcom/mob/commons/m$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/commons/m$a;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mob/commons/m$a;->b(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/mob/commons/m$a;->c()V

    return-void

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/mob/commons/m$a;->c()V

    .line 4
    throw v0
.end method
