.class Lcom/join/mgps/activity/HandShankBaseActivity$b;
.super Ljava/lang/Object;
.source "HandShankBaseActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankBaseActivity;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HandShankBaseActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankBaseActivity$b;->a:Lcom/join/mgps/activity/HandShankBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankBaseActivity$b;->a:Lcom/join/mgps/activity/HandShankBaseActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->Q0(II)V

    return-void
.end method
