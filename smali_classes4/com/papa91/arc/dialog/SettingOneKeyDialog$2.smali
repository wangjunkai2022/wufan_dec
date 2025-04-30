.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;
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
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget v1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    if-eq v1, p1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillTableDataBean:Lcom/papa91/arc/bean/SkillTableDataBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SkillTableDataBean;->getSkills_table()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    iput-object v1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillsTableBean:Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean;->getSkill()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iput p1, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    .line 6
    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->access$100(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)Lcom/papa91/arc/dialog/SettingOneKeyDialog$HeroAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method
