.class Lcom/join/android/app/component/video/c$g;
.super Ljava/lang/Object;
.source "MyListViewVideoHelper.java"

# interfaces
.implements Lcom/join/android/app/component/video/StandardVideoView$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/c;->n(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/c$g;->a:Lcom/join/android/app/component/video/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoverShowChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/android/app/component/video/c$g;->a:Lcom/join/android/app/component/video/c;

    iget-object v3, v3, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MyListViewVideoHelper"

    invoke-static {v3, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/video/c$g;->a:Lcom/join/android/app/component/video/c;

    iget-object v0, v0, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/join/android/app/component/video/c$g;->a:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->d:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/video/c$g;->a:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/join/android/app/component/video/c$g;->a:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/video/c$g;->a:Lcom/join/android/app/component/video/c;

    iget-object p1, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/c$g;->a:Lcom/join/android/app/component/video/c;

    iget-object v0, p1, Lcom/join/android/app/component/video/c;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/c;->c(Lcom/join/android/app/component/video/c;Landroid/view/View;)V

    :goto_0
    return-void
.end method
