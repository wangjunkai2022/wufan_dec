.class Lcom/papa91/arc/dialog/SettingCheatDialog$3;
.super Ljava/lang/Object;
.source "SettingCheatDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;->showAddCheatDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_cheat:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$002(Lcom/papa91/arc/dialog/SettingCheatDialog;Z)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog;->rbt_type_gg:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getId()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$002(Lcom/papa91/arc/dialog/SettingCheatDialog;Z)Z

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object p2, p1, Lcom/papa91/arc/dialog/SettingCheatDialog;->textView10:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->access$000(Lcom/papa91/arc/dialog/SettingCheatDialog;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->getCustomCheatTip(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
