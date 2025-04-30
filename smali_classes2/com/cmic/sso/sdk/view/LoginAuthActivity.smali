.class public Lcom/cmic/sso/sdk/view/LoginAuthActivity;
.super Landroid/app/Activity;
.source "LoginAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;,
        Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;,
        Lcom/cmic/sso/sdk/view/LoginAuthActivity$c;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

.field private B:I

.field private C:I

.field private D:Z

.field private E:Landroid/app/Dialog;

.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/cmic/sso/sdk/view/c;

.field private f:Lcom/cmic/sso/sdk/view/c;

.field private g:Lcom/cmic/sso/sdk/view/c;

.field private h:Lcom/cmic/sso/sdk/view/c;

.field private i:Lcom/cmic/sso/sdk/view/c;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cmic/sso/sdk/view/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:[Ljava/lang/String;

.field private m:Lcom/cmic/sso/sdk/a;

.field private n:Lcom/cmic/sso/sdk/auth/a;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/RelativeLayout;

.field private s:J

.field private t:I

.field private u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

.field private v:Lcom/cmic/sso/sdk/auth/TokenListener;

.field private w:Z

.field private x:Landroid/widget/RelativeLayout;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->o:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->s:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->t:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 4

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string v0, "103000"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "keepListener"

    const-string v3, "traceId"

    if-eqz v0, :cond_0

    .line 10
    :try_start_1
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p3, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p3, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    .line 13
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const-string v0, "200020"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p3, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    .line 18
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a()V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a()V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p3, v2, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Z)V

    .line 21
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    sget-object p2, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string p3, "CallbackResult:\u672a\u77e5\u9519\u8bef"

    invoke-static {p2, p3}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 3

    :try_start_0
    const-string p1, "authPageOut"

    .line 4
    invoke-static {p1}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "200020"

    const-string/jumbo v0, "\u767b\u5f55\u9875\u9762\u5173\u95ed"

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    sget-object v0, Lcom/cmic/sso/sdk/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method static synthetic b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->w:Z

    return p1
.end method

