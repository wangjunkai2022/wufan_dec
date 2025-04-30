.class Lcom/facebook/rebound/a$a;
.super Lcom/facebook/rebound/n;
.source "AndroidSpringLooperFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final b:Landroid/view/Choreographer;

.field private final c:Landroid/view/Choreographer$FrameCallback;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/rebound/n;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer;

    .line 3
    new-instance p1, Lcom/facebook/rebound/a$a$a;

    invoke-direct {p1, p0}, Lcom/facebook/rebound/a$a$a;-><init>(Lcom/facebook/rebound/a$a;)V

    iput-object p1, p0, Lcom/facebook/rebound/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method static synthetic d(Lcom/facebook/rebound/a$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/rebound/a$a;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/facebook/rebound/a$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/rebound/a$a;->e:J

    return-wide v0
.end method

.method static synthetic f(Lcom/facebook/rebound/a$a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/facebook/rebound/a$a;->e:J

    return-wide p1
.end method

.method static synthetic g(Lcom/facebook/rebound/a$a;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic h(Lcom/facebook/rebound/a$a;)Landroid/view/Choreographer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer;

    return-object p0
.end method

.method public static i()Lcom/facebook/rebound/a$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/rebound/a$a;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/a$a;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/rebound/a$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/facebook/rebound/a$a;->d:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rebound/a$a;->e:J

    .line 4
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 5
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/facebook/rebound/a$a;->d:Z

    .line 2
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->b:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/facebook/rebound/a$a;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
