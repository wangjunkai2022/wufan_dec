.class Lcom/join/android/app/component/video/MultiStandVideo$b;
.super Ljava/lang/Object;
.source "MultiStandVideo.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/MultiStandVideo;->h(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/android/app/component/video/MultiStandVideo;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/MultiStandVideo;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    iput-object p2, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-static {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->a(Lcom/join/android/app/component/video/MultiStandVideo;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x7

    const-string v1, "mCurrentState"

    const-string v2, "    key:"

    if-eq p1, v0, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-static {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->b(Lcom/join/android/app/component/video/MultiStandVideo;)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    .line 2
    invoke-static {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->c(Lcom/join/android/app/component/video/MultiStandVideo;)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "autoPlayVideoMini:onAnimationEnd2: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-static {v0}, Lcom/join/android/app/component/video/MultiStandVideo;->d(Lcom/join/android/app/component/video/MultiStandVideo;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-static {v0}, Lcom/join/android/app/component/video/MultiStandVideo;->f(Lcom/join/android/app/component/video/MultiStandVideo;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "autoPlayVideoMini:onAnimationEnd1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-static {v0}, Lcom/join/android/app/component/video/MultiStandVideo;->d(Lcom/join/android/app/component/video/MultiStandVideo;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-static {v0}, Lcom/join/android/app/component/video/MultiStandVideo;->e(Lcom/join/android/app/component/video/MultiStandVideo;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/MultiStandVideo$b;->b:Lcom/join/android/app/component/video/MultiStandVideo;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->k()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
