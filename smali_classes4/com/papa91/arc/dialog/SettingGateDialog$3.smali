.class Lcom/papa91/arc/dialog/SettingGateDialog$3;
.super Ljava/lang/Object;
.source "SettingGateDialog.java"

# interfaces
.implements Lcom/papa91/arc/dialog/TipTwoDialog$OnOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingGateDialog;->showPrompt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingGateDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->showLoading()V

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/papa91/arc/dialog/SettingGateDialog$3$1;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingGateDialog$3$1;-><init>(Lcom/papa91/arc/dialog/SettingGateDialog$3;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
