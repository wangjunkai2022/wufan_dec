.class Lcom/join/android/app/component/video/MediaController$d;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/video/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/MediaController;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/MediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->c(Lcom/join/android/app/component/video/MediaController;)J

    move-result-wide v0

    int-to-long p1, p2

    mul-long v0, v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    .line 2
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/c;->e(J)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->l(Lcom/join/android/app/component/video/MediaController;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->e(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/MediaController$e;

    move-result-object p2

    long-to-int p3, v0

    invoke-interface {p2, p3}, Lcom/join/android/app/component/video/MediaController$e;->seekTo(I)V

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/join/android/app/component/video/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->f(Lcom/join/android/app/component/video/MediaController;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p2}, Lcom/join/android/app/component/video/MediaController;->f(Lcom/join/android/app/component/video/MediaController;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/MediaController;->d(Lcom/join/android/app/component/video/MediaController;Z)Z

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    const v1, 0x36ee80

    invoke-virtual {p1, v1}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->k(Lcom/join/android/app/component/video/MediaController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->l(Lcom/join/android/app/component/video/MediaController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->m(Lcom/join/android/app/component/video/MediaController;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {v0}, Lcom/join/android/app/component/video/MediaController;->l(Lcom/join/android/app/component/video/MediaController;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {v0}, Lcom/join/android/app/component/video/MediaController;->e(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/MediaController$e;

    move-result-object v0

    iget-object v3, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {v3}, Lcom/join/android/app/component/video/MediaController;->c(Lcom/join/android/app/component/video/MediaController;)J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v5, p1

    mul-long v3, v3, v5

    div-long/2addr v3, v1

    long-to-int p1, v3

    invoke-interface {v0, p1}, Lcom/join/android/app/component/video/MediaController$e;->seekTo(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/OutlineTextView;->setText(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->n(Lcom/join/android/app/component/video/MediaController;)Lcom/join/android/app/component/video/OutlineTextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/MediaController;->show(I)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->k(Lcom/join/android/app/component/video/MediaController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->m(Lcom/join/android/app/component/video/MediaController;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1, v4}, Lcom/join/android/app/component/video/MediaController;->d(Lcom/join/android/app/component/video/MediaController;Z)Z

    .line 10
    iget-object p1, p0, Lcom/join/android/app/component/video/MediaController$d;->a:Lcom/join/android/app/component/video/MediaController;

    invoke-static {p1}, Lcom/join/android/app/component/video/MediaController;->k(Lcom/join/android/app/component/video/MediaController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
