.class Lcom/papa91/arc/widget/view/MImageView$2;
.super Ljava/lang/Object;
.source "MImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/widget/view/MImageView;->hide(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/widget/view/MImageView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/widget/view/MImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/view/MImageView$2;->this$0:Lcom/papa91/arc/widget/view/MImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/widget/view/MImageView$2;->this$0:Lcom/papa91/arc/widget/view/MImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

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
