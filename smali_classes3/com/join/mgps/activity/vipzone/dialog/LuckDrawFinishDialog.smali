.class public Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;
.super Landroid/app/Dialog;
.source "LuckDrawFinishDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field closed:Landroid/widget/ImageView;

.field context:Landroid/content/Context;

.field luck:Lcom/facebook/drawee/view/SimpleDraweeView;

.field ok:Landroid/widget/TextView;

.field prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

.field sub_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f120142

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09028f

    if-eq v0, v1, :cond_1

    const v1, 0x7f090b5c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->onClickOk(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->onClickClosed(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onClickClosed(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onClickOk(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getPrize_type()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

    const-class v1, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawAddressDialog;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    const-string v1, "datas"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c03c3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f090b5c

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->ok:Landroid/widget/TextView;

    const v0, 0x7f090ef8

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->sub_title:Landroid/widget/TextView;

    const v0, 0x7f0909c6

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->luck:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09028f

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->closed:Landroid/widget/ImageView;

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->ok:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->closed:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->sub_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->luck:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    invoke-virtual {v1}, Lcom/join/mgps/activity/vipzone/bean/PrizeBean;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    return-void
.end method

.method public showMydialog(Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->prizeBean:Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 2
    invoke-virtual {p0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->show()V

    return-void
.end method
