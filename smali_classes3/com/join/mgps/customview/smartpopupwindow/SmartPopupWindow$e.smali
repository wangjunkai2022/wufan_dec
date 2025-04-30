.class Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$e;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$e;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$e;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0, p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->d(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;F)V

    return-void
.end method
