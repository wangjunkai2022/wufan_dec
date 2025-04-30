.class public abstract Lcom/netease/nis/quicklogin/helper/a;
.super Ljava/lang/Object;
.source "AbstractLoginHelper.java"


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/a;->a:Z

    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/a;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/netease/nis/quicklogin/helper/a$a;

    invoke-direct {v0, p0, p3, p4, p2}, Lcom/netease/nis/quicklogin/helper/a$a;-><init>(Lcom/netease/nis/quicklogin/helper/a;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Lcom/netease/nis/basesdk/HttpUtil;->doGetRequestByMobileNet(Landroid/content/Context;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/netease/nis/quicklogin/helper/a$b;

    invoke-direct {p1, p0, p3, p4, p2}, Lcom/netease/nis/quicklogin/helper/a$b;-><init>(Lcom/netease/nis/quicklogin/helper/a;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/netease/nis/basesdk/HttpUtil;->doGetRequestByForm(Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    :goto_0
    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
.end method

.method public abstract a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 0

    return-void
.end method
