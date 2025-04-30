.class Lcom/papa91/arc/dialog/SettingSlotDialog$8;
.super Ljava/lang/Object;
.source "SettingSlotDialog.java"

# interfaces
.implements Lcom/papa91/arc/dialog/TipOneDialog$OnOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingSlotDialog;->showQuickSlotVip()V
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$8;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$8;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingSlotDialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingSlotDialog$8;->this$0:Lcom/papa91/arc/dialog/SettingSlotDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "4"

    const-string v3, ""

    const-string v4, "https://anv3cjapi.5fun.com/member/vip_view/fc_archive"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v1 .. v6}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
