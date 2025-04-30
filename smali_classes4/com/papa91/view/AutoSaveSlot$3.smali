.class Lcom/papa91/view/AutoSaveSlot$3;
.super Ljava/lang/Object;
.source "AutoSaveSlot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$3;->this$0:Lcom/papa91/view/AutoSaveSlot;

    iput-object p2, p0, Lcom/papa91/view/AutoSaveSlot$3;->val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot$3;->val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {p1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    return-void
.end method
