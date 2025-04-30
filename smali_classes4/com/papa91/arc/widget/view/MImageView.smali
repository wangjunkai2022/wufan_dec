.class public Lcom/papa91/arc/widget/view/MImageView;
.super Lcom/facebook/drawee/view/SimpleDraweeView;
.source "MImageView.java"

# interfaces
.implements Lcom/papa91/arc/widget/IAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/widget/view/MImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 2

    const-wide/16 v0, 0xb4

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/papa91/arc/widget/view/MImageView;->hide(ZJ)V

    return-void
.end method

.method public hide(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    new-instance p2, Lcom/papa91/arc/widget/view/MImageView$2;

    invoke-direct {p2, p0}, Lcom/papa91/arc/widget/view/MImageView$2;-><init>(Lcom/papa91/arc/widget/view/MImageView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public show(Z)V
    .locals 2

    const-wide/16 v0, 0xb4

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/papa91/arc/widget/view/MImageView;->show(ZJ)V

    return-void
.end method

.method public show(ZJ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 3
    new-instance p2, Lcom/papa91/arc/widget/view/MImageView$1;

    invoke-direct {p2, p0}, Lcom/papa91/arc/widget/view/MImageView$1;-><init>(Lcom/papa91/arc/widget/view/MImageView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
