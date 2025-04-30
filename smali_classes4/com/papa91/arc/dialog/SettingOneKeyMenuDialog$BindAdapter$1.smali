.class Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;
.super Ljava/lang/Object;
.source "SettingOneKeyMenuDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    iput p2, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    invoke-static {v0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->access$100(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;

    invoke-virtual {v0}, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->getBinds()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    iget v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->heroIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    invoke-static {p1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;->access$000(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;

    move-result-object p1

    iget v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$ISpBindListener;->onSpBind(I)V

    :cond_1
    return-void
.end method
