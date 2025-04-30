.class Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$1;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$1;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$1;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
