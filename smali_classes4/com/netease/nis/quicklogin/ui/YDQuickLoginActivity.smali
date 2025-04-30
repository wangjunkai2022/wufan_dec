.class public Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;
.super Landroid/app/Activity;
.source "YDQuickLoginActivity.java"


# static fields
.field private static n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;


# instance fields
.field a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

.field private h:Lcom/netease/nis/quicklogin/listener/LoginListener;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic a()Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 18
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "accessToken"

    .line 19
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "deviceId"

    .line 21
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string p2, "phone"

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "randomId"

    .line 24
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    :cond_1
    sget-object p2, Lcom/netease/nis/quicklogin/b/a;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/netease/nis/quicklogin/b/a;->b:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/netease/nis/quicklogin/b/a;->a:Ljava/lang/String;

    sget-object v0, Lcom/netease/nis/quicklogin/b/a;->b:Ljava/lang/String;

    invoke-static {p2, p3, v0}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private a(II)V
    .locals 1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/netease/nis/quicklogin/listener/ClickEventListener;->onClick(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "operatorType"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->m:Z

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->m:Z

    if-eqz v0, :cond_1

    .line 10
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_tv_brand:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v1, "\u4e2d\u56fd\u8054\u901a\u63d0\u4f9b\u8ba4\u8bc1\u670d\u52a1"

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "maskNumber"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->j:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "accessToken"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->i:Ljava/lang/String;

    const-string v0, "gwAuth"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Ljava/lang/String;

    const-string v0, "ydToken"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 0

    .line 4
    sput-object p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(II)V

    return-void
.end method

.method private a(Ljava/lang/String;IILjava/lang/String;)V
    .locals 10

    .line 28
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    sget-object v1, Lcom/netease/nis/quicklogin/utils/g$c;->b:Lcom/netease/nis/quicklogin/utils/g$c;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v7, p4

    .line 30
    invoke-virtual/range {v0 .. v9}, Lcom/netease/nis/quicklogin/utils/g;->a(Lcom/netease/nis/quicklogin/utils/g$c;ILjava/lang/String;IIILjava/lang/String;J)V

    .line 31
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    return-object p0
.end method

.method private b()V
    .locals 6

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/d;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    invoke-static {p0}, Lcom/netease/nis/quicklogin/utils/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 4
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 5
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_2
    iget-boolean v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->m:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v4, "accessToken"

    if-eqz v3, :cond_0

    .line 7
    :try_start_3
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->i:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    const-string v4, "v2"

    .line 8
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v3, "md5"

    .line 9
    :try_start_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sdk/Unicorn/base/api/ToolUtils;->getAppMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->i:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v3, "gwAuth"

    .line 11
    :try_start_5
    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->k:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :goto_2
    sget-object v3, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz v3, :cond_2

    const-string v3, "timeend"

    const-wide/16 v4, 0x0

    .line 13
    invoke-static {p0, v3, v4, v5}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 14
    invoke-static {p0}, Lcom/sdk/Unicorn/base/api/ToolUtils;->clearCache(Landroid/content/Context;)V

    .line 15
    sget-object v3, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 17
    sget-object v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz v1, :cond_1

    .line 18
    :try_start_6
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 20
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->l:Ljava/lang/String;

    sget-object v2, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    :goto_4
    return-void
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/widget/RelativeLayout;

    .line 3
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_iv_navigation:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;

    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$a;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingView()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 11
    :cond_1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_rl_loading:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e:Landroid/view/ViewGroup;

    .line 12
    :goto_1
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_et_number:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b:Landroid/widget/EditText;

    .line 13
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_btn_oauth:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 14
    sget v1, Lcom/netease/nis/quicklogin/R$id;->yd_tv_privacy:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 15
    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;Lcom/netease/nis/quicklogin/view/FastClickButton;)V

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/view/FastClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_2
    sget v0, Lcom/netease/nis/quicklogin/R$id;->yd_cb_privacy:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/listener/LoginListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Lcom/netease/nis/quicklogin/listener/LoginListener;

    return-object p0
.end method

.method static synthetic f(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    return-void
.end method

.method public a(Lcom/netease/nis/quicklogin/listener/LoginListener;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->h:Lcom/netease/nis/quicklogin/listener/LoginListener;

    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityEnterAnimation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityExitAnimation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/nis/quicklogin/utils/h;->a(Ljava/lang/String;)I

    move-result v0

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 8
    :cond_1
    sget-object v0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityResultCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getActivityResultCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getBackPressedAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->n:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onCancelGetToken()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/netease/nis/quicklogin/R$layout;->yd_activity_quick_login:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    return-void
.end method
