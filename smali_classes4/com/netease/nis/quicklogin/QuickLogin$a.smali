.class Lcom/netease/nis/quicklogin/QuickLogin$a;
.super Ljava/lang/Object;
.source "QuickLogin.java"

# interfaces
.implements Lcom/netease/nis/quicklogin/QuickLogin$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/QuickLogin;->prefetchMobileNumber(Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

.field final synthetic b:Lcom/netease/nis/quicklogin/QuickLogin;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nis/quicklogin/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/a;)Lcom/netease/nis/quicklogin/a;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prefetchMobileNumber [startTime] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/QuickLogin;->b(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    invoke-virtual {p1, v0, v1}, Lcom/netease/nis/quicklogin/a;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V

    return-void
.end method
