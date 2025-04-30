.class Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;
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
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$002(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I

    .line 2
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$102(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I

    .line 3
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$200(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$300(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$000(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    move-result v2

    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$100(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    move-result v3

    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$400(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$500(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    move-result v5

    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$600(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    move-result v6

    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$700(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    move-result v7

    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$800(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    move-result v8

    invoke-static/range {v1 .. v8}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$900(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;IILandroid/view/View;IIII)V

    .line 6
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$300(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    return-void
.end method
