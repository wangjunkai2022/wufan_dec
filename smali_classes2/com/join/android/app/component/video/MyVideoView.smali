.class public Lcom/join/android/app/component/video/MyVideoView;
.super Landroid/view/SurfaceView;
.source "MyVideoView.java"

# interfaces
.implements Lcom/join/android/app/component/video/MediaController$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/MyVideoView$h;,
        Lcom/join/android/app/component/video/MyVideoView$g;
    }
.end annotation


# instance fields
.field A:Landroid/view/SurfaceHolder$Callback;

.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/net/Uri;

.field private d:I

.field private e:Landroid/view/SurfaceHolder;

.field public f:Landroid/media/MediaPlayer;

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/join/android/app/component/video/MediaController;

.field private m:Landroid/media/MediaPlayer$OnCompletionListener;

.field private n:Landroid/media/MediaPlayer$OnPreparedListener;

.field private o:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private p:I

.field private q:Landroid/media/MediaPlayer$OnErrorListener;

.field private r:Z

.field private s:I

.field private t:Lcom/join/android/app/component/video/MyVideoView$g;

.field private u:Lcom/join/android/app/component/video/MyVideoView$h;

.field v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field w:Landroid/media/MediaPlayer$OnPreparedListener;

.field private x:Landroid/media/MediaPlayer$OnCompletionListener;

.field private y:Landroid/media/MediaPlayer$OnErrorListener;

