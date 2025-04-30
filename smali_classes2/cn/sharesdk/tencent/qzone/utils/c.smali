.class public Lcn/sharesdk/tencent/qzone/utils/c;
.super Lcn/sharesdk/framework/authorize/c;
.source "QZoneSSOProcessor.java"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/authorize/c;-><init>(Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "com.tencent.mobileqq"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, v1}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 4
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 5
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.tencent.open.agent.AgentActivity"

    .line 8
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 11
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_2

    .line 12
    new-instance v1, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 13
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/c;->e:Ljava/lang/String;

    const-string v3, "scope"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcn/sharesdk/tencent/qzone/utils/c;->d:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pf"

    const-string v3, "openmobile_android"

    .line 16
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "need_pay"

    const-string v3, "1"

    .line 17
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_params"

    .line 18
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 19
    iget v0, p0, Lcn/sharesdk/framework/authorize/c;->b:I

    const-string v1, "key_request_code"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_action"

    const-string v1, "action_login"

    .line 20
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    iget v1, p0, Lcn/sharesdk/framework/authorize/c;->b:I

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/FakeActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 22
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v1}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 23
    iget-object v1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v1, :cond_4

    .line 24
    invoke-interface {v1, v0}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    .line 25
    :catchall_1
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->finish()V

    .line 26
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    new-instance v1, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;

    invoke-direct {v1}, Lcn/sharesdk/tencent/qzone/utils/TencentSSOClientNotInstalledException;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 8

    const-string p1, "access_token"

    const-string v0, "msg"

    const-string v1, "pfkey"

    const-string v2, "expires_in"

    const-string v3, "pf"

    const-string v4, "pay_token"

    const-string v5, "ret"

    .line 28
    iget-object v6, p0, Lcn/sharesdk/framework/authorize/c;->a:Lcn/sharesdk/framework/authorize/SSOAuthorizeActivity;

    invoke-virtual {v6}, Lcom/mob/tools/FakeActivity;->finish()V

    if-nez p2, :cond_1

    .line 29
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onCancel()V

    :cond_0
    return-void

    :cond_1
    const-string p2, "response is empty"

    if-nez p3, :cond_3

    .line 31
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_2

    .line 32
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 33
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_5

    .line 34
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_4

    .line 35
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_4
    return-void

    :cond_5
    const-string v6, "key_response"

    .line 36
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 37
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_6

    .line 38
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    .line 39
    :cond_7
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 40
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_8

    goto :goto_0

    .line 41
    :cond_8
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "open_id"

    const-string v4, "openid"

    .line 46
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_9

    .line 52
    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onComplete(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 53
    iget-object p2, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p2, :cond_a

    .line 54
    invoke-interface {p2, p1}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_a
    return-void

    .line 55
    :cond_b
    :goto_0
    iget-object p1, p0, Lcn/sharesdk/framework/authorize/c;->c:Lcn/sharesdk/framework/authorize/SSOListener;

    if-eqz p1, :cond_c

    .line 56
    new-instance p3, Ljava/lang/Throwable;

    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lcn/sharesdk/framework/authorize/SSOListener;->onFailed(Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qzone/utils/c;->d:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcn/sharesdk/tencent/qzone/utils/c;->e:Ljava/lang/String;

    return-void
.end method
