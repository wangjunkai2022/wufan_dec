.class Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;
.super Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;
.source "SimulatorUploadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SimulatorUploadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder<",
        "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SimulatorUploadDialog;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/papa91/arc/dialog/SimulatorUploadDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->this$0:Lcom/papa91/arc/dialog/SimulatorUploadDialog;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;-><init>(Lcom/papa91/arc/dialog/SimulatorUploadDialog;Landroid/view/View;)V

    .line 3
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public init(Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->dataBean:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic init(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->init(Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V

    return-void
.end method

.method public onSelected()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->onSelected()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->dataBean:Ljava/lang/Object;

    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->shape_simulator_role_h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    const-string v1, "#FFFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onUnselected()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->onUnselected()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->dataBean:Ljava/lang/Object;

    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->shape_simulator_role_n:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->tv_title:Landroid/widget/TextView;

    const-string v1, "#FFC4C4C4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
