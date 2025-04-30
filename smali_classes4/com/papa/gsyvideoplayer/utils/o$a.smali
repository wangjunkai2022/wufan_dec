.class Lcom/papa/gsyvideoplayer/utils/o$a;
.super Landroid/view/OrientationEventListener;
.source "OrientationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/utils/o;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/gsyvideoplayer/utils/o;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/utils/o;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->a(Lcom/papa/gsyvideoplayer/utils/o;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->b(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->e(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/o;->r()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->g(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    if-ltz p1, :cond_5

    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->h(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->d()I

    move-result v0

    if-le p1, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    .line 7
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->h(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->c()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 8
    :cond_6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->i(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->k(Lcom/papa/gsyvideoplayer/utils/o;)I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->m(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 10
    :cond_7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/o;->p(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    .line 11
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->j(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    .line 12
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->l(Lcom/papa/gsyvideoplayer/utils/o;I)I

    goto/16 :goto_2

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->k(Lcom/papa/gsyvideoplayer/utils/o;)I

    move-result p1

    if-lez p1, :cond_14

    .line 14
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->e(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 15
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/o;->c(Lcom/papa/gsyvideoplayer/utils/o;I)I

    .line 16
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/o;->d(Lcom/papa/gsyvideoplayer/utils/o;I)V

    .line 17
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 18
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 19
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 20
    :cond_9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->l(Lcom/papa/gsyvideoplayer/utils/o;I)I

    .line 22
    :cond_b
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->j(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    goto/16 :goto_2

    .line 23
    :cond_c
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->h(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->b()I

    move-result v0

    if-lt p1, v0, :cond_10

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    .line 24
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->h(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->a()I

    move-result v0

    if-gt p1, v0, :cond_10

    .line 25
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->i(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 26
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->k(Lcom/papa/gsyvideoplayer/utils/o;)I

    move-result p1

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->o(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 27
    :cond_d
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/o;->n(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    .line 28
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->j(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    .line 29
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/o;->l(Lcom/papa/gsyvideoplayer/utils/o;I)I

    goto/16 :goto_2

    .line 30
    :cond_e
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->k(Lcom/papa/gsyvideoplayer/utils/o;)I

    move-result p1

    if-eq p1, v1, :cond_14

    .line 31
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->c(Lcom/papa/gsyvideoplayer/utils/o;I)I

    .line 32
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->d(Lcom/papa/gsyvideoplayer/utils/o;I)V

    .line 33
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 34
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    :cond_f
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/o;->l(Lcom/papa/gsyvideoplayer/utils/o;I)I

    .line 36
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->j(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    goto/16 :goto_2

    .line 37
    :cond_10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->h(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->f()I

    move-result v0

    if-le p1, v0, :cond_14

    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    .line 38
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/o;->h(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->e()I

    move-result v0

    if-ge p1, v0, :cond_14

    .line 39
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->i(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_12

    .line 40
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->k(Lcom/papa/gsyvideoplayer/utils/o;)I

    move-result p1

    if-eq p1, v0, :cond_11

    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->o(Lcom/papa/gsyvideoplayer/utils/o;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 41
    :cond_11
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/o;->n(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    .line 42
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->j(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    .line 43
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v0}, Lcom/papa/gsyvideoplayer/utils/o;->l(Lcom/papa/gsyvideoplayer/utils/o;I)I

    goto :goto_2

    .line 44
    :cond_12
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->k(Lcom/papa/gsyvideoplayer/utils/o;)I

    move-result p1

    if-eq p1, v0, :cond_14

    .line 45
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->c(Lcom/papa/gsyvideoplayer/utils/o;I)I

    .line 46
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/papa/gsyvideoplayer/utils/o;->d(Lcom/papa/gsyvideoplayer/utils/o;I)V

    .line 47
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 48
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/o;->f(Lcom/papa/gsyvideoplayer/utils/o;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    :cond_13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v0}, Lcom/papa/gsyvideoplayer/utils/o;->l(Lcom/papa/gsyvideoplayer/utils/o;I)I

    .line 50
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/o$a;->a:Lcom/papa/gsyvideoplayer/utils/o;

    invoke-static {p1, v2}, Lcom/papa/gsyvideoplayer/utils/o;->j(Lcom/papa/gsyvideoplayer/utils/o;Z)Z

    :cond_14
    :goto_2
    return-void
.end method