.method static synthetic c(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method static synthetic d(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "traceId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->d(Ljava/lang/String;)Lcom/cmic/sso/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/cmic/sso/sdk/a;

    invoke-direct {v0, v2}, Lcom/cmic/sso/sdk/a;-><init>(I)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->c(Ljava/lang/String;)Lcom/cmic/sso/sdk/auth/TokenListener;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->v:Lcom/cmic/sso/sdk/auth/TokenListener;

    .line 6
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    .line 9
    new-instance v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    .line 10
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v1, "securityphone"

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->o:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSecurityPhone value is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v4, "operatortype"

    invoke-virtual {v1, v4, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAppLanguageType()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 15
    sget-object v0, Lcom/cmic/sso/sdk/c;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAppLanguageType()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 17
    sget-object v0, Lcom/cmic/sso/sdk/c;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_2
    sget-object v0, Lcom/cmic/sso/sdk/c;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    :goto_0
    const-string v0, "1"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    const-string v0, "http://wap.cmpassport.com/resources/html/contract.html"

    goto :goto_1

    :cond_3
    const-string v0, "3"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    const-string v0, "https://e.189.cn/sdk/agreement/detail.do?hidetop=true"

    goto :goto_1

    .line 23
    :cond_4
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    const-string v0, "https://opencloud.wostore.cn/authz/resource/html/disclaimer.html?fromsdk=true"

    .line 24
    :goto_1
    new-instance v1, Lcom/cmic/sso/sdk/view/c;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    const v6, 0x1030010

    invoke-direct {v1, v3, v6, v5, v0}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    .line 25
    new-instance v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$1;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    .line 28
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 29
    new-instance v0, Lcom/cmic/sso/sdk/view/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    .line 30
    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    .line 31
    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$2;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$2;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 32
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_5
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 35
    new-instance v0, Lcom/cmic/sso/sdk/view/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    .line 36
    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName2()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl2()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g:Lcom/cmic/sso/sdk/view/c;

    .line 37
    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$3;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$3;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 38
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_6
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 41
    new-instance v0, Lcom/cmic/sso/sdk/view/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    .line 42
    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName3()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl3()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h:Lcom/cmic/sso/sdk/view/c;

    .line 43
    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$4;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$4;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 44
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_7
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl4()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 47
    new-instance v0, Lcom/cmic/sso/sdk/view/c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    .line 48
    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName4()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseUrl4()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v6, v3, v5}, Lcom/cmic/sso/sdk/view/c;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i:Lcom/cmic/sso/sdk/view/c;

    .line 49
    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$5;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$5;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 50
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseName4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_8
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j()Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyBookSymbol()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 54
    :goto_2
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    new-array v1, v4, [Ljava/lang/Object;

    .line 55
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v3, "\u300a%s\u300b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    .line 57
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 58
    :cond_9
    invoke-static {}, Lcom/cmic/sso/sdk/view/a;->a()Lcom/cmic/sso/sdk/view/a;

    move-result-object v0

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$6;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/view/a;->a(Lcom/cmic/sso/sdk/view/a$a;)V

    return-void
.end method

.method static synthetic e(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i:Lcom/cmic/sso/sdk/view/c;

    return-object p0
.end method

.method private e()V
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY_B()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY_B()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    .line 5
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY_B()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v1, v6

    if-lez v1, :cond_1

    .line 6
    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v6, "numberField_bottom"

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 8
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY_B()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v5, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 11
    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 12
    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPhoneLayout.getMeasuredHeight()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY()I

    move-result v6

    if-lez v6, :cond_3

    iget v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    .line 14
    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v8}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v7

    sub-int/2addr v6, v7

    if-lez v6, :cond_3

    const-string v6, "numberField_top"

    .line 15
    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 17
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumFieldOffsetY()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 19
    :goto_1
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnMarginLeft()I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 22
    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnMarginRight()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 23
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY()I

    move-result v7

    if-gtz v7, :cond_6

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY_B()I

    move-result v7

    if-gez v7, :cond_4

    goto :goto_2

    .line 24
    :cond_4
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY_B()I

    move-result v7

    if-lez v7, :cond_5

    iget v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    .line 25
    invoke-virtual {v9}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnHeight()I

    move-result v9

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY_B()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_5

    .line 26
    sget-object v7, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v8, "logBtn_bottom"

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 28
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v6, v6

    .line 29
    invoke-static {v7, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v8}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY_B()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v7

    .line 30
    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 31
    :cond_5
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 32
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v7, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v5, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 33
    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY()I

    move-result v7

    if-lez v7, :cond_7

    iget v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    .line 34
    invoke-virtual {v9}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnHeight()I

    move-result v9

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v7, v8

    if-lez v7, :cond_7

    .line 35
    sget-object v7, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v8, "logBtn_top"

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 37
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v8}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnOffsetY()I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v6, v6

    .line 38
    invoke-static {v8, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    .line 39
    invoke-virtual {v0, v1, v7, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    .line 40
    :cond_7
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 41
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v7, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v6, v6

    invoke-static {v7, v6}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v5, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 42
    :goto_3
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 44
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyMarginLeft()I

    move-result v1

    const/16 v6, 0x1e

    if-ltz v1, :cond_9

    .line 45
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v1

    if-le v1, v6, :cond_8

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyMarginLeft()I

    move-result v1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyMarginLeft()I

    move-result v1

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v1, v6

    goto :goto_4

    .line 46
    :cond_9
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v1

    if-le v1, v6, :cond_a

    const/4 v1, 0x0

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v1

    sub-int/2addr v6, v1

    neg-int v1, v6

    .line 47
    :goto_4
    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v6}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyMarginRight()I

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 48
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 49
    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v7, v7}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 50
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY()I

    move-result v7

    const-string v8, "privacy_bottom="

    if-gtz v7, :cond_d

    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY_B()I

    move-result v7

    if-gez v7, :cond_b

    goto/16 :goto_5

    .line 51
    :cond_b
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY_B()I

    move-result v7

    if-lez v7, :cond_c

    iget v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    .line 52
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY_B()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v9

    sub-int/2addr v7, v9

    if-lez v7, :cond_c

    .line 53
    sget-object v2, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 55
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v3, v6

    .line 56
    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY_B()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    .line 57
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_6

    .line 58
    :cond_c
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 59
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v3, v6

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 60
    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v2, "privacy_top"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 61
    :cond_d
    :goto_5
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v7}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY()I

    move-result v7

    if-lez v7, :cond_e

    iget v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    .line 62
    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v7, v9

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v9

    sub-int/2addr v7, v9

    if-lez v7, :cond_e

    .line 63
    sget-object v3, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "privacy_top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 65
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyOffsetY()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v4, v6

    .line 66
    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    .line 67
    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_6

    .line 68
    :cond_e
    sget-object v2, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v3, v6

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 71
    :goto_6
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic f(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private f()V
    .locals 7

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 5
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getStatusBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isLightColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 13
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 17
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 18
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLayoutResID()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLayoutResID()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 23
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 24
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmic/sso/sdk/view/d;->b(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    .line 25
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_6

    .line 26
    iget v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    if-gt v3, v5, :cond_7

    :cond_6
    if-nez v1, :cond_8

    iget v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    if-ge v3, v5, :cond_8

    .line 27
    :cond_7
    iget v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    iput v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    .line 28
    iput v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    .line 29
    :cond_8
    sget-object v3, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--screenWidth = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "--screenHeight = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 31
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowWidth()I

    move-result v3

    if-eqz v3, :cond_a

    .line 32
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 34
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 36
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 38
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    .line 39
    iput v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->B:I

    .line 40
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowX()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 41
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowBottom()I

    move-result v3

    if-ne v3, v4, :cond_9

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/view/Window;->setGravity(I)V

    goto :goto_2

    .line 43
    :cond_9
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v5}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowY()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 44
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    :cond_a
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isFitsSystemWindows()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFitsSystemWindows(Z)V

    .line 46
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 47
    :try_start_0
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->g()V

    .line 48
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->h()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->i()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e()V

    .line 52
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;

    invoke-direct {v1, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$7;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyState()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 59
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_4

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxListener()Lcom/cmic/sso/sdk/view/CheckBoxListener;

    move-result-object v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckTipText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    :cond_d
    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getUncheckedImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 63
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 64
    sget-object v1, Lcom/cmic/sso/sdk/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const/4 v1, 0x0

    const-string v2, "200040"

    const-string v3, "UI\u8d44\u6e90\u52a0\u8f7d\u5f02\u5e38"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_4
    return-void
.end method

.method static synthetic g(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private g()V
    .locals 6

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    const/16 v1, 0x3333

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 9
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumberOffsetX()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/16 v2, 0xd

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_0
    if-lez v2, :cond_2

    .line 11
    iget v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->C:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    int-to-float v2, v2

    invoke-static {v5, v2}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_1

    .line 12
    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v2, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v4, "RelativeLayout.ALIGN_PARENT_RIGHT"

    invoke-static {v2, v4}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xb

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_2
    :goto_0
    const/4 v2, 0x2

    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumberSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/high16 v4, 0x41900000    # 18.0f

    .line 16
    invoke-virtual {v0, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    :goto_1
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isNumberBold()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    const/16 v2, 0x7777

    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 21
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getNumberColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const v1, -0xcccccd

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    :goto_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 26
    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneLayout.getMeasuredHeight()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private h()Landroid/widget/RelativeLayout;
    .locals 4

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    const/16 v1, 0x4444

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v3}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnTextSize()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isLogBtnTextBold()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 14
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLogBtnBackgroundPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 19
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const-string v2, "umcsdk_login_btn_bg"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/AuthThemeConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    return-object p0
.end method

.method static synthetic i(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private i()Landroid/widget/RelativeLayout;
    .locals 12

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 4
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v0

    .line 7
    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgHeight()I

    move-result v4

    .line 8
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/16 v7, 0x1e

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v6, v8}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v8, v4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v5, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v4}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxLocation()I

    move-result v4

    const/16 v6, 0xf

    if-ne v4, v1, :cond_0

    .line 10
    invoke-virtual {v5, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 11
    :cond_0
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    const v8, 0x8888

    .line 12
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 13
    iget-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v4, Landroid/widget/CheckBox;

    invoke-direct {v4, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    .line 15
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v10}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v11, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v11}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckedImgHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 17
    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    if-le v0, v7, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sub-int/2addr v7, v0

    int-to-float v0, v7

    :goto_0
    invoke-static {v9, v0}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v4, v0, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xb

    .line 18
    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 19
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxLocation()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 20
    invoke-virtual {v4, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 24
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 25
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyTextSize()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 26
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 27
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v6, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 28
    invoke-virtual {v2, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 31
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getClauseBaseColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v7, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    iget-object v8, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    iget-object v9, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    iget-object v10, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k:Ljava/util/ArrayList;

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/cmic/sso/sdk/view/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/view/c;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 34
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 35
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyTextBold()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    :cond_3
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyTextGravityCenter()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x11

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 40
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 41
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getUncheckedImgPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 43
    :catch_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    const-string v1, "umcsdk_uncheck_image"

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    return-object p0
.end method

.method private j()Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isPrivacyBookSymbol()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u300a%s\u300b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    const-string v1, "$$\u8fd0\u8425\u5546\u6761\u6b3e$$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method

.method static synthetic k(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->k()V

    return-void
.end method

.method static synthetic l(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    return-void
.end method

.method static synthetic m(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/auth/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->n:Lcom/cmic/sso/sdk/auth/a;

    return-object p0
.end method

.method private m()V
    .locals 8

    const-string v0, "traceId"

    .line 2
    :try_start_0
    iget v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->t:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u4e0d\u7a33\u5b9a,\u8bf7\u8fd4\u56de\u91cd\u8bd5\u5176\u4ed6\u767b\u5f55\u65b9\u5f0f"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "stack"

    .line 8
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.cmic.sso.sdk.activity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 12
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "loginTime"

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)V

    .line 14
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 16
    invoke-static {v1}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-static {}, Lcom/cmic/sso/sdk/e/q;->c()Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v2, v0, v1}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->v:Lcom/cmic/sso/sdk/auth/TokenListener;

    invoke-static {v1, v0}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b()V

    .line 21
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->l()V

    .line 22
    new-instance v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$c;

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    invoke-direct {v0, p0, v1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$c;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Lcom/cmic/sso/sdk/a;)V

    .line 23
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getOverTime()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    new-instance v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;

    invoke-direct {v1, p0, v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Lcom/cmic/sso/sdk/view/LoginAuthActivity$c;)V

    invoke-static {v1}, Lcom/cmic/sso/sdk/e/n;->a(Lcom/cmic/sso/sdk/e/n$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->e:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/c;->dismiss()V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f:Lcom/cmic/sso/sdk/view/c;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/c;->dismiss()V

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c()V

    .line 30
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    .line 31
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 33
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getActivityIn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getActivityIn()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAuthPageActOut()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 6

    .line 3
    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v1, "loginClickStart"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->D:Z

    .line 5
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/cmic/sso/sdk/view/LoginClickListener;->onLoginClickStart(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 9
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 11
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 12
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    new-instance v2, Lcom/cmic/sso/sdk/view/LoginAuthActivity$8;

    invoke-direct {v2, p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$8;-><init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 13
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    iget-object v3, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const-string v5, "dialog_loading"

    invoke-static {v3, v5}, Lcom/cmic/sso/sdk/view/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x50

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    .line 18
    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 21
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 22
    :cond_2
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 23
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :goto_0
    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 2
    :try_start_0
    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v1, "loginClickComplete"

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->D:Z

    .line 5
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getLoginClickListener()Lcom/cmic/sso/sdk/view/LoginClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/view/LoginClickListener;->onLoginClickComplete(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x4444

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x6666

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x8888

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, v2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Z)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyAnimation()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getPrivacyAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxListener()Lcom/cmic/sso/sdk/view/CheckBoxListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckBoxListener()Lcom/cmic/sso/sdk/view/CheckBoxListener;

    move-result-object p1

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/cmic/sso/sdk/view/CheckBoxListener;->onLoginClick(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckTipText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getCheckTipText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 14
    :cond_6
    iget p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->t:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->t:I

    .line 15
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    sget-object v0, Lcom/cmic/sso/sdk/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    iput-object p0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->c:Landroid/content/Context;

    .line 4
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getAuthThemeConfig()Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getThemeId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getThemeId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAuthPageActIn()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getActivityOut()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getAuthPageActIn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getActivityOut()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cmic/sso/sdk/view/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    const-string p1, "authPageIn"

    .line 9
    invoke-static {p1}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->s:J

    .line 11
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/a;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/a;

    move-result-object p1

    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->n:Lcom/cmic/sso/sdk/auth/a;

    .line 12
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->d()V

    .line 13
    invoke-direct {p0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/a;->a()Lcom/cmic/sso/sdk/d/b;

    move-result-object v0

    iget-object v0, v0, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const/4 v0, 0x0

    const-string v1, "200025"

    const-string/jumbo v2, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "timeOnAuthPage"

    .line 2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->s:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "authPrivacyState"

    if-eqz v0, :cond_0

    :try_start_2
    const-string v0, "1"

    .line 4
    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 5
    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    iput-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->E:Landroid/app/Dialog;

    .line 7
    invoke-static {}, Lcom/cmic/sso/sdk/view/a;->a()Lcom/cmic/sso/sdk/view/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/view/a;->c()V

    .line 8
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->u:Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a:Ljava/lang/String;

    const-string v2, "LoginAuthActivity clear failed"

    invoke-static {v1, v2}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/cmic/sso/sdk/d/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getBackPressedListener()Lcom/cmic/sso/sdk/view/BackPressedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getBackPressedListener()Lcom/cmic/sso/sdk/view/BackPressedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/cmic/sso/sdk/view/BackPressedListener;->onBackPressed()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->getWindowWidth()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->A:Lcom/cmic/sso/sdk/view/AuthThemeConfig;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/view/AuthThemeConfig;->isBackButton()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Z)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    if-eqz v1, :cond_0

    const-string v2, "loginMethod"

    const-string v3, "loginAuth"

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v1

    const-string v2, "200087"

    invoke-virtual {v1, v2, v0}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->loginPageInCallBack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    iget-object v2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v2}, Lcom/cmic/sso/sdk/a;->a()Lcom/cmic/sso/sdk/d/b;

    move-result-object v2

    iget-object v2, v2, Lcom/cmic/sso/sdk/d/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->m:Lcom/cmic/sso/sdk/a;

    const-string v2, "200025"

    const-string/jumbo v3, "\u53d1\u751f\u672a\u77e5\u9519\u8bef"

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    :goto_0
    return-void
.end method
