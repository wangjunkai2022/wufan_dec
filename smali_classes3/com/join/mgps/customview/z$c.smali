.class Lcom/join/mgps/customview/z$c;
.super Ljava/lang/Object;
.source "MyGameFilterPopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/z;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/z$c;->a:Lcom/join/mgps/customview/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/z$c;->a:Lcom/join/mgps/customview/z;

    invoke-static {p1}, Lcom/join/mgps/customview/z;->d(Lcom/join/mgps/customview/z;)V

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
