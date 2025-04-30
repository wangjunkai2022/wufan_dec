.class public Lcom/sdk/x/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/x/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.sdk.x.d"

.field public static b:Ljava/lang/Boolean;


# instance fields
.field public c:Lcom/sdk/Unicorn/base/api/CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/Unicorn/base/api/CallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field public d:Landroid/content/Context;

.field public e:Lcom/sdk/x/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/x/d<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public f:Lcom/sdk/a/e;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/x/d;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sdk/Unicorn/base/api/CallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sdk/Unicorn/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p3, p0, Lcom/sdk/x/d;->c:Lcom/sdk/Unicorn/base/api/CallBack;

    iput-object p1, p0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    if-gtz p2, :cond_0

    const/16 p2, 0x1e

    :cond_0
    iput p2, p0, Lcom/sdk/x/d;->g:I

    new-instance p1, Lcom/sdk/x/d$a;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-direct {p1, p0, p2, p3}, Lcom/sdk/x/d$a;-><init>(Lcom/sdk/x/d;J)V

    iput-object p1, p0, Lcom/sdk/x/d;->e:Lcom/sdk/x/d$a;

    .line 2
    iget-object p2, p1, Lcom/sdk/x/d$a;->a:Landroid/os/Handler;

    iget-wide v0, p1, Lcom/sdk/x/d$a;->b:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    invoke-static {}, Lcom/sdk/o/c;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/sdk/x/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a(Lcom/sdk/x/d;IILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sdk/x/d;->a(IILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sdk/x/d;ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/sdk/x/d;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sdk/x/d;)Lcom/sdk/a/e;
    .locals 0

    iget-object p0, p0, Lcom/sdk/x/d;->f:Lcom/sdk/a/e;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 13

    iget-object v0, p0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    sget-object v1, Lcom/sdk/p/f$b;->b:Lcom/sdk/p/f$b;

    invoke-virtual {v1}, Lcom/sdk/p/f$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sdk/b/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sdk/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lcom/sdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/16 v5, 0x64

    const-string v4, "\u6210\u529f"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sdk/x/d;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    .line 1
    sget-boolean v1, Lcom/sdk/r/b;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "access_limit_time"

    invoke-static {v0, v1}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez v3, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/32 v8, 0x927c0

    const-wide/16 v10, 0x0

    const-string v3, "access_limit_count"

    cmp-long v12, v6, v8

    if-lez v12, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_1
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    invoke-static {v0, v3}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x1e

    cmp-long v5, v0, v3

    if-gtz v5, :cond_5

    :goto_2
    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_6

    const p1, 0x31129

    const-string v0, "\u64cd\u4f5c\u9891\u7e41\u8bf7,\u7a0d\u540e\u518d\u8bd5"

    .line 2
    invoke-virtual {p0, v2, p1, v0}, Lcom/sdk/x/d;->a(IILjava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    new-instance v1, Lcom/sdk/x/a;

    invoke-direct {v1, p0, p1}, Lcom/sdk/x/a;-><init>(Lcom/sdk/x/d;I)V

    .line 3
    new-instance v2, Lcom/sdk/y/a;

    invoke-direct {v2, v0, v1}, Lcom/sdk/y/a;-><init>(Landroid/content/Context;Lcom/sdk/e/a;)V

    .line 4
    new-instance v5, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;

    invoke-direct {v5}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "serviceType"

    invoke-virtual {v5, v0, p1}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object p1

    const-string v0, "privateIp"

    invoke-virtual {v5, v0, p1}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "newVersion"

    const-string v0, "10"

    invoke-virtual {v5, p1, v0}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v2, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 5
    new-instance v6, Lcom/sdk/g/a;

    invoke-direct {v6, v2}, Lcom/sdk/g/a;-><init>(Lcom/sdk/g/b;)V

    .line 6
    sget-object v8, Lcom/sdk/a/g$a;->b:Lcom/sdk/a/g$a;

    const/4 v7, 0x0

    const-string v4, "/dro/netm/v1.0/qc"

    invoke-virtual/range {v2 .. v8}, Lcom/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/Unicorn/base/framework/bean/DataInfo;Lcom/sdk/e/b;ILcom/sdk/a/g$a;)Lcom/sdk/a/e;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/sdk/x/d;->f:Lcom/sdk/a/e;

    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sdk/o/c;->a()Lcom/sdk/f/b;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lcom/sdk/f/b;->c:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/sdk/r/a;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/sdk/x/d;->e:Lcom/sdk/x/d$a;

    if-eqz v1, :cond_1

    .line 10
    iget-object v2, v1, Lcom/sdk/x/d$a;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/sdk/x/d;->c:Lcom/sdk/Unicorn/base/api/CallBack;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/sdk/Unicorn/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/x/d;->c:Lcom/sdk/Unicorn/base/api/CallBack;

    :cond_2
    invoke-static {}, Lcom/sdk/u/a;->a()V

    return-void
.end method

.method public final a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p5}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p5, 0x14

    invoke-static {p5}, Lcom/sdk/r/a;->a(I)Ljava/lang/String;

    move-result-object p5

    :cond_0
    move-object v5, p5

    iget-object p5, p0, Lcom/sdk/x/d;->e:Lcom/sdk/x/d$a;

    if-eqz p5, :cond_1

    .line 12
    iget-object v0, p5, Lcom/sdk/x/d$a;->a:Landroid/os/Handler;

    invoke-virtual {v0, p5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/sdk/x/d;->c:Lcom/sdk/Unicorn/base/api/CallBack;

    if-eqz v0, :cond_2

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/sdk/Unicorn/base/api/CallBack;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sdk/x/d;->c:Lcom/sdk/Unicorn/base/api/CallBack;

    :cond_2
    invoke-static {}, Lcom/sdk/u/a;->a()V

    return-void
.end method
