.class Lcom/papa91/view/indicators/PacmanIndicator$2;
.super Ljava/lang/Object;
.source "PacmanIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/indicators/PacmanIndicator;->onCreateAnimators()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/indicators/PacmanIndicator;


# direct methods
.method constructor <init>(Lcom/papa91/view/indicators/PacmanIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/indicators/PacmanIndicator$2;->this$0:Lcom/papa91/view/indicators/PacmanIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/indicators/PacmanIndicator$2;->this$0:Lcom/papa91/view/indicators/PacmanIndicator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/papa91/view/indicators/PacmanIndicator;->access$102(Lcom/papa91/view/indicators/PacmanIndicator;I)I

    .line 2
    iget-object p1, p0, Lcom/papa91/view/indicators/PacmanIndicator$2;->this$0:Lcom/papa91/view/indicators/PacmanIndicator;

    invoke-virtual {p1}, Lcom/papa91/view/Indicator;->postInvalidate()V

    return-void
.end method
