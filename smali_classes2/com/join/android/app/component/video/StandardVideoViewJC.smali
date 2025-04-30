.class public Lcom/join/android/app/component/video/StandardVideoViewJC;
.super Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.source "StandardVideoViewJC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/StandardVideoViewJC$f;
    }
.end annotation


# static fields
.field protected static D1:Ljava/util/Timer; = null

.field public static E1:Z = true

.field private static F1:Z = true


# instance fields
.field A1:Lcom/join/mgps/customview/t;

.field private final B1:I

.field public C1:Ljava/lang/String;

.field public O0:Landroid/widget/ImageView;

.field public P0:Landroid/widget/ProgressBar;

.field public Q0:Landroid/widget/ProgressBar;

.field public R0:Landroid/widget/TextView;

.field public S0:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public T0:Landroid/widget/ImageView;

.field public U0:Landroid/widget/LinearLayout;

.field public V0:Landroid/widget/ImageView;

.field public W0:Landroid/widget/TextView;

.field public X0:Landroid/widget/TextView;

.field public Y0:Landroid/widget/TextView;

.field public Z0:Landroid/widget/PopupWindow;

.field protected a1:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

.field protected b1:Landroid/app/Dialog;

.field protected c1:Landroid/widget/ProgressBar;

.field protected d1:Landroid/widget/TextView;

.field protected e1:Landroid/widget/TextView;

.field protected f1:Landroid/widget/ImageView;

.field protected g1:Landroid/app/Dialog;

.field protected h1:Landroid/widget/ProgressBar;

.field protected i1:Landroid/widget/TextView;

.field protected j1:Landroid/widget/ImageView;

.field protected k1:Landroid/app/Dialog;

.field protected l1:Landroid/widget/ProgressBar;

.field protected m1:Landroid/widget/TextView;

.field private n1:Z

.field private o1:Landroid/content/BroadcastReceiver;

.field p1:Lcom/facebook/drawee/view/SimpleDraweeView;

.field q1:Landroid/view/View;

.field r1:Landroid/view/View;

.field s1:Landroid/widget/TextView;

.field t1:I

.field u1:J

.field public v1:Landroid/widget/ImageView;

.field protected w1:Landroid/widget/ImageView;

.field protected x1:Z

.field private y1:Z

