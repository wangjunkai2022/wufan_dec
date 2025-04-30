.class Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$2;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->touchOutsideDismiss(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;


# direct methods
.method constructor <init>(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$2;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

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

    iget-object v1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$2;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 4
    invoke-static {v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$000(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    move-result v1

    if-ge p1, v1, :cond_0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$2;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$100(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

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
