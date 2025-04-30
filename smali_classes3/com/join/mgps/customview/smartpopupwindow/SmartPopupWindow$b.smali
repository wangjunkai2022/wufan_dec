.class Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$b;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->G(Z)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$b;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$b;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 4
    invoke-static {v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$b;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I

    move-result p1

    if-lt v0, p1, :cond_1

    :cond_0
    return v2

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
