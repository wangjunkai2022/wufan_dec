.class Lcom/papa91/arc/dialog/SettingSlotDialog$4;
.super Ljava/lang/Object;
.source "SettingSlotDialog.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingSlotDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iget v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    if-eq p1, v1, :cond_2

    .line 2
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/TypeBean;

    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->goSlotShop()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lcom/papa91/arc/bean/TypeBean;->setShowDot(Z)V

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-static {v1, v3}, Lcom/papa91/arc/dialog/SettingSlotDialog;->access$102(Lcom/papa91/arc/dialog/SettingSlotDialog;Z)Z

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iget-object v4, v1, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    iget v1, v1, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    invoke-virtual {v4, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/TypeBean;

    .line 9
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 10
    invoke-virtual {v0, v3}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iput p1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->oldSelIndex:I

    .line 12
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slotTypeAdapter:Lcom/papa91/arc/dialog/SettingSlotDialog$SlotTypeAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 13
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$4;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->setTab(I)V

    :cond_2
    :goto_0
    return-void
.end method
