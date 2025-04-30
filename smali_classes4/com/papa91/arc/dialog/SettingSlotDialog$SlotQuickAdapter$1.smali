.class Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;
.super Ljava/lang/Object;
.source "SettingSlotDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    iput p2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v0, p1, v1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingSlotDialog$SlotQuickAdapter;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->showQuickSlotVip()V

    :goto_0
    return-void
.end method