.field private z1:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->n1:Z

    .line 3
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoViewJC$a;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$a;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o1:Landroid/content/BroadcastReceiver;

    .line 4
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->x1:Z

    .line 5
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y1:Z

    .line 6
    new-instance p1, Lcom/join/android/app/component/video/StandardVideoViewJC$c;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$c;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->z1:Landroid/os/Handler;

    const/16 p1, 0xd

    .line 7
    iput p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->B1:I

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->n1:Z

    .line 11
    new-instance p2, Lcom/join/android/app/component/video/StandardVideoViewJC$a;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$a;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o1:Landroid/content/BroadcastReceiver;

    .line 12
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->x1:Z

    .line 13
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y1:Z

    .line 14
    new-instance p1, Lcom/join/android/app/component/video/StandardVideoViewJC$c;

    invoke-direct {p1, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$c;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->z1:Landroid/os/Handler;

    const/16 p1, 0xd

    .line 15
    iput p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->B1:I

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C1:Ljava/lang/String;

    return-void
.end method

.method static synthetic V(Lcom/join/android/app/component/video/StandardVideoViewJC;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o1:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic W(Lcom/join/android/app/component/video/StandardVideoViewJC;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->n1:Z

    return p1
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->A()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->j0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 4
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y1:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "JieCaoVideoPlayer,setUiWitStateAndScreen--> currentState=3"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v2}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 7
    iput-boolean v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y1:Z

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JieCaoVideoPlayer,setUiWitStateAndScreen--> currentState=3, mute="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 9
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    :goto_0
    return-void
.end method

.method public B()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->B()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->l0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    return-void
.end method

.method public C(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->C(II)V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q0:Landroid/widget/ProgressBar;

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    return-void
.end method

.method public J()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P0:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method public K(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->K(I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k1:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c035b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0910d8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->m1:Landroid/widget/TextView;

    const v1, 0x7f09018e

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->l1:Landroid/widget/ProgressBar;

    .line 6
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->m0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k1:Landroid/app/Dialog;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k1:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->m1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->l1:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->o0()V

    return-void
.end method

.method public L(FLjava/lang/String;ILjava/lang/String;I)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->L(FLjava/lang/String;ILjava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->b1:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c035c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903ee

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->c1:Landroid/widget/ProgressBar;

    const v1, 0x7f0910e7

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->d1:Landroid/widget/TextView;

    const v1, 0x7f0910f7

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->e1:Landroid/widget/TextView;

    const v1, 0x7f0903ed

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f1:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->m0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->b1:Landroid/app/Dialog;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->b1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->b1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->d1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->e1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->c1:Landroid/widget/ProgressBar;

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
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f1:Landroid/widget/ImageView;

    const p2, 0x7f08073c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->f1:Landroid/widget/ImageView;

    const p2, 0x7f080722

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->o0()V

    return-void
.end method

.method public N(FI)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->N(FI)V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g1:Landroid/app/Dialog;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c035d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0912b4

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->j1:Landroid/widget/ImageView;

    const v0, 0x7f0911a5

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->i1:Landroid/widget/TextView;

    const v0, 0x7f0912b5

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->h1:Landroid/widget/ProgressBar;

    .line 7
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->m0(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g1:Landroid/app/Dialog;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g1:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g1:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    if-gtz p2, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->j1:Landroid/widget/ImageView;

    const v0, 0x7f080736

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->j1:Landroid/widget/ImageView;

    const v0, 0x7f08071d

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
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->i1:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->h1:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->o0()V

    return-void
.end method

.method public O(I)V
    .locals 9

    .line 1
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s(I)V

    .line 3
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    move-result-object p1

    iget-object p1, p1, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->y()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Lcom/join/mgps/customview/t;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120176

    invoke-direct {p1, v0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    const v0, 0x7f0c009a

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    const v0, 0x7f090364

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    const v1, 0x7f09036b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 10
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    const v2, 0x7f09100a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11
    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    const v3, 0x7f09038e

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    const v4, 0x7f09036e

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 13
    iget-object v4, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    const v5, 0x7f090370

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1103a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1103a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1103a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 18
    invoke-static {v5}, Lcom/join/mgps/Util/e1;->b(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x8

    if-nez v5, :cond_2

    const/4 v7, 0x0

    .line 19
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    :goto_0
    const-string/jumbo v2, "\u7ee7\u7eed\u89c2\u770b"

    const-string/jumbo v7, "\u60a8\u5df2\u5207\u6362\u5230\u6570\u636e\u7f51\u7edc\uff0c\u662f\u5426\u7ee7\u7eed\u89c2\u770b\u89c6\u9891\uff1f"

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f110227

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "\u5173\u95ed"

    :goto_1
    const-string/jumbo v8, "\u7f51\u7edc\u63d0\u793a"

    .line 24
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "\u53d6\u6d88"

    .line 28
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 29
    new-instance v1, Lcom/join/android/app/component/video/StandardVideoViewJC$d;

    invoke-direct {v1, p0, v5}, Lcom/join/android/app/component/video/StandardVideoViewJC$d;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoViewJC$e;

    invoke-direct {v0, p0, v5}, Lcom/join/android/app/component/video/StandardVideoViewJC$e;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 32
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->A1:Lcom/join/mgps/customview/t;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method

.method public T()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->T()V

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->i0()V

    :cond_0
    return-void
.end method

.method public X()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    return v1

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/l;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public Y()V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->D1:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->a1:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    return-void
.end method

.method public Z(I)V
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
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q0:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

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

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->q1:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    :goto_0
    return-void
.end method

.method public d0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 2
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

    .line 3
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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

    .line 5
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 6
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r1:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->q1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 5
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    :goto_0
    return-void
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C1:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c059c

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
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->i()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->k1:Landroid/app/Dialog;

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
    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->b1:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public j0()V
    .locals 10

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    move-object v2, p0

    .line 2
    invoke-virtual/range {v2 .. v9}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->q1:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    move-object v2, p0

    .line 6
    invoke-virtual/range {v2 .. v9}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 7
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 8
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->q1:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->k()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->g1:Landroid/app/Dialog;

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    :goto_0
    return-void
.end method

.method public l0()V
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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

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
    invoke-virtual/range {v0 .. v7}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r1:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public m(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->m(Landroid/content/Context;)V

    const/4 p1, 0x6

    .line 2
    sput p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->n0:I

    const p1, 0x7f090151

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U0:Landroid/widget/LinearLayout;

    const p1, 0x7f090172

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P0:Landroid/widget/ProgressBar;

    const p1, 0x7f09100f

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->R0:Landroid/widget/TextView;

    const p1, 0x7f09012c

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O0:Landroid/widget/ImageView;

    const p1, 0x7f090fef

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090982

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q0:Landroid/widget/ProgressBar;

    const p1, 0x7f090141

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->T0:Landroid/widget/ImageView;

    const p1, 0x7f090150

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->V0:Landroid/widget/ImageView;

    const p1, 0x7f09126c

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->W0:Landroid/widget/TextView;

    const p1, 0x7f090d2a

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->X0:Landroid/widget/TextView;

    const p1, 0x7f090270

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y0:Landroid/widget/TextView;

    const p1, 0x7f090985

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->p1:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090c67

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->s1:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 16
    sput-boolean p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q0:Z

    const p1, 0x7f090427

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/EqualizerView;

    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/customview/EqualizerView;->a()V

    const p1, 0x7f09088c

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->q1:Landroid/view/View;

    const p1, 0x7f090c1c

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r1:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoViewJC$b;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$b;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->p1:Lcom/facebook/drawee/view/SimpleDraweeView;

    const-string v0, "res:///2131234008"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->m(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 23
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S0:Lcom/facebook/drawee/view/SimpleDraweeView;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O0:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->T0:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y0:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->n0()V

    return-void
.end method

.method public m0(Landroid/view/View;)Landroid/app/Dialog;
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204db

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

.method n0()V
    .locals 2

    const v0, 0x7f090aba

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->v1:Landroid/widget/ImageView;

    const v0, 0x7f090123

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w1:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->v1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMuteView(Z)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w1:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public o0()V
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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->k0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->i0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->e0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->a0()V

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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->g0()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/16 v3, 0xa

    const/4 v4, 0x1

    const v5, 0x7f090545

    if-ne v0, v5, :cond_2

    .line 2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-gt v5, v6, :cond_0

    return-void

    .line 3
    :cond_0
    iget v5, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-ne v5, v2, :cond_1

    const/16 v6, 0x8

    goto :goto_0

    :cond_1
    const/16 v6, 0xa

    .line 4
    :goto_0
    sget-object v7, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J0:Lfm/jiecao/jcvideoplayer_lib/c;

    if-eqz v7, :cond_4

    .line 5
    iget-object v8, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C1:Ljava/lang/String;

    iget-object v9, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->f:[Ljava/lang/Object;

    invoke-interface {v7, v6, v8, v5, v9}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const v5, 0x7f090123

    if-ne v0, v5, :cond_4

    .line 6
    iget-object v5, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w1:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->isSelected()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 7
    iget-object v6, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->w1:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/join/mgps/pref/h;->P(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v6

    if-eqz v5, :cond_3

    const-string/jumbo v5, "\u5df2\u5f00\u542fWiFi\u4e0b\u81ea\u52a8\u64ad\u653e"

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "\u5df2\u5173\u95edWiFi\u4e0b\u81ea\u52a8\u64ad\u653e"

    :goto_1
    invoke-virtual {v6, v5}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 10
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onClick(Landroid/view/View;)V

    const p1, 0x7f090fef

    const/4 v5, 0x0

    if-ne v0, p1, :cond_8

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->getCurrentUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11023f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 13
    :cond_5
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    if-nez p1, :cond_6

    const/16 p1, 0x65

    .line 14
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s(I)V

    .line 15
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->S()V

    goto/16 :goto_4

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 16
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->p0()V

    goto/16 :goto_4

    :cond_7
    if-ne p1, v4, :cond_10

    .line 17
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S0:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_4

    :cond_8
    const p1, 0x7f090f03

    if-ne v0, p1, :cond_9

    .line 19
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    goto :goto_4

    :cond_9
    const p1, 0x7f09012c

    if-ne v0, p1, :cond_c

    .line 20
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-ne p1, v2, :cond_a

    goto :goto_3

    :cond_a
    const/16 v1, 0xa

    .line 21
    :goto_3
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J0:Lfm/jiecao/jcvideoplayer_lib/c;

    if-eqz v0, :cond_b

    .line 22
    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C1:Ljava/lang/String;

    iget-object v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->f:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1, v3}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 23
    :cond_b
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    goto :goto_4

    :cond_c
    const p1, 0x7f090141

    if-ne v0, p1, :cond_e

    .line 24
    sget-object p1, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J0:Lfm/jiecao/jcvideoplayer_lib/c;

    if-eqz p1, :cond_d

    .line 25
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C1:Ljava/lang/String;

    iget v1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    iget-object v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->f:[Ljava/lang/Object;

    invoke-interface {p1, v3, v0, v1, v2}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 26
    :cond_d
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->d()Z

    goto :goto_4

    :cond_e
    const p1, 0x7f090270

    if-ne v0, p1, :cond_f

    goto :goto_4

    :cond_f
    const p1, 0x7f090aba

    if-ne v0, p1, :cond_10

    new-array p1, v4, [Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JieCaoVideoPlayer,onClick-mute--> mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 28
    sget-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    xor-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    :cond_10
    :goto_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f090f03

    if-ne v0, v2, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    .line 4
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->getDuration()I

    move-result v0

    .line 6
    iget v2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->D:I

    mul-int/lit8 v2, v2, 0x64

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    div-int/2addr v2, v1

    .line 7
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x:Z

    if-nez v0, :cond_6

    const/16 v0, 0x66

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s(I)V

    .line 10
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->p0()V

    goto :goto_1

    :cond_3
    const v2, 0x7f090174

    if-ne v0, v2, :cond_6

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->r0()V

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 14
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
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    return-void
.end method

.method public p0()V
    .locals 12

    .line 1
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    .line 2
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->k0()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->l0()V

    .line 6
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setSystemTimeAndBattery()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x4

    if-ne v0, v2, :cond_5

    .line 7
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->i0()V

    goto :goto_0

    .line 9
    :cond_2
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x4

    const/4 v11, 0x4

    move-object v4, p0

    .line 10
    invoke-virtual/range {v4 .. v11}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->s0()V

    .line 12
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->q1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 14
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 15
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->e0()V

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->f0()V

    goto :goto_0

    :cond_7
    if-ne v0, v3, :cond_9

    .line 17
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->g0()V

    goto :goto_0

    .line 19
    :cond_8
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->h0()V

    :cond_9
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->q()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Z0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public q0(I)V
    .locals 6

    .line 1
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J0:Lfm/jiecao/jcvideoplayer_lib/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->J0:Lfm/jiecao/jcvideoplayer_lib/c;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C1:Ljava/lang/String;

    iget v3, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lfm/jiecao/jcvideoplayer_lib/c;->a(ILjava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public r0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/join/android/app/component/video/StandardVideoViewJC;->D1:Ljava/util/Timer;

    .line 3
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoViewJC$f;-><init>(Lcom/join/android/app/component/video/StandardVideoViewJC;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->a1:Lcom/join/android/app/component/video/StandardVideoViewJC$f;

    .line 4
    sget-object v1, Lcom/join/android/app/component/video/StandardVideoViewJC;->D1:Ljava/util/Timer;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public s(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->s(I)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    const/16 v3, 0x8

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JieCaoVideoPlayer,onEvent-ON_ENTER_FULLSCREEN--> mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 3
    sget-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->F1:Z

    .line 4
    invoke-virtual {p0, v2}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JieCaoVideoPlayer,onEvent-ON_QUIT_FULLSCREEN--> mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 6
    sget-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->F1:Z

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 7
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y1:Z

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JieCaoVideoPlayer,onEvent-ON_CLICK_RESUME--> mute="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMute(Z)V

    .line 12
    iput-boolean v2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y1:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public s0()V
    .locals 6

    .line 1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x7

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x6

    if-ne v0, v5, :cond_2

    .line 2
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->r1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    .line 5
    iget v5, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b:I

    if-ne v5, v4, :cond_3

    const v3, 0x7f080cdb

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    if-ne v5, v3, :cond_4

    const v3, 0x7f080ccc

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    const v3, 0x7f080cde

    .line 8
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    :goto_1
    iget v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 11
    :cond_6
    iget-object v0, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public setAllControlsVisible(IIIIIII)V
    .locals 1

    .line 1
    iget-boolean p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->a:Z

    const/4 p7, 0x2

    if-nez p6, :cond_0

    iget p6, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-eq p6, p7, :cond_0

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
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Q0:Landroid/widget/ProgressBar;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->p1:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->S0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    if-ne p1, p7, :cond_1

    .line 9
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    :goto_0
    invoke-virtual {p0, p2}, Lcom/join/android/app/component/video/StandardVideoViewJC;->q0(I)V

    return-void
.end method

.method public setBufferProgress(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setBufferProgress(I)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JieCaoVideoPlayer,setMute--> mute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMuteOnly(Z)V

    .line 3
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoView;->D:Z

    .line 4
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->E1:Z

    return-void
.end method

.method public setMuteOnly(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JieCaoVideoPlayer,setMuteOnly--> mute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    move-result-object v0

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    move-result-object v0

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/b;->b()Lfm/jiecao/jcvideoplayer_lib/b;

    move-result-object v0

    iget-object v0, v0, Lfm/jiecao/jcvideoplayer_lib/b;->a:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setMuteView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setMuteView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->v1:Landroid/widget/ImageView;

    const v0, 0x7f080882

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->v1:Landroid/widget/ImageView;

    const v0, 0x7f080883

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public setMuteWhenPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->y1:Z

    return-void
.end method

.method public setNoneNetFinishActivity(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->x1:Z

    return-void
.end method

.method public setProgressAndText(III)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setProgressAndText(III)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P0:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    :cond_0
    iput p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->t1:I

    if-lez p2, :cond_1

    sub-int p1, p3, p2

    int-to-long v0, p1

    .line 4
    iput-wide v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->u1:J

    sub-int/2addr p3, p2

    .line 5
    invoke-static {p3}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->s1:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
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
    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->W0:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->n1:Z

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->o1:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->C1:Ljava/lang/String;

    .line 2
    invoke-super {p0, p1, p2, p3}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V
    .locals 11

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->setUp(Ljava/util/LinkedHashMap;II[Ljava/lang/Object;)V

    .line 4
    array-length p2, p4

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->R0:Landroid/widget/TextView;

    const/4 p3, 0x0

    aget-object p4, p4, p3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c:I

    const/4 p4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-ne p2, p4, :cond_4

    .line 7
    iget-object p2, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    const p4, 0x7f0807c7

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O0:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->T0:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U0:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y0:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y0:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->getCurrentUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y0:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b84

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Z(I)V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_7

    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    if-ne p2, p1, :cond_9

    .line 16
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->T0:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object v3, p0

    .line 17
    invoke-virtual/range {v3 .. v10}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setAllControlsVisible(IIIIIII)V

    .line 18
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U0:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y0:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 20
    :cond_7
    :goto_1
    iget-object p1, p0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->j:Landroid/widget/ImageView;

    const p2, 0x7f0807c6

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->O0:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->T0:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b85

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Z(I)V

    .line 24
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->U0:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    :cond_8
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y0:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->setSystemTimeAndBattery()V

    return-void
.end method

.method public v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->v()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->a0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoViewJC;->P0:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public w()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->w()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->c0()V

    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->x()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->d0()V

    return-void
.end method

.method public y()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->y()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->f0()V

    .line 3
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->Y()V

    return-void
.end method

.method public z()V
    .locals 0

    .line 1
    invoke-super {p0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->z()V

    .line 2
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoViewJC;->h0()V

    return-void
.end method
