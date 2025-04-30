.class Lcom/papa91/arc/dialog/SettingSlotDialog$7;
.super Ljava/lang/Object;
.source "SettingSlotDialog.java"

# interfaces
.implements Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;->showSlotPrompt(ILcom/papa91/arc/bean/Slot;)V
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iget v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mid:I

    sget v2, Lorg/ppsspp/ppsspp/R$id;->del:I

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->slots:Ljava/util/List;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->delSlot(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget v2, Lorg/ppsspp/ppsspp/R$id;->save:I

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->evictCache(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingSlotDialog;->saveSlot(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget v2, Lorg/ppsspp/ppsspp/R$id;->load:I

    if-ne v1, v2, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingSlotDialog;->mslot:Lcom/papa91/arc/bean/Slot;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/Slot;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->loadSlotState(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->resumeGame()V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$7;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    :cond_2
    :goto_0
    return-void
.end method
