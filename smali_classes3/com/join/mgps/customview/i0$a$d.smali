.class Lcom/join/mgps/customview/i0$a$d;
.super Ljava/lang/Object;
.source "RewardPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/i0$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/join/mgps/customview/i0$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/i0$a;Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/i0$a$d;->b:Lcom/join/mgps/customview/i0$a;

    iput-object p2, p0, Lcom/join/mgps/customview/i0$a$d;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/i0$a$d;->b:Lcom/join/mgps/customview/i0$a;

    iget-object p1, p1, Lcom/join/mgps/customview/i0$a;->a:Lcom/join/mgps/customview/i0;

    iget-object p1, p1, Lcom/join/mgps/customview/i0;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/customview/i0$a$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

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
