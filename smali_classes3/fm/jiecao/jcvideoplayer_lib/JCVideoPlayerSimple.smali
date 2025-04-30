.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;
.super Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.source "JCVideoPlayerSimple.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private W()V
    .locals 2

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_error_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public V()V
    .locals 2

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_shrink:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_enlarge:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_base:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->fullscreen:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Play video first"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Play video first"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerSimple;->V()V

    .line 3
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
