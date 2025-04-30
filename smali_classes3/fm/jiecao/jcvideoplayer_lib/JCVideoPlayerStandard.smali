.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;
.super Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.source "JCVideoPlayerStandard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;
    }
.end annotation


# static fields
.field protected static p1:Ljava/util/Timer;


# instance fields
.field public O0:Landroid/widget/ImageView;

.field public P0:Landroid/widget/ProgressBar;

.field public Q0:Landroid/widget/ProgressBar;

.field public R0:Landroid/widget/TextView;

.field public S0:Landroid/widget/ImageView;

.field public T0:Landroid/widget/ImageView;

.field public U0:Landroid/widget/LinearLayout;

.field public V0:Landroid/widget/ImageView;

.field public W0:Landroid/widget/TextView;

.field public X0:Landroid/widget/TextView;

.field public Y0:Landroid/widget/TextView;

.field public Z0:Landroid/widget/PopupWindow;

.field protected a1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

.field private b1:Z

.field private c1:Landroid/content/BroadcastReceiver;

.field protected d1:Landroid/app/Dialog;

.field protected e1:Landroid/widget/ProgressBar;

.field protected f1:Landroid/widget/TextView;

.field protected g1:Landroid/widget/TextView;

.field protected h1:Landroid/widget/ImageView;

.field protected i1:Landroid/app/Dialog;

.field protected j1:Landroid/widget/ProgressBar;

.field protected k1:Landroid/widget/TextView;

.field protected l1:Landroid/widget/ImageView;

.field protected m1:Landroid/app/Dialog;

.field protected n1:Landroid/widget/ProgressBar;

