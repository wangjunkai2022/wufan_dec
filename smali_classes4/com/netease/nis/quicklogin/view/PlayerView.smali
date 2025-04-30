.class public Lcom/netease/nis/quicklogin/view/PlayerView;
.super Landroid/widget/VideoView;
.source "PlayerView.java"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->a:Z

    .line 3
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/PlayerView;->a()V

    return-void
.end method

.method private a()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/PlayerView;->d()V

    .line 3
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/PlayerView;->b()V

    .line 4
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/PlayerView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/view/PlayerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->a:Z

    return p0
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/PlayerView$b;

    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/PlayerView$b;-><init>(Lcom/netease/nis/quicklogin/view/PlayerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/PlayerView$c;

    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/PlayerView$c;-><init>(Lcom/netease/nis/quicklogin/view/PlayerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method private d()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/view/PlayerView$a;

    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/view/PlayerView$a;-><init>(Lcom/netease/nis/quicklogin/view/PlayerView;)V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->b:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/VideoView;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/widget/VideoView;->resolveSize(II)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/VideoView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/widget/VideoView;->resolveSize(II)I

    move-result p2

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLoadingImageResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->b:I

    return-void
.end method

.method public setLoadingImageResId(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setLoopPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/view/PlayerView;->a:Z

    return-void
.end method
