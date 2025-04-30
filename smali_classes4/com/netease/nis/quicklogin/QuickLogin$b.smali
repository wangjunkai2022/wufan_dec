.class Lcom/netease/nis/quicklogin/QuickLogin$b;
.super Ljava/lang/Object;
.source "QuickLogin.java"

# interfaces
.implements Lcom/netease/nis/quicklogin/QuickLogin$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/QuickLogin;->getToken(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field final synthetic b:Lcom/netease/nis/quicklogin/QuickLogin;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netease/nis/quicklogin/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {v0, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/a;)Lcom/netease/nis/quicklogin/a;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    .line 3
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->b:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/QuickLogin;->c(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    invoke-virtual {p1, v0, v1}, Lcom/netease/nis/quicklogin/a;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    return-void
.end method
