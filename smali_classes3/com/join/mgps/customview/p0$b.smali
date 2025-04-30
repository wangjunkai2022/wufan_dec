.class Lcom/join/mgps/customview/p0$b;
.super Ljava/lang/Object;
.source "SpecialFilterPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/p0;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/p0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/p0$b;->a:Lcom/join/mgps/customview/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/p0$b;->a:Lcom/join/mgps/customview/p0;

    invoke-static {p1}, Lcom/join/mgps/customview/p0;->b(Lcom/join/mgps/customview/p0;)V

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
