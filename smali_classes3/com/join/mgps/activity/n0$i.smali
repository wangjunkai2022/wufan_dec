.class Lcom/join/mgps/activity/n0$i;
.super Ljava/lang/Object;
.source "GamedetialModleFourFragemnt.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/n0;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/n0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->G:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p1}, Lcom/join/mgps/activity/n0;->Q(Lcom/join/mgps/activity/n0;)I

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07117f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ge p1, p2, :cond_3

    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->f:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->G:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p1}, Lcom/join/mgps/activity/n0;->R(Lcom/join/mgps/activity/n0;)Lcom/join/android/app/common/manager/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p1}, Lcom/join/mgps/activity/n0;->R(Lcom/join/mgps/activity/n0;)Lcom/join/android/app/common/manager/b;

    move-result-object p1

    const p2, 0x7f060068

    invoke-virtual {p1, p2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p2, p1, Lcom/join/mgps/activity/n0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    if-eqz p2, :cond_2

    iget-boolean p1, p1, Lcom/join/mgps/activity/n0;->u1:Z

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->r0:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->G:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    if-nez p1, :cond_4

    return-void

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -->performClick"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->g:Lcom/join/android/app/component/video/StandardVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p1}, Lcom/join/mgps/activity/n0;->R(Lcom/join/mgps/activity/n0;)Lcom/join/android/app/common/manager/b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 23
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    invoke-static {p1}, Lcom/join/mgps/activity/n0;->R(Lcom/join/mgps/activity/n0;)Lcom/join/android/app/common/manager/b;

    move-result-object p1

    const p2, 0x7f060063

    invoke-virtual {p1, p2}, Lcom/join/android/app/common/manager/b;->n(I)V

    .line 24
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/n0$i;->a:Lcom/join/mgps/activity/n0;

    iget-object p1, p1, Lcom/join/mgps/activity/n0;->r0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
