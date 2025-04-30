.class public abstract Lcom/papa/gsyvideoplayer/c;
.super Ljava/lang/Object;
.source "GSYVideoBaseManager.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Lcom/papa/gsyvideoplayer/cache/b$a;
.implements Lcom/papa/gsyvideoplayer/video/base/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/c$i;
    }
.end annotation


# static fields
.field public static t:Ljava/lang/String; = "GSYVideoBaseManager"

.field protected static final u:I = 0x0

.field protected static final v:I = 0x1

.field protected static final w:I = 0x2

.field protected static final x:I = 0x3

.field protected static final y:I = -0xc0


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/papa/gsyvideoplayer/c$i;

.field protected c:Landroid/os/Handler;

.field protected d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc2/a;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc2/a;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lcom/papa/gsyvideoplayer/player/b;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/c;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/String;

.field protected i:Lcom/papa/gsyvideoplayer/player/c;

.field protected j:Lcom/papa/gsyvideoplayer/cache/b;

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:Z

.field protected r:Z

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    const/16 v0, -0x16

    .line 5
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->n:I

    const/16 v0, 0x1f40

    .line 6
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->p:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/c;->q:Z

    .line 8
    new-instance v0, Lcom/papa/gsyvideoplayer/c$h;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/c$h;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->s:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic C(Lcom/papa/gsyvideoplayer/c;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/c;->R(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic D(Lcom/papa/gsyvideoplayer/c;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/c;->U(Landroid/os/Message;)V

    return-void
.end method

.method private R(Landroid/os/Message;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 2
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->release()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->M()Lcom/papa/gsyvideoplayer/player/c;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    move-result-object v0

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p0}, Lcom/papa/gsyvideoplayer/cache/b;->i(Lcom/papa/gsyvideoplayer/cache/b$a;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    instance-of v1, v0, Lcom/papa/gsyvideoplayer/player/a;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Lcom/papa/gsyvideoplayer/player/a;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c;->f:Lcom/papa/gsyvideoplayer/player/b;

    .line 10
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/player/a;->g(Lcom/papa/gsyvideoplayer/player/b;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/papa/gsyvideoplayer/c;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/papa/gsyvideoplayer/player/c;->i(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/papa/gsyvideoplayer/cache/b;)V

    .line 12
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/c;->q:Z

    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/player/c;->j()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p1

    .line 14
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 15
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x1

    .line 16
    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 17
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 18
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 19
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 20
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 21
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 22
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private U(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/player/c;->m()V

    :cond_0
    return-void
.end method

.method private a0(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/player/c;->l(Landroid/os/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/cache/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->m:I

    return-void
.end method

.method protected E()V
    .locals 2

    const-string v0, "cancelTimeOutBuffer"

    .line 1
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/c;->r:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public F(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/papa/gsyvideoplayer/c;->G(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public G(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/cache/b;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/cache/b;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public H(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->a:Landroid/content/Context;

    return-void
.end method

.method protected I()Lcom/papa/gsyvideoplayer/cache/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/a;->a()Lcom/papa/gsyvideoplayer/cache/b;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/papa/gsyvideoplayer/cache/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    return-object v0
.end method

.method public K()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->g:Ljava/util/List;

    return-object v0
.end method

.method protected M()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/player/e;->a()Lcom/papa/gsyvideoplayer/player/c;

    move-result-object v0

    return-object v0
.end method

.method public N()Lcom/papa/gsyvideoplayer/player/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->f:Lcom/papa/gsyvideoplayer/player/b;

    return-object v0
.end method

.method public O()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->p:I

    return v0
.end method

.method protected P()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/c$i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/papa/gsyvideoplayer/c$i;-><init>(Lcom/papa/gsyvideoplayer/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->b:Lcom/papa/gsyvideoplayer/c$i;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    return-void
.end method

.method public Q(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->a:Landroid/content/Context;

    return-void
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/c;->q:Z

    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/c;->r:Z

    return v0
.end method

.method protected V(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->b:Lcom/papa/gsyvideoplayer/c$i;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public W(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/c;->q:Z

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/player/c;->k(Z)V

    :cond_0
    return-void
.end method

.method public X(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->g:Ljava/util/List;

    return-void
.end method

.method public Y(Lcom/papa/gsyvideoplayer/player/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->f:Lcom/papa/gsyvideoplayer/player/b;

    return-void
.end method

.method public Z(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->p:I

    .line 2
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/c;->r:Z

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/c;->G(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b0()V
    .locals 4

    const-string v0, "startTimeOutBuffer"

    .line 1
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c;->s:Ljava/lang/Runnable;

    iget v2, p0, Lcom/papa/gsyvideoplayer/c;->p:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public c(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/player/c;->c(FZ)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/cache/b;->e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/player/c;->f(FZ)V

    :cond_0
    return-void
.end method

.method public g(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/papa/gsyvideoplayer/c;->o:I

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getVideoHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getVideoSarDen()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getVideoSarNum()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getVideoWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->h()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i(Lc2/a;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->e:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->e:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/Surface;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/c;->a0(Landroid/os/Message;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->m:I

    return v0
.end method

.method public m(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Landroid/os/Message;->what:I

    .line 4
    new-instance v2, Lcom/papa/gsyvideoplayer/model/a;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/papa/gsyvideoplayer/model/a;-><init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V

    .line 5
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/c;->V(Landroid/os/Message;)V

    .line 7
    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/c;->r:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->b0()V

    :cond_1
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->n:I

    return v0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    new-instance v0, Lcom/papa/gsyvideoplayer/c$c;

    invoke-direct {v0, p0, p2}, Lcom/papa/gsyvideoplayer/c$c;-><init>(Lcom/papa/gsyvideoplayer/c;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    new-instance v0, Lcom/papa/gsyvideoplayer/c$b;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/c$b;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    new-instance v0, Lcom/papa/gsyvideoplayer/c$e;

    invoke-direct {v0, p0, p2, p3}, Lcom/papa/gsyvideoplayer/c$e;-><init>(Lcom/papa/gsyvideoplayer/c;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    new-instance v0, Lcom/papa/gsyvideoplayer/c$f;

    invoke-direct {v0, p0, p2, p3}, Lcom/papa/gsyvideoplayer/c$f;-><init>(Lcom/papa/gsyvideoplayer/c;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    new-instance v0, Lcom/papa/gsyvideoplayer/c$a;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/c$a;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    new-instance v0, Lcom/papa/gsyvideoplayer/c$d;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/c$d;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p2

    iput p2, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 2
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    new-instance p2, Lcom/papa/gsyvideoplayer/c$g;

    invoke-direct {p2, p0}, Lcom/papa/gsyvideoplayer/c$g;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public p(Lc2/a;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->d:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->d:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->pause()V

    :cond_0
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public r()Lc2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/a;

    return-object v0
.end method

.method public s(Landroid/view/Surface;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/c;->V(Landroid/os/Message;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/player/c;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->stop()V

    :cond_0
    return-void
.end method

.method public t()I
    .locals 1

    const/16 v0, 0x2711

    return v0
.end method

.method public u(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    return-void
.end method

.method public v()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    return-object v0
.end method

.method public w(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1
    invoke-virtual/range {v0 .. v7}, Lcom/papa/gsyvideoplayer/c;->m(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public x(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->n:I

    return-void
.end method

.method public y()Lc2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->d:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc2/a;

    return-object v0
.end method

.method public z()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/c;->V(Landroid/os/Message;)V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    const/16 v0, -0x16

    .line 5
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->n:I

    return-void
.end method
