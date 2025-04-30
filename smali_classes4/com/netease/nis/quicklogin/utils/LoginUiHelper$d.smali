.class Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;
.super Ljava/lang/Object;
.source "LoginUiHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->m(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/view/FastClickButton;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;Lcom/netease/nis/quicklogin/view/FastClickButton;Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    iput-object p3, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->h(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1, v0, v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;II)V

    .line 5
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {p1, v1}, Lcom/netease/nis/quicklogin/view/FastClickButton;->a(Z)V

    .line 6
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->performClick()Z

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/ref/WeakReference;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->j(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {p1, v2}, Lcom/netease/nis/quicklogin/view/FastClickButton;->a(Z)V

    .line 10
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1, v0, v2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;II)V

    .line 11
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginListener()Lcom/netease/nis/quicklogin/listener/LoginListener;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->c:Landroid/app/Activity;

    sget v3, Lcom/netease/nis/quicklogin/R$id;->yd_ll_protocol:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 13
    sget v3, Lcom/netease/nis/quicklogin/R$id;->yd_tv_privacy:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    :cond_3
    if-eqz v3, :cond_8

    if-eqz p1, :cond_4

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->a:Lcom/netease/nis/quicklogin/view/FastClickButton;

    invoke-virtual {p1, v3, v0}, Lcom/netease/nis/quicklogin/listener/LoginListener;->onDisagreePrivacy(Landroid/widget/TextView;Landroid/widget/Button;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 15
    :cond_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->c:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 16
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 17
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    const-string v1, "\u8bf7\u60a8\u4ed4\u7ec6\u9605\u8bfb"

    const-string v3, "\uff0c\u70b9\u51fb\u201c\u786e\u5b9a\u201d\uff0c\u8868\u793a\u60a8\u5df2\u7ecf\u9605\u8bfb\u5e76\u540c\u610f\u4ee5\u4e0a\u534f\u8bae"

    .line 18
    invoke-static {v2, v0, v1, v3}, Lcom/netease/nis/quicklogin/utils/a;->a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 19
    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogText()Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\u786e\u8ba4"

    :try_start_1
    new-instance v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d$b;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d$b;-><init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;)V

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "\u53d6\u6d88"

    :try_start_2
    new-instance v1, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d$a;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d$a;-><init>(Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;)V

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :cond_6
    const v0, 0x102000b

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 27
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 28
    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogTextSize()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->c(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogTextSize()F

    move-result v1

    goto :goto_1

    :cond_7
    const/high16 v1, 0x41500000    # 13.0f

    .line 29
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 31
    :cond_8
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/LoginUiHelper$d;->d:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->k(Lcom/netease/nis/quicklogin/utils/LoginUiHelper;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/netease/nis/quicklogin/R$string;->yd_privacy_agree:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_9
    :goto_2
    return-void
.end method
