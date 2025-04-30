.class final Lcom/netease/nis/quicklogin/a;
.super Ljava/lang/Object;
.source "QuickLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Lcom/netease/nis/quicklogin/helper/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netease/nis/quicklogin/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/a;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/netease/nis/quicklogin/a$a;->a(Lcom/netease/nis/quicklogin/a$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/nis/quicklogin/a;->b:Z

    .line 4
    invoke-static {p2}, Lcom/netease/nis/quicklogin/a$a;->b(Lcom/netease/nis/quicklogin/a$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/a;->c:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/netease/nis/quicklogin/a$a;->c(Lcom/netease/nis/quicklogin/a$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/a;->d:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lcom/netease/nis/quicklogin/a$a;->d(Lcom/netease/nis/quicklogin/a$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/a;->e:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Lcom/netease/nis/quicklogin/a$a;->e(Lcom/netease/nis/quicklogin/a$a;)I

    move-result p1

    iput p1, p0, Lcom/netease/nis/quicklogin/a;->f:I

    return-void
.end method

.method private a()Lcom/netease/nis/quicklogin/helper/a;
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/a;->g:Lcom/netease/nis/quicklogin/helper/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 12
    :cond_0
    iget v0, p0, Lcom/netease/nis/quicklogin/a;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 13
    new-instance v0, Lcom/netease/nis/quicklogin/helper/b;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nis/quicklogin/helper/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/a;->g:Lcom/netease/nis/quicklogin/helper/a;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 14
    new-instance v0, Lcom/netease/nis/quicklogin/helper/c;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/a;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/netease/nis/quicklogin/a;->b:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/nis/quicklogin/helper/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/a;->g:Lcom/netease/nis/quicklogin/helper/a;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 15
    new-instance v0, Lcom/netease/nis/quicklogin/helper/d;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/a;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nis/quicklogin/helper/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/a;->g:Lcom/netease/nis/quicklogin/helper/a;

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/a;->g:Lcom/netease/nis/quicklogin/helper/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 3

    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onePass [timeStart]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/a;->a()Lcom/netease/nis/quicklogin/helper/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/nis/quicklogin/helper/a;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/a;->a()Lcom/netease/nis/quicklogin/helper/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/nis/quicklogin/helper/a;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 3

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/a;->a()Lcom/netease/nis/quicklogin/helper/a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/netease/nis/quicklogin/helper/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    iget-object v0, p0, Lcom/netease/nis/quicklogin/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
