.class Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;
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
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->b(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->e(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->k(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->l(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->a(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I

    move-result v2

    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->c(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I

    move-result v3

    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->m(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->n(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I

    move-result v5

    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->o(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I

    move-result v6

    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->p(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I

    move-result v7

    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->q(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->r(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;IILandroid/view/View;IIII)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$c;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->l(Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;)V

    return-void
.end method
