.class public Lcom/papa91/arc/dialog/SettingShareDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;
    }
.end annotation


# instance fields
.field iv_close:Landroid/widget/ImageView;

.field ll_Qzone:Landroid/widget/LinearLayout;

.field ll_pyq:Landroid/widget/LinearLayout;

.field ll_qq:Landroid/widget/LinearLayout;

.field ll_wx:Landroid/widget/LinearLayout;

.field sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

.field shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingShareDialog;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->iv_close:Landroid/widget/ImageView;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->sdv_image:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_wx:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_wx:Landroid/widget/LinearLayout;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_pyq:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_pyq:Landroid/widget/LinearLayout;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_qq:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_qq:Landroid/widget/LinearLayout;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ll_Qzone:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_Qzone:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/View;

    .line 7
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->iv_close:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_wx:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_pyq:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_qq:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_share:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->iv_close:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_wx:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 6
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;->onShare(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_pyq:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    .line 9
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;->onShare(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_qq:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    .line 12
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;->onShare(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->ll_Qzone:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_4

    .line 14
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    .line 15
    invoke-interface {p1, v0}, Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;->onShare(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setIamge(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setShareListener(Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingShareDialog;->shareListener:Lcom/papa91/arc/dialog/SettingShareDialog$IShareListener;

    return-void
.end method
