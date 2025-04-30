.class Lcom/join/android/app/component/video/c$a;
.super Ljava/lang/Object;
.source "MyListViewVideoHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/c;->H(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/c$a;->b:Lcom/join/android/app/component/video/c;

    iput-object p2, p0, Lcom/join/android/app/component/video/c$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "MyListViewVideoHelper"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/android/app/component/video/c$a;->b:Lcom/join/android/app/component/video/c;

    .line 3
    invoke-virtual {v2}, Lcom/join/android/app/component/video/c;->t()I

    move-result v2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " tag= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getPlayPosition()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/android/app/component/video/c$a;->b:Lcom/join/android/app/component/video/c;

    invoke-virtual {v2}, Lcom/join/android/app/component/video/c;->t()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/android/app/component/video/c$a;->b:Lcom/join/android/app/component/video/c;

    iget-object v2, v2, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    .line 4
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/android/app/component/video/c$a;->b:Lcom/join/android/app/component/video/c;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->b:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->b:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->a:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/c$a;->a:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
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
