.class Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;
.super Ljava/lang/Object;
.source "SettingVipTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;

    iget-object v2, v2, Lcom/papa91/arc/dialog/SettingVipTipDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v2}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statUesVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
