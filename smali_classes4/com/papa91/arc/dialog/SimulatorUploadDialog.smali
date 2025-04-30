.class public Lcom/papa91/arc/dialog/SimulatorUploadDialog;
.super Lcom/papa91/arc/view/BaseDialog;
.source "SimulatorUploadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;,
        Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;,
        Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;
    }
.end annotation


# instance fields
.field private btn_ok:Landroid/widget/Button;

.field private iv_close:Landroid/widget/ImageView;

.field private listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

.field ll_roles:Landroid/widget/LinearLayout;

.field private mLife:I

.field private mMaxLife:I

.field private roleBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;"
        }
    .end annotation
.end field

.field private roleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private tv_add:Landroid/widget/TextView;

.field private tv_content:Landroid/widget/TextView;

.field private tv_del:Landroid/widget/TextView;

.field private tv_life:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$style;->PspDialog:I

    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/papa91/arc/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    const/16 p1, 0x63

    .line 4
    iput p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mMaxLife:I

    .line 5
    sget p1, Lorg/ppsspp/ppsspp/R$layout;->dialog_simulator_upload:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimEnabled(Z)V

    .line 7
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->initView()V

    .line 8
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->setListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SimulatorUploadDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->clearSelection()V

    return-void
.end method

.method private clearSelection()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;

    .line 3
    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$BaseViewHolder;->onUnselected()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_title:Landroid/widget/TextView;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_content:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_content:Landroid/widget/TextView;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->iv_close:Landroid/widget/ImageView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->btn_ok:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->btn_ok:Landroid/widget/Button;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_roles:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->ll_roles:Landroid/widget/LinearLayout;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_del:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_del:Landroid/widget/TextView;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_life:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_life:Landroid/widget/TextView;

    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_add:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_add:Landroid/widget/TextView;

    return-void
.end method

.method private setListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->iv_close:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_del:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_add:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/ppsspp/ppsspp/R$id;->btn_ok:I

    if-ne v0, v1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

    if-eqz p1, :cond_4

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 5
    invoke-virtual {v1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

    iget v1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;->getRole_id()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;->onConfirm(II)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u8bf7\u9009\u62e9\u4f7f\u7528\u89d2\u8272"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0, v0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;->onConfirm(II)V

    .line 9
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    goto/16 :goto_1

    .line 10
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    if-ne v0, v1, :cond_7

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

    if-eqz p1, :cond_6

    .line 12
    invoke-interface {p1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;->onClose()V

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/papa91/arc/view/BaseDialog;->dismiss()V

    goto :goto_1

    .line 14
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_add:I

    const-string v2, ""

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    .line 15
    iget p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 16
    iget v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mMaxLife:I

    if-le p1, v0, :cond_8

    .line 17
    iput v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 18
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4e0d\u80fd\u518d\u52a0\u4e86"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_life:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lorg/ppsspp/ppsspp/R$id;->tv_del:I

    if-ne p1, v0, :cond_b

    .line 21
    iget p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    if-ge p1, v3, :cond_a

    .line 22
    iput v3, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u4e0d\u80fd\u518d\u51cf\u4e86"

    invoke-static {p1, v0}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    :cond_a
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_life:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->mLife:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public setConfirmText(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorUploadDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleList:Ljava/util/List;

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleList:Ljava/util/List;

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleBeans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lorg/ppsspp/ppsspp/R$layout;->item_simulator_role:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;

    invoke-direct {v2, p0, v1}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;-><init>(Lcom/papa91/arc/dialog/SimulatorUploadDialog;Landroid/view/View;)V

    .line 10
    invoke-virtual {v2, v0}, Lcom/papa91/arc/dialog/SimulatorUploadDialog$RoleViewHolder;->init(Lcom/papa91/arc/bean/PaiWeiDataBean$RolesBean;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->roleList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->ll_roles:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setListener(Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->listener:Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;

    return-void
.end method

.method public setTipContent(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorUploadDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTipTitle(Ljava/lang/CharSequence;)Lcom/papa91/arc/dialog/SimulatorUploadDialog;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SimulatorUploadDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method
