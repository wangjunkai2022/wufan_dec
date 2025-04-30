.class Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;
.super Ljava/lang/Object;
.source "YDQuickLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/view/FastClickButton;

.field final synthetic b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;Lcom/netease/nis/quicklogin/view/FastClickButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {p1, v1}, Lcom/netease/nis/quicklogin/view/FastClickButton;->a(Z)V

    .line 5
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1, v0, v1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;II)V

    .line 6
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V

    goto/16 :goto_3

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {p1, v2}, Lcom/netease/nis/quicklogin/view/FastClickButton;->a(Z)V

    .line 9
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1, v0, v2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;II)V

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 11
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/listener/LoginListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/listener/LoginListener;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {p1, v0, v2}, Lcom/netease/nis/quicklogin/listener/LoginListener;->onDisagreePrivacy(Landroid/widget/TextView;Landroid/widget/Button;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 12
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 13
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    iget-boolean v3, v0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->m:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    const-string v3, "\u8bf7\u60a8\u4ed4\u7ec6\u9605\u8bfb"

    const-string v4, "\uff0c\u70b9\u51fb\u201c\u786e\u5b9a\u201d\uff0c\u8868\u793a\u60a8\u5df2\u7ecf\u9605\u8bfb\u5e76\u540c\u610f\u4ee5\u4e0a\u534f\u8bae"

    .line 15
    invoke-static {v1, v0, v3, v4}, Lcom/netease/nis/quicklogin/utils/a;->a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 16
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogText()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u786e\u8ba4"

    :try_start_1
    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;)V

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "\u53d6\u6d88"

    :try_start_2
    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$a;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$a;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;)V

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 22
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_5
    const v0, 0x102000b

    .line 23
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 24
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 25
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogTextSize()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogTextSize()F

    move-result v0

    goto :goto_2

    :cond_6
    const/high16 v0, 0x41500000    # 13.0f

    .line 26
    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_3

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->b:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netease/nis/quicklogin/R$string;->yd_privacy_agree:I

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method
