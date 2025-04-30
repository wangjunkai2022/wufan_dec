.class public Lcom/join/android/app/component/video/MediaController;
.super Landroid/widget/MediaController;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/MediaController$e;,
        Lcom/join/android/app/component/video/MediaController$f;,
        Lcom/join/android/app/component/video/MediaController$g;
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field private static final B:I = 0x2

.field private static final z:I = 0xbb8


# instance fields
.field private a:Lcom/join/android/app/component/video/MediaController$e;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/PopupWindow;

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/SeekBar;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageButton;

.field private k:Lcom/join/android/app/component/video/OutlineTextView;

.field private l:J

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/media/AudioManager;

.field private t:Lcom/join/android/app/component/video/MediaController$g;

.field private u:Lcom/join/android/app/component/video/MediaController$f;

.field private v:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private w:Landroid/view/View$OnClickListener;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    .line 13
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    .line 14
    new-instance v0, Lcom/join/android/app/component/video/MediaController$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MediaController$a;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->v:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/join/android/app/component/video/MediaController$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MediaController$b;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/view/View$OnClickListener;

    .line 16
    new-instance v0, Lcom/join/android/app/component/video/MediaController$c;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MediaController$c;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->x:Landroid/view/View$OnClickListener;

    .line 17
    new-instance v0, Lcom/join/android/app/component/video/MediaController$d;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/MediaController$d;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->y:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 18
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/MediaController;->r(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->t()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    .line 3
    iput-boolean p2, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    .line 4
    new-instance p2, Lcom/join/android/app/component/video/MediaController$a;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MediaController$a;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MediaController;->v:Landroid/os/Handler;

    .line 5
    new-instance p2, Lcom/join/android/app/component/video/MediaController$b;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MediaController$b;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/view/View$OnClickListener;

    .line 6
    new-instance p2, Lcom/join/android/app/component/video/MediaController$c;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MediaController$c;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MediaController;->x:Landroid/view/View$OnClickListener;

    .line 7
    new-instance p2, Lcom/join/android/app/component/video/MediaController$d;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/MediaController$d;-><init>(Lcom/join/android/app/component/video/MediaController;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/MediaController;->y:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 8
    iput-object p0, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    .line 10
    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/MediaController;->r(Landroid/content/Context;)Z

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/component/video/MediaController;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/join/android/app/component/video/MediaController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    return p0
.end method

.method static synthetic c(Lcom/join/android/app/component/video/MediaController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/component/video/MediaController;->l:J

    return-wide v0
.end method

.method static synthetic d(Lcom/join/android/app/component/video/MediaController;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    return p1
.end method

.method static synthetic e(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/MediaController$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    return-object p0
.end method

.method static synthetic f(Lcom/join/android/app/component/video/MediaController;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/join/android/app/component/video/MediaController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MediaController;->m:Z

    return p0
.end method

.method static synthetic h(Lcom/join/android/app/component/video/MediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    return-void
.end method

.method static synthetic i(Lcom/join/android/app/component/video/MediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->p()V

    return-void
.end method

.method static synthetic j(Lcom/join/android/app/component/video/MediaController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->o()V

    return-void
.end method

.method static synthetic k(Lcom/join/android/app/component/video/MediaController;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic l(Lcom/join/android/app/component/video/MediaController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    return p0
.end method

.method static synthetic m(Lcom/join/android/app/component/video/MediaController;)Landroid/media/AudioManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/MediaController;->k:Lcom/join/android/app/component/video/OutlineTextView;

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->o:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    iget-boolean v2, p0, Lcom/join/android/app/component/video/MediaController;->o:Z

    invoke-interface {v1, v2}, Lcom/join/android/app/component/video/MediaController$e;->a(Z)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->x()V

    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->pause()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->start()V

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    return-void
.end method

.method private r(Landroid/content/Context;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    const-string v0, "audio"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->s:Landroid/media/AudioManager;

    const/4 p1, 0x1

    return p1
.end method

.method private s(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediacontroller_play_pause"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediacontroller_seekbar"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    .line 5
    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->y:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediacontroller_time_total"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->h:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediacontroller_time_current"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->i:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediacontroller_full_screen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->j:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/high16 v0, 0x1030000

    .line 5
    iput v0, p0, Lcom/join/android/app/component/video/MediaController;->d:I

    return-void
.end method

.method private w()J
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/join/android/app/component/video/MediaController;->n:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->getDuration()I

    move-result v0

    int-to-long v5, v0

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    cmp-long v7, v5, v1

    if-lez v7, :cond_1

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, v3

    .line 5
    div-long/2addr v1, v5

    long-to-int v2, v1

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->getBufferPercentage()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/widget/SeekBar;

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 9
    :cond_2
    iput-wide v5, p0, Lcom/join/android/app/component/video/MediaController;->l:J

    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/c;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 13
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/c;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-wide v3

    :cond_5
    :goto_0
    return-wide v1
.end method

.method private y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$e;->isPlaying()Z

    move-result v0

    const-string v1, "drawable"

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mediacontroller_pause"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mediacontroller_play"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/16 v2, 0xbb8

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->p()V

    .line 4
    invoke-virtual {p0, v2}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->r:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_1
    return v3

    :cond_2
    const/16 v1, 0x56

    if-ne v0, v1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    invoke-interface {p1}, Lcom/join/android/app/component/video/MediaController$e;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    invoke-interface {p1}, Lcom/join/android/app/component/video/MediaController$e;->pause()V

    .line 9
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    :cond_3
    return v3

    :cond_4
    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x52

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, v2}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 11
    invoke-super {p0, p1}, Landroid/widget/MediaController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 12
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->hide()V

    return v3
.end method

.method public hide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->v:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/MediaController;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "MediaController already removed"

    .line 7
    invoke-static {v2, v1}, Lcom/join/mgps/Util/u0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_0
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->m:Z

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->u:Lcom/join/android/app/component/video/MediaController$f;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$f;->onHidden()V

    :cond_2
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->m:Z

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/android/app/component/video/MediaController;->s(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->onFinishInflate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/16 p1, 0xbb8

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/16 p1, 0xbb8

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "setAnchorView"

    aput-object v1, p1, v0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFromXml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/MediaController;->removeAllViews()V

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->v()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    .line 6
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->v()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    .line 11
    :cond_1
    iget-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0}, Landroid/widget/MediaController;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    instance-of v1, p1, Landroid/widget/RelativeLayout;

    const v2, 0x7f070c70

    if-eqz v1, :cond_3

    .line 15
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 16
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/MediaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_5

    .line 18
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xc

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 21
    :cond_3
    instance-of v1, p1, Landroid/widget/LinearLayout;

    const/16 v3, 0x50

    if-eqz v1, :cond_4

    .line 22
    check-cast p1, Landroid/widget/LinearLayout;

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0}, Landroid/widget/MediaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_5

    .line 25
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 26
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 27
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 28
    :cond_4
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    .line 29
    check-cast p1, Landroid/widget/FrameLayout;

    .line 30
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/MediaController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_5

    .line 32
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 33
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 34
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 35
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/join/android/app/component/video/MediaController;->s(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/MediaController;->postInvalidate()V

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/MediaController;->d:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->g:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setEnabled(Z)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->o:Z

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->x()V

    return-void
.end method

.method public setInfoView(Lcom/join/android/app/component/video/OutlineTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->k:Lcom/join/android/app/component/video/OutlineTextView;

    return-void
.end method

.method public setInstantSeeking(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/MediaController;->p:Z

    return-void
.end method

.method public setMediaPlayer(Lcom/join/android/app/component/video/MediaController$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->a:Lcom/join/android/app/component/video/MediaController$e;

    .line 2
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->x()V

    return-void
.end method

.method public setOnHiddenListener(Lcom/join/android/app/component/video/MediaController$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->u:Lcom/join/android/app/component/video/MediaController$f;

    return-void
.end method

.method public setOnShownListener(Lcom/join/android/app/component/video/MediaController$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController;->t:Lcom/join/android/app/component/video/MediaController$g;

    return-void
.end method

.method public setWindowLayoutType()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setWindowLayoutType"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x3eb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "setWindowLayoutType"

    .line 5
    invoke-static {v1, v0}, Lcom/join/mgps/Util/u0;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    const/16 v0, 0xbb8

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    return-void
.end method

.method public show(I)V
    .locals 9

    .line 2
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->m:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->r:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->q:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Landroid/widget/MediaController;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 7
    iget-object v4, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v0, v3

    aget v6, v0, v2

    aget v7, v0, v3

    iget-object v8, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v0, v0, v2

    iget-object v8, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v0, v8

    invoke-direct {v4, v5, v6, v7, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/join/android/app/component/video/MediaController;->d:I

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->setWindowLayoutType()V

    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->c:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/join/android/app/component/video/MediaController;->e:Landroid/view/View;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v3, v6, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 12
    :goto_0
    iput-boolean v2, p0, Lcom/join/android/app/component/video/MediaController;->m:Z

    .line 13
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->t:Lcom/join/android/app/component/video/MediaController$g;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Lcom/join/android/app/component/video/MediaController$g;->onShown()V

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/join/android/app/component/video/MediaController;->y()V

    .line 16
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MediaController;->x()V

    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_3

    .line 18
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->v:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->v:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/MediaController;->o:Z

    return v0
.end method

.method protected v()Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediacontroller"

    const-string v4, "layout"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->f:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController;->j:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/join/android/app/component/video/MediaController;->o:Z

    const-string v2, "drawable"

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mediacontroller_fullscreen_out"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/MediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mediacontroller_fullscreen_in"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
