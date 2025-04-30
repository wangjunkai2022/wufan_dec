.class Lcom/papa91/view/AutoSlotDialog$4;
.super Ljava/lang/Object;
.source "AutoSlotDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSlotDialog;->showConfirmDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSlotDialog;

.field final synthetic val$dialog:Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSlotDialog;ILcom/papa91/view/AutoSlotDialog$ConfirmDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->this$0:Lcom/papa91/view/AutoSlotDialog;

    iput p2, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$pos:I

    iput-object p3, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$dialog:Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;

    iput-object p4, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->freeLoadSlot()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$pos:I

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->freeLoadSlotSet()V

    .line 3
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->this$0:Lcom/papa91/view/AutoSlotDialog;

    iget-object p1, p1, Lcom/papa91/view/AutoSlotDialog;->flag:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$dialog:Lcom/papa91/view/AutoSlotDialog$ConfirmDialog;

    invoke-virtual {p1}, Lcom/papa91/view/BaseDialog;->dismiss()V

    .line 5
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->this$0:Lcom/papa91/view/AutoSlotDialog;

    invoke-virtual {p1}, Lcom/papa91/view/AutoSlotDialog;->dismiss()V

    .line 6
    iget-object p1, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$path:Ljava/lang/String;

    iget v0, p0, Lcom/papa91/view/AutoSlotDialog$4;->val$pos:I

    invoke-static {p1, v0}, Lcom/papa91/activity/EmuBaseActivity;->loadAutoSlot(Ljava/lang/String;I)V

    return-void
.end method
