.class public Lcom/mob/mgs/impl/f;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/mob/mgs/impl/f;


# instance fields
.field private volatile b:Z

.field private volatile c:Ljava/lang/String;

.field private d:[B

.field private volatile e:Z

.field private volatile f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mob/mgs/impl/f;->b:Z

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/mob/mgs/impl/f;->d:[B

    return-void
.end method

.method public static a()Lcom/mob/mgs/impl/f;
    .locals 2

    .line 2
    sget-object v0, Lcom/mob/mgs/impl/f;->a:Lcom/mob/mgs/impl/f;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/mob/mgs/impl/f;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/mob/mgs/impl/f;->a:Lcom/mob/mgs/impl/f;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/mob/mgs/impl/f;

    invoke-direct {v1}, Lcom/mob/mgs/impl/f;-><init>()V

    sput-object v1, Lcom/mob/mgs/impl/f;->a:Lcom/mob/mgs/impl/f;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/mgs/impl/f;->a:Lcom/mob/mgs/impl/f;

    return-object v0
.end method

.method static synthetic a(Lcom/mob/mgs/impl/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/mgs/impl/f;->b:Z

    return p1
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mob/mgs/impl/f;->b:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mob/mgs/impl/f$1;

    invoke-direct {v0, p0}, Lcom/mob/mgs/impl/f$1;-><init>(Lcom/mob/mgs/impl/f;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "MgsGlobal already initialized"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v0

    const-string v1, "WARNING: getDuidQuick got null!"

    invoke-virtual {v0, v1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/mgs/impl/f;->e:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->d:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Lcom/mob/commons/e;->b(Lcom/mob/commons/MobProduct;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v2, Lcom/mob/tools/network/NetCommunicator;->KEY_DUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    const-string v2, "isModified"

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mob/mgs/impl/f;->e:Z

    const-string v2, "duidPrevious"

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mob/mgs/impl/f;->f:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MC Global -> duid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", duidPre: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mob/mgs/impl/f;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isModified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/mob/mgs/impl/f;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mob/mgs/impl/f;->c:Ljava/lang/String;

    return-object v0
.end method
