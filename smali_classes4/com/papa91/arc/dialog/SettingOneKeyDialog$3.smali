.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;
.super Ljava/lang/Object;
.source "SettingOneKeyDialog.java"

# interfaces
.implements Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog;->showMenu()V
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpBind(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->getBinds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget v2, v2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget v3, v2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    if-ne v1, v3, :cond_0

    .line 4
    iget v1, v2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/papa91/arc/dialog/SettingDialog;->setSPBindData(III)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget v1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    iget v2, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillIdx:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/papa91/arc/dialog/SettingDialog;->setSPBindData(III)V

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->saveBindsFileData()V

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->menuDialog:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindsData()Lcom/papa91/arc/bean/SpBindsDataBean;

    move-result-object v0

    iput-object v0, p1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$3;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
