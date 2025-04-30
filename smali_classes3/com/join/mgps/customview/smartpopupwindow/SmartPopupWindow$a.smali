.class Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$a;
.super Ljava/lang/Object;
.source "SmartPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$a;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$a;->a:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
