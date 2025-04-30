.class Lcom/papa91/view/AutoSaveSlot$4;
.super Ljava/lang/Object;
.source "AutoSaveSlot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSaveSlot;->showAutoSavePop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSaveSlot;

.field final synthetic val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSaveSlot;Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$4;->this$0:Lcom/papa91/view/AutoSaveSlot;

    iput-object p2, p0, Lcom/papa91/view/AutoSaveSlot$4;->val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$4;->val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$4;->val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
