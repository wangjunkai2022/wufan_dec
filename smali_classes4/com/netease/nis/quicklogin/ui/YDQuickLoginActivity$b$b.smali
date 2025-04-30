.class Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;
.super Ljava/lang/Object;
.source "YDQuickLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;

    iget-object p2, p2, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/CheckBox;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;

    iget-object p1, p1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogAuto()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;

    iget-object p1, p1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    :cond_1
    return-void
.end method
