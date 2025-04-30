.class Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;
.super Ljava/lang/Object;
.source "LoginAuthActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3
    :catch_0
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    const-string v0, "umcsdk_check_image"

    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxListener()Lcom/cmic/sso/sdk/view/CheckBoxListener;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckTipText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 5
    :try_start_1
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getUncheckedImgPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 6
    :catch_1
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    const-string v0, "umcsdk_uncheck_image"

    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method