.field protected o1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->b1:Z

    .line 3
    new-instance p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    invoke-direct {p1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->c1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->b1:Z

    .line 6
    new-instance p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;

    invoke-direct {p1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$e;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->c1:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic V(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->c1:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic W(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->b1:Z

    return p1
.end method


# virtual methods
.method public A()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i0()V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    return-void
.end method

.method public B()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->B()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k0()V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    return-void
.end method

.method public C(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->C(II)V

    .line 2
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Q0:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public D()V
    .locals 8

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    return-void
.end method

.method public J()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J()V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public K(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->K(I)V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m1:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_dialog_brightness:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_brightness:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o1:Landroid/widget/TextView;

    .line 5
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->brightness_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n1:Landroid/widget/ProgressBar;

    .line 6
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m1:Landroid/app/Dialog;

    .line 7
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    const/16 p1, 0x64

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n1:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m0()V

    return-void
.end method

.method public L(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->L(FLjava/lang/String;ILjava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d1:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_dialog_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->duration_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e1:Landroid/widget/ProgressBar;

    .line 5
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_current:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f1:Landroid/widget/TextView;

    .line 6
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_duration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g1:Landroid/widget/TextView;

    .line 7
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->duration_image_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h1:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d1:Landroid/app/Dialog;

    .line 9
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 11
    :cond_1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e1:Landroid/widget/ProgressBar;

    if-gtz p5, :cond_2

    const/4 p3, 0x0

    goto :goto_0

    :cond_2
    mul-int/lit8 p3, p3, 0x64

    div-int/2addr p3, p5

    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 14
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h1:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_forward_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h1:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_backward_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 16
    :goto_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m0()V

    return-void
.end method

.method public N(FI)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->N(FI)V

    .line 2
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i1:Landroid/app/Dialog;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_dialog_volume:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->volume_image_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l1:Landroid/widget/ImageView;

    .line 5
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->tv_volume:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k1:Landroid/widget/TextView;

    .line 6
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->volume_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j1:Landroid/widget/ProgressBar;

    .line 7
    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i1:Landroid/app/Dialog;

    .line 8
    :cond_0
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i1:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i1:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    if-gtz p2, :cond_2

    .line 10
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l1:Landroid/widget/ImageView;

    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_close_volume:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->l1:Landroid/widget/ImageView;

    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_add_volume:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    const/16 p1, 0x64

    if-le p2, p1, :cond_3

    const/16 p2, 0x64

    goto :goto_1

    :cond_3
    if-gez p2, :cond_4

    const/4 p2, 0x0

    .line 12
    :cond_4
    :goto_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j1:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m0()V

    return-void
.end method

.method public O(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->O(I)V

    .line 2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi_confirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$b;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$b;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$string;->tips_not_wifi_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;

    invoke-direct {v1, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$c;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$d;

    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$d;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public X()V
    .locals 1

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->a1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    return-void
.end method

.method public Y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Q0:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public Z()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    :goto_0
    return-void
.end method

.method public a0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    :goto_0
    return-void
.end method

.method public b0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    :goto_0
    return-void
.end method

.method public c0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    :goto_0
    return-void
.end method

.method public d0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    :goto_0
    return-void
.end method

.method public e0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    :goto_0
    return-void
.end method

.method public f0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    :goto_0
    return-void
.end method

.method public g0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_standard:I

    return v0
.end method

.method public h0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i()V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->m1:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public i0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p0()V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j()V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d1:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k()V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i1:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public k0()V
    .locals 8

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 3
    invoke-virtual/range {v0 .. v7}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    :goto_0
    return-void
.end method

.method public l0(Landroid/view/View;)Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$style;->jc_style_dialog_progress:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x8

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x20

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x10

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, -0x2

    .line 7
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method public m(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m(Landroid/content/Context;)V

    .line 2
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->battery_time_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->U0:Landroid/widget/LinearLayout;

    .line 3
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->bottom_progress:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    .line 4
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->title:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->R0:Landroid/widget/TextView;

    .line 5
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->back:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->O0:Landroid/widget/ImageView;

    .line 6
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->thumb:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->S0:Landroid/widget/ImageView;

    .line 7
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->loading:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Q0:Landroid/widget/ProgressBar;

    .line 8
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->back_tiny:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->T0:Landroid/widget/ImageView;

    .line 9
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->battery_level:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->V0:Landroid/widget/ImageView;

    .line 10
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->video_current_time:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->W0:Landroid/widget/TextView;

    .line 11
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->retry_text:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X0:Landroid/widget/TextView;

    .line 12
    sget p1, Lfm/jiecao/jcvideoplayer_lib/R$id;->clarity:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    .line 13
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->S0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->O0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->T0:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public m0()V
    .locals 2

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j0()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h0()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d0()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f0()V

    :cond_4
    :goto_0
    return-void
.end method

.method public n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setSystemTimeAndBattery()V

    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:Ljava/util/LinkedHashMap;

    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:I

    invoke-static {v1, v2}, Lfm/jiecao/jcvideoplayer_lib/e;->e(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->j0()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->k0()V

    .line 8
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setSystemTimeAndBattery()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 9
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->h0()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->i0()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 12
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->d0()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e0()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    .line 15
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->f0()V

    goto :goto_0

    .line 17
    :cond_7
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g0()V

    :cond_8
    :goto_0
    return-void
.end method

.method public o0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p1:Ljava/util/Timer;

    .line 3
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    invoke-direct {v0, p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->a1:Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$f;

    .line 4
    sget-object v1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->p1:Ljava/util/Timer;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 3
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->thumb:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:Ljava/util/LinkedHashMap;

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:I

    invoke-static {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$string;->no_url:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 6
    :cond_0
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:Ljava/util/LinkedHashMap;

    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:I

    invoke-static {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x65

    if-nez p1, :cond_1

    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:Ljava/util/LinkedHashMap;

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:I

    .line 8
    invoke-static {p1, v1}, Lfm/jiecao/jcvideoplayer_lib/e;->d(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lfm/jiecao/jcvideoplayer_lib/e;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-boolean p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q0:Z

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->O(I)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 12
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 13
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n0()V

    goto/16 :goto_1

    .line 14
    :cond_3
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    if-ne p1, v0, :cond_4

    .line 15
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    goto/16 :goto_1

    .line 16
    :cond_4
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->back:I

    if-ne p1, v0, :cond_5

    .line 17
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    goto/16 :goto_1

    .line 18
    :cond_5
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->back_tiny:I

    if-ne p1, v0, :cond_6

    .line 19
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    goto/16 :goto_1

    .line 20
    :cond_6
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$id;->clarity:I

    if-ne p1, v0, :cond_9

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 23
    sget v0, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_clarity:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 24
    new-instance v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;

    invoke-direct {v0, p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard$a;-><init>(Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;Landroid/widget/LinearLayout;)V

    const/4 v3, 0x0

    .line 25
    :goto_0
    iget-object v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 26
    iget-object v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->E:Ljava/util/LinkedHashMap;

    invoke-static {v4, v3}, Lfm/jiecao/jcvideoplayer_lib/e;->e(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lfm/jiecao/jcvideoplayer_lib/R$layout;->jc_layout_clarity_item:I

    invoke-static {v5, v6, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 28
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 31
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:I

    if-ne v3, v4, :cond_7

    const-string v4, "#fff85959"

    .line 33
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_8
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, p1, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z0:Landroid/widget/PopupWindow;

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z0:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 37
    invoke-virtual {p1, v1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 38
    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z0:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    const/16 v5, -0x28

    const/16 v6, 0x2e

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->surface_container:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    .line 5
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    move-result v0

    .line 7
    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D:I

    mul-int/lit8 v1, v1, 0x64

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    div-int/2addr v1, v2

    .line 8
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    :cond_2
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x:Z

    if-nez v0, :cond_6

    const/16 v0, 0x66

    .line 10
    invoke-virtual {p0, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    .line 11
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->n0()V

    goto :goto_1

    .line 12
    :cond_3
    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$id;->bottom_seek_progress:I

    if-ne v0, v1, :cond_6

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->o0()V

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 16
    :cond_6
    :goto_1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->p()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    return-void
.end method

.method public p0()V
    .locals 3

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_pause_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_error_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    sget v1, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_replay_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    sget v2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_click_play_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public setAllControlsVisible(IIIIIII)V
    .locals 1

    .line 1
    iget-boolean p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a:Z

    if-nez p6, :cond_0

    iget p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-eq p6, v0, :cond_0

    const/4 p5, 0x0

    .line 2
    :cond_0
    iget-object p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n:Landroid/view/ViewGroup;

    invoke-virtual {p6, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Q0:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->S0:Landroid/widget/ImageView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setBufferProgress(I)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method public setProgressAndText(III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setProgressAndText(III)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setSystemTimeAndBattery()V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 3
    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->W0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->b1:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->c1:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public varargs setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 2
    array-length p2, p4

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->R0:Landroid/widget/TextView;

    const/4 p3, 0x0

    aget-object p4, p4, p3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-ne p2, p4, :cond_2

    .line 5
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    sget p4, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_shrink:I

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->O0:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->T0:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->U0:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p2

    if-ne p2, v0, :cond_1

    .line 10
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    iget p4, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->F:I

    invoke-static {p1, p4}, Lfm/jiecao/jcvideoplayer_lib/e;->e(Ljava/util/LinkedHashMap;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$dimen;->jc_start_button_w_h_fullscreen:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    .line 14
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->T0:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object v3, p0

    .line 15
    invoke-virtual/range {v3 .. v10}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setAllControlsVisible(IIIIIII)V

    .line 16
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->U0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 18
    :cond_4
    :goto_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$drawable;->jc_enlarge:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->O0:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->T0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lfm/jiecao/jcvideoplayer_lib/R$dimen;->jc_start_button_w_h_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y(I)V

    .line 22
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->U0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->setSystemTimeAndBattery()V

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->Z()V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    .line 4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->P0:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public w()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->w()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->b0()V

    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->c0()V

    return-void
.end method

.method public y()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->e0()V

    .line 3
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->X()V

    return-void
.end method

.method public z()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z()V

    .line 2
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayerStandard;->g0()V

    return-void
.end method
