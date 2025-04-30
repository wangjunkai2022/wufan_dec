.class public Lcom/facebook/fresco/animation/backend/c;
.super Lcom/facebook/fresco/animation/backend/b;
.source "AnimationBackendDelegateWithInactivityCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/backend/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/fresco/animation/backend/a;",
        ">",
        "Lcom/facebook/fresco/animation/backend/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final p:J = 0x7d0L
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field

.field static final q:J = 0x3e8L
    .annotation build Lcom/facebook/common/internal/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final h:Lcom/facebook/common/time/c;

.field private final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:Lcom/facebook/fresco/animation/backend/c$b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final o:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/fresco/animation/backend/c$b;Lcom/facebook/common/time/c;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/animation/backend/c$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/fresco/animation/backend/c$b;",
            "Lcom/facebook/common/time/c;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/fresco/animation/backend/b;-><init>(Lcom/facebook/fresco/animation/backend/a;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/backend/c;->j:Z

    const-wide/16 v0, 0x7d0

    .line 3
    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->l:J

    const-wide/16 v0, 0x3e8

    .line 4
    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->m:J

    .line 5
    new-instance p1, Lcom/facebook/fresco/animation/backend/c$a;

    invoke-direct {p1, p0}, Lcom/facebook/fresco/animation/backend/c$a;-><init>(Lcom/facebook/fresco/animation/backend/c;)V

    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/c;->o:Ljava/lang/Runnable;

    .line 6
    iput-object p2, p0, Lcom/facebook/fresco/animation/backend/c;->n:Lcom/facebook/fresco/animation/backend/c$b;

    .line 7
    iput-object p3, p0, Lcom/facebook/fresco/animation/backend/c;->h:Lcom/facebook/common/time/c;

    .line 8
    iput-object p4, p0, Lcom/facebook/fresco/animation/backend/c;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic n(Lcom/facebook/fresco/animation/backend/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/facebook/fresco/animation/backend/c;->j:Z

    return p1
.end method

.method static synthetic o(Lcom/facebook/fresco/animation/backend/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/c;->v()Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lcom/facebook/fresco/animation/backend/c;)Lcom/facebook/fresco/animation/backend/c$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/backend/c;->n:Lcom/facebook/fresco/animation/backend/c$b;

    return-object p0
.end method

.method static synthetic q(Lcom/facebook/fresco/animation/backend/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/c;->w()V

    return-void
.end method

.method public static r(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/common/time/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/fresco/animation/backend/a;",
            ":",
            "Lcom/facebook/fresco/animation/backend/c$b;",
            ">(TT;",
            "Lcom/facebook/common/time/c;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/facebook/fresco/animation/backend/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/animation/backend/c$b;

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/fresco/animation/backend/c;->s(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/fresco/animation/backend/c$b;Lcom/facebook/common/time/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;

    move-result-object p0

    return-object p0
.end method

.method public static s(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/fresco/animation/backend/c$b;Lcom/facebook/common/time/c;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/facebook/fresco/animation/backend/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/fresco/animation/backend/a;",
            ">(TT;",
            "Lcom/facebook/fresco/animation/backend/c$b;",
            "Lcom/facebook/common/time/c;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lcom/facebook/fresco/animation/backend/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/backend/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/fresco/animation/backend/c;-><init>(Lcom/facebook/fresco/animation/backend/a;Lcom/facebook/fresco/animation/backend/c$b;Lcom/facebook/common/time/c;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method private v()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/c;->h:Lcom/facebook/common/time/c;

    invoke-interface {v0}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/c;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/c;->l:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized w()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/backend/c;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/backend/c;->j:Z

    .line 3
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/c;->i:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/facebook/fresco/animation/backend/c;->o:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/facebook/fresco/animation/backend/c;->m:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public i(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/backend/c;->h:Lcom/facebook/common/time/c;

    invoke-interface {v0}, Lcom/facebook/common/time/c;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->k:J

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/fresco/animation/backend/b;->i(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    move-result p1

    .line 3
    invoke-direct {p0}, Lcom/facebook/fresco/animation/backend/c;->w()V

    return p1
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->m:J

    return-wide v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/backend/c;->l:J

    return-wide v0
.end method

.method public x(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/backend/c;->m:J

    return-void
.end method

.method public y(Lcom/facebook/fresco/animation/backend/c$b;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/backend/c$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/backend/c;->n:Lcom/facebook/fresco/animation/backend/c$b;

    return-void
.end method

.method public z(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/backend/c;->l:J

    return-void
.end method
