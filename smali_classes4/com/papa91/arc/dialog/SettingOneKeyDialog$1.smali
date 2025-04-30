.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;
.super Ljava/lang/Object;
.source "SettingOneKeyDialog.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    .line 4
    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_noSP()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6b64\u6280\u80fd\u4e3a\u8fde\u62db\uff0c\u65e0\u6cd5\u7ed1\u5b9a\u6280\u80fd\u952e"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iput p1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    .line 7
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->showMenu()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
