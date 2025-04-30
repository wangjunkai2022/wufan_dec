.class Lcom/papa91/arc/dialog/SettingGateDialog$3$1;
.super Ljava/lang/Object;
.source "SettingGateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingGateDialog$3;->onConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingGateDialog$3;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingGateDialog$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$3$1;->this$1:Lcom/papa91/arc/dialog/SettingGateDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$3$1;->this$1:Lcom/papa91/arc/dialog/SettingGateDialog$3;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingGateDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->access$100(Lcom/papa91/arc/dialog/SettingGateDialog;)Lcom/papa91/arc/dialog/SettingGateDialog$GateAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingGateDialog$3$1;->this$1:Lcom/papa91/arc/dialog/SettingGateDialog$3;

    iget-object v2, v2, Lcom/papa91/arc/dialog/SettingGateDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    iget v2, v2, Lcom/papa91/arc/dialog/SettingGateDialog;->mid:I

    invoke-virtual {v1, v2}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/GateBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/GateBean;->getGateIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->loadGateStage(I)V

    return-void
.end method
