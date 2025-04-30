.class Lcom/papa91/arc/dialog/SettingCheatDialog$2;
.super Ljava/lang/Object;
.source "SettingCheatDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;->showModifyCheatDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

.field final synthetic val$index:I

.field final synthetic val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;Lorg/ppsspp/ppsspp/EditCheatInfo;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;

    iput p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4f5c\u5f0a\u7801\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4f5c\u5f0a\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-static {v2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/papa91/arc/dialog/SettingDialog;->checkCheatCodeInfo(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4f5c\u5f0a\u7801\u683c\u5f0f\u6709\u8bef\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    :try_start_0
    new-instance v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$info:Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-boolean v1, v1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-static {v2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Z

    move-result v2

    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v3, v3, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v4, v4, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCode:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ppsspp/ppsspp/EditCheatInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$index:I

    invoke-virtual {v1, v2, v0}, Lcom/papa91/arc/dialog/SettingDialog;->modifyEditCheatInfo(ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 9
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$index:I

    invoke-virtual {v1, v2}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->remove(I)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->val$index:I

    invoke-virtual {v1, v2, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->addData(ILjava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatCustomAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4f5c\u5f0a\u7801\u6dfb\u52a0\u5931\u8d25\uff01"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatAddDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    throw p1
.end method
