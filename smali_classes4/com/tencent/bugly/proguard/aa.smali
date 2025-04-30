.class public final Lcom/tencent/bugly/proguard/aa;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/lang/String;

.field private c:J

.field private final d:J

.field private e:Z

.field private f:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/bugly/proguard/aa;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lcom/tencent/bugly/proguard/aa;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    iput-wide p3, p0, Lcom/tencent/bugly/proguard/aa;->d:J

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aa;->f:J

    .line 4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(J)V
    .locals 0

    const-wide p1, 0x7fffffffffffffffL

    .line 5
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    return-void
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aa;->f:J

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aa;->f:J

    sub-long/2addr v0, v2

    .line 3
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aa;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aa;->e:Z

    .line 2
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aa;->d:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aa;->c:J

    return-void
.end method