.field private z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->e:Landroid/view/SurfaceHolder;

    .line 4
    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    .line 5
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$a;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 6
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$b;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->w:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 7
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$c;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$c;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 8
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$d;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->y:Landroid/media/MediaPlayer$OnErrorListener;

    .line 9
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$e;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$e;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 10
    new-instance v0, Lcom/join/android/app/component/video/MyVideoView$f;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MyVideoView$f;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->A:Landroid/view/SurfaceHolder$Callback;

    .line 11
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Landroid/content/Context;

    .line 12
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->C()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/component/video/MyVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->C()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->a:Ljava/lang/String;

    const/4 p2, 0x0

    .line 18
    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->e:Landroid/view/SurfaceHolder;

    .line 19
    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    .line 20
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$a;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$a;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 21
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$b;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$b;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->w:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 22
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$c;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$c;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 23
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$d;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$d;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->y:Landroid/media/MediaPlayer$OnErrorListener;

    .line 24
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$e;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$e;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 25
    new-instance p2, Lcom/join/android/app/component/video/MyVideoView$f;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MyVideoView$f;-><init>(Lcom/join/android/app/component/video/MyVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MyVideoView;->A:Landroid/view/SurfaceHolder$Callback;

    .line 26
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->C()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/android/app/component/video/MediaController;->setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    invoke-virtual {v0, v1}, Lcom/join/android/app/component/video/MediaController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private C()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/join/android/app/component/video/MyVideoView;->h:I

    .line 2
    iput v0, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->A:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z

    return-void
.end method

.method private F()V
    .locals 4

    const-string v0, "Unable to open content: "

    .line 1
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->e:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "command"

    const-string v3, "pause"

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 7
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    .line 9
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    .line 10
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->w:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 11
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    const/4 v2, -0x1

    .line 13
    iput v2, p0, Lcom/join/android/app/component/video/MyVideoView;->d:I

    .line 14
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/join/android/app/component/video/MyVideoView;->x:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 15
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/join/android/app/component/video/MyVideoView;->y:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 16
    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/join/android/app/component/video/MyVideoView;->z:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 17
    iput v1, p0, Lcom/join/android/app/component/video/MyVideoView;->p:I

    .line 18
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 19
    iget-object v3, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/join/android/app/component/video/MyVideoView;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 21
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 22
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 23
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 24
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->A()V

    .line 25
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 26
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void

    .line 27
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    return-void
.end method

.method private J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->hide()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->show()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->h:I

    return p0
.end method

.method static synthetic c(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->h:I

    return p1
.end method

.method static synthetic d(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    return p0
.end method

.method static synthetic e(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic f(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    return p1
.end method

.method static synthetic g(Lcom/join/android/app/component/video/MyVideoView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->q:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic i(Lcom/join/android/app/component/video/MyVideoView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->p:I

    return p1
.end method

.method static synthetic k(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->o:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic l(Lcom/join/android/app/component/video/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->e:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic m(Lcom/join/android/app/component/video/MyVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->F()V

    return-void
.end method

.method static synthetic n(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MyVideoView$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->t:Lcom/join/android/app/component/video/MyVideoView$g;

    return-object p0
.end method

.method static synthetic o(Lcom/join/android/app/component/video/MyVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    return p0
.end method

.method static synthetic p(Lcom/join/android/app/component/video/MyVideoView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    return p1
.end method

.method static synthetic q(Lcom/join/android/app/component/video/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic r(Lcom/join/android/app/component/video/MyVideoView;)Lcom/join/android/app/component/video/MediaController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    return-object p0
.end method

.method static synthetic s(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->j:I

    return p0
.end method

.method static synthetic t(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->j:I

    return p1
.end method

.method static synthetic u(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->k:I

    return p0
.end method

.method static synthetic v(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->k:I

    return p1
.end method

.method static synthetic w(Lcom/join/android/app/component/video/MyVideoView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/android/app/component/video/MyVideoView;->s:I

    return p0
.end method

.method static synthetic x(Lcom/join/android/app/component/video/MyVideoView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->s:I

    return p1
.end method

.method static synthetic y(Lcom/join/android/app/component/video/MyVideoView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MyVideoView;->r:Z

    return p0
.end method

.method static synthetic z(Lcom/join/android/app/component/video/MyVideoView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->r:Z

    return p1
.end method


# virtual methods
.method public B()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->u:Lcom/join/android/app/component/video/MyVideoView$h;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v3}, Lcom/join/android/app/component/video/MyVideoView$h;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1, v3}, Lcom/join/android/app/component/video/MediaController;->setFullScreen(Z)V

    .line 7
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 8
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->u:Lcom/join/android/app/component/video/MyVideoView$h;

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v1, v2}, Lcom/join/android/app/component/video/MyVideoView$h;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/video/MediaController;->setFullScreen(Z)V

    .line 13
    :cond_4
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 14
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 15
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 17
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->u()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    return v0
.end method

.method public G()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public H(II)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    .line 6
    iput-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->B()V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->D()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/MediaController;->setFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->p:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz v1, :cond_1

    .line 2
    iget v1, p0, Lcom/join/android/app/component/video/MyVideoView;->d:I

    if-lez v1, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/join/android/app/component/video/MyVideoView;->d:I

    return v0

    :cond_1
    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/join/android/app/component/video/MyVideoView;->d:I

    return v0
.end method

.method public getMediaController()Lcom/join/android/app/component/video/MediaController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->h:I

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_4

    const/16 v0, 0x52

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz v1, :cond_4

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_2

    const/16 v1, 0x55

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x56

    if-ne p1, v1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->show()V

    goto :goto_2

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->J()V

    goto :goto_2

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->pause()V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->show()V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->start()V

    .line 10
    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MediaController;->hide()V

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 11
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->h:I

    invoke-static {v0, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p1

    .line 2
    iget v0, p0, Lcom/join/android/app/component/video/MyVideoView;->i:I

    invoke-static {v0, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->J()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->J()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->r:Z

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->s:I

    :goto_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MyVideoView;->D()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MyVideoView;->a(Z)V

    return-void
.end method

.method public setMediaController(Lcom/join/android/app/component/video/MediaController;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/android/app/component/video/MediaController;->hide()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->l:Lcom/join/android/app/component/video/MediaController;

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->A()V

    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    return-void
.end method

.method public setMySizeChangeLinstener(Lcom/join/android/app/component/video/MyVideoView$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->t:Lcom/join/android/app/component/video/MyVideoView$g;

    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->o:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->q:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setScreenChangedListener(Lcom/join/android/app/component/video/MyVideoView$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->u:Lcom/join/android/app/component/video/MyVideoView$h;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MyVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoScale(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MyVideoView;->c:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MyVideoView;->r:Z

    .line 3
    iput p1, p0, Lcom/join/android/app/component/video/MyVideoView;->s:I

    .line 4
    invoke-direct {p0}, Lcom/join/android/app/component/video/MyVideoView;->F()V

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MyVideoView;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/join/android/app/component/video/MyVideoView;->g:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->r:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MyVideoView;->r:Z

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestFocus()Z

    return-void
.end method
