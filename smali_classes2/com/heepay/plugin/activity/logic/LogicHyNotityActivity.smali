.class public abstract Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;
    }
.end annotation


# static fields
.field protected static final o:Ljava/lang/Integer;

.field protected static final p:Ljava/lang/Integer;

.field protected static final q:Ljava/lang/Integer;

.field protected static final r:Ljava/lang/Integer;

.field protected static final s:Ljava/lang/Integer;

.field protected static final t:Ljava/lang/Integer;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/heepay/plugin/b/a;

.field public f:Ljava/lang/String;

.field public g:Landroid/app/ProgressDialog;

.field protected h:Z

.field protected i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field protected m:Ljava/util/Timer;

.field public n:Z

.field protected u:Landroid/webkit/WebView;

.field protected v:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$a;

.field protected w:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->o:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->p:Ljava/lang/Integer;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->q:Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->r:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->s:Ljava/lang/Integer;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->t:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->i:I

    new-instance v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$6;

    invoke-direct {v0, p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$6;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V

    iput-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->w:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2

    invoke-virtual {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->f()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->w:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish is called:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------------type1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$5;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v0}, Lcom/heepay/plugin/c/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallBack\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff0crespMessage\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--\u8fd4\u56de\u652f\u4ed8\u7ed3\u679c"

    invoke-static {v1, v0}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->h()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "respCode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "respMessage"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0x1020

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string p1, "setCallBack"

    invoke-virtual {p0, p1}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/heepay/plugin/c/i;->a()Lcom/heepay/plugin/c/i;

    move-result-object p1

    const-string/jumbo v1, "\u4f20\u5165\u7684TokenID\u53c2\u6570\u4e3a\u7a7a"

    invoke-virtual {p1, p0, v1}, Lcom/heepay/plugin/c/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/heepay/plugin/c/i;->a()Lcom/heepay/plugin/c/i;

    move-result-object p1

    const-string/jumbo p2, "\u4f20\u5165\u7684agentID\u4e3a\u4e0d\u5408\u6cd5"

    invoke-virtual {p1, p0, p2}, Lcom/heepay/plugin/c/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/heepay/plugin/c/i;->a()Lcom/heepay/plugin/c/i;

    move-result-object p1

    const-string/jumbo p2, "\u4f20\u5165\u7684agentBillID\u53c2\u6570\u4e3a\u7a7a"

    invoke-virtual {p1, p0, p2}, Lcom/heepay/plugin/c/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/heepay/plugin/c/i;->a()Lcom/heepay/plugin/c/i;

    move-result-object p1

    const-string/jumbo p2, "\u4f20\u5165\u7684payType\u53c2\u6570\u4e3a\u7a7a"

    invoke-virtual {p1, p0, p2}, Lcom/heepay/plugin/c/i;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move v0, p1

    :goto_1
    return v0
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->h:Z

    new-instance v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$1;

    invoke-direct {v0, p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$1;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V

    invoke-static {v0}, Lcom/heepay/plugin/c/h;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heepay/plugin/c/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "intent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string p1, "-2"

    const-string/jumbo v0, "\u8bf7\u68c0\u67e5\u662f\u5426\u5b89\u88c5\u5ba2\u6237\u7aef"

    invoke-virtual {p0, p1, v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->f:Ljava/lang/String;

    const-string v0, "22"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "\u652f\u4ed8\u5b9dAPP\u5524\u8d77\u6210\u529f"

    :goto_2
    invoke-virtual {p0, p1}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->t:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_1
    iget-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->f:Ljava/lang/String;

    const-string v0, "30"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "\u5fae\u4fe1APP\u5524\u8d77\u6210\u529f"

    goto :goto_2

    :cond_2
    :goto_3
    return-void
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(token\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")-(message\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "\u4e0a\u62a5\u4fe1\u606f"

    invoke-static {v1, p1}, Lcom/heepay/plugin/c/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected c()V
    .locals 2

    invoke-static {}, Lcom/heepay/plugin/c/f;->a()Lcom/heepay/plugin/c/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heepay/plugin/c/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$2;

    invoke-direct {v0, p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$2;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V

    invoke-static {v0}, Lcom/heepay/plugin/c/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "-2"

    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0, v1}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected d()V
    .locals 2

    invoke-static {}, Lcom/heepay/plugin/c/f;->a()Lcom/heepay/plugin/c/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heepay/plugin/c/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->h:Z

    const-string v0, ""

    const-string/jumbo v1, "\u6b63\u5728\u542f\u52a8\u652f\u4ed8..."

    invoke-virtual {p0, p0, v0, v1}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$3;

    invoke-direct {v0, p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$3;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V

    invoke-static {v0}, Lcom/heepay/plugin/c/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "-2"

    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0, v1}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected e()V
    .locals 2

    invoke-static {}, Lcom/heepay/plugin/c/f;->a()Lcom/heepay/plugin/c/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heepay/plugin/c/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$4;

    invoke-direct {v0, p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$4;-><init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;)V

    invoke-static {v0}, Lcom/heepay/plugin/c/h;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string v0, "-2"

    const-string/jumbo v1, "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {p0, v0, v1}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected f()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    :cond_2
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v5, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v1, :cond_5

    if-ne v0, v2, :cond_2

    :cond_5
    :goto_1
    return-void
.end method

.method protected g()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->g()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 4

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HyApp(H_e_e_paySDK/1) "

    invoke-static {v2}, Lcom/heepay/plugin/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    new-instance v1, Lcom/heepay/plugin/d/c;

    move-object v2, p0

    check-cast v2, Lcom/heepay/plugin/activity/HyNotityActivity;

    invoke-direct {v1, v2}, Lcom/heepay/plugin/d/c;-><init>(Lcom/heepay/plugin/activity/HyNotityActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    new-instance v1, Lcom/heepay/plugin/d/b;

    const-class v2, Lcom/heepay/plugin/d/a;

    const-string v3, "HPSDK"

    invoke-direct {v1, v3, v2}, Lcom/heepay/plugin/d/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method protected j()V
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->e:Lcom/heepay/plugin/b/a;

    invoke-virtual {v0, p0}, Lcom/heepay/plugin/b/a;->a(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->d()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "closeable"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->u:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v0, "onKeyDown"

    invoke-virtual {p0, v0}, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
