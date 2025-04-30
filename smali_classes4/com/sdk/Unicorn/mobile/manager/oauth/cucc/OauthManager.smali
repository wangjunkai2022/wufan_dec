.class public Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;
.super Lcom/sdk/Unicorn/base/module/manager/SDKManager;
.source ""


# static fields
.field public static volatile manager:Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;-><init>()V

    iput-object p1, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;
    .locals 2

    sget-object v0, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->manager:Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->manager:Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;

    invoke-direct {v1, p0}, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->manager:Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->manager:Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;

    return-object p0
.end method


# virtual methods
.method public getAuthoriseCode(ILcom/sdk/Unicorn/base/api/CallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/sdk/Unicorn/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/sdk/x/d;

    iget-object v1, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/sdk/x/d;-><init>(Landroid/content/Context;ILcom/sdk/Unicorn/base/api/CallBack;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/sdk/x/d;->a(I)V

    return-void
.end method

.method public getMobileForCode(Ljava/lang/String;ILcom/sdk/Unicorn/base/api/CallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sdk/Unicorn/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x18a89

    const-string p2, "\u6388\u6743\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p3, p1, p2}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->toFailed(Lcom/sdk/Unicorn/base/api/CallBack;ILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sdk/x/d;

    iget-object v1, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lcom/sdk/x/d;-><init>(Landroid/content/Context;ILcom/sdk/Unicorn/base/api/CallBack;)V

    .line 1
    iget-object p2, v0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/sdk/b/a;->a(Landroid/content/Context;)V

    iget-object p2, v0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    const/4 p3, 0x0

    new-instance v1, Lcom/sdk/x/c;

    invoke-direct {v1, v0}, Lcom/sdk/x/c;-><init>(Lcom/sdk/x/d;)V

    .line 2
    new-instance v2, Lcom/sdk/y/a;

    invoke-direct {v2, p2, v1}, Lcom/sdk/y/a;-><init>(Landroid/content/Context;Lcom/sdk/e/a;)V

    invoke-static {p3}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, "accessCode"

    if-eqz p2, :cond_1

    .line 3
    new-instance v5, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;

    invoke-direct {v5}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;-><init>()V

    invoke-virtual {v5, v1, p1}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v2, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 4
    new-instance v6, Lcom/sdk/g/a;

    invoke-direct {v6, v2}, Lcom/sdk/g/a;-><init>(Lcom/sdk/g/b;)V

    .line 5
    sget-object v8, Lcom/sdk/a/g$a;->b:Lcom/sdk/a/g$a;

    const/4 v7, 0x0

    const-string v4, "/api/netm/v1.0/qhbt"

    invoke-virtual/range {v2 .. v8}, Lcom/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/Unicorn/base/framework/bean/DataInfo;Lcom/sdk/e/b;ILcom/sdk/a/g$a;)Lcom/sdk/a/e;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v5, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;

    invoke-direct {v5}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;-><init>()V

    invoke-virtual {v5, v1, p1}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mobile"

    invoke-virtual {v5, p1, p3}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, v2, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 7
    new-instance v6, Lcom/sdk/g/a;

    invoke-direct {v6, v2}, Lcom/sdk/g/a;-><init>(Lcom/sdk/g/b;)V

    .line 8
    sget-object v8, Lcom/sdk/a/g$a;->b:Lcom/sdk/a/g$a;

    const/4 v7, 0x0

    const-string v4, "/api/netm/v1.0/qhbv"

    invoke-virtual/range {v2 .. v8}, Lcom/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/Unicorn/base/framework/bean/DataInfo;Lcom/sdk/e/b;ILcom/sdk/a/g$a;)Lcom/sdk/a/e;

    move-result-object p1

    .line 9
    :goto_0
    iput-object p1, v0, Lcom/sdk/x/d;->f:Lcom/sdk/a/e;

    return-void
.end method

.method public getMobileForCode(Ljava/lang/String;Ljava/lang/String;ILcom/sdk/Unicorn/base/api/CallBack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sdk/Unicorn/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x18a89

    const-string p2, "\u6388\u6743\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    :goto_0
    invoke-static {p4, p1, p2}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->toFailed(Lcom/sdk/Unicorn/base/api/CallBack;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x18a8a

    const-string p2, "\u8ba4\u8bc1\u7684\u624b\u673a\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sdk/x/d;

    iget-object v1, p0, Lcom/sdk/Unicorn/mobile/manager/oauth/cucc/OauthManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4}, Lcom/sdk/x/d;-><init>(Landroid/content/Context;ILcom/sdk/Unicorn/base/api/CallBack;)V

    .line 10
    iget-object p3, v0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    .line 11
    sget-object p4, Lcom/sdk/b/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdk/b/a;->b:Ljava/lang/Boolean;

    const-string v2, "oauth cache clear"

    invoke-static {p4, v2, v1}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    const-string p4, "accessCode1"

    invoke-static {p3, p4}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    iget-object p3, v0, Lcom/sdk/x/d;->d:Landroid/content/Context;

    new-instance p4, Lcom/sdk/x/b;

    invoke-direct {p4, v0}, Lcom/sdk/x/b;-><init>(Lcom/sdk/x/d;)V

    .line 13
    new-instance v1, Lcom/sdk/y/a;

    invoke-direct {v1, p3, p4}, Lcom/sdk/y/a;-><init>(Landroid/content/Context;Lcom/sdk/e/a;)V

    invoke-static {p2}, Lcom/sdk/o/b;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string p4, "accessCode"

    if-eqz p3, :cond_2

    .line 14
    new-instance v4, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;

    invoke-direct {v4}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;-><init>()V

    invoke-virtual {v4, p4, p1}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 15
    new-instance v5, Lcom/sdk/g/a;

    invoke-direct {v5, v1}, Lcom/sdk/g/a;-><init>(Lcom/sdk/g/b;)V

    .line 16
    sget-object v7, Lcom/sdk/a/g$a;->b:Lcom/sdk/a/g$a;

    const/4 v6, 0x0

    const-string v3, "/api/netm/v1.0/qhbt"

    invoke-virtual/range {v1 .. v7}, Lcom/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/Unicorn/base/framework/bean/DataInfo;Lcom/sdk/e/b;ILcom/sdk/a/g$a;)Lcom/sdk/a/e;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_2
    new-instance v4, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;

    invoke-direct {v4}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;-><init>()V

    invoke-virtual {v4, p4, p1}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mobile"

    invoke-virtual {v4, p1, p2}, Lcom/sdk/Unicorn/base/framework/bean/DataInfo;->putData(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/sdk/g/b;->i:Ljava/lang/String;

    .line 18
    new-instance v5, Lcom/sdk/g/a;

    invoke-direct {v5, v1}, Lcom/sdk/g/a;-><init>(Lcom/sdk/g/b;)V

    .line 19
    sget-object v7, Lcom/sdk/a/g$a;->b:Lcom/sdk/a/g$a;

    const/4 v6, 0x0

    const-string v3, "/api/netm/v1.0/qhbv"

    invoke-virtual/range {v1 .. v7}, Lcom/sdk/g/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/Unicorn/base/framework/bean/DataInfo;Lcom/sdk/e/b;ILcom/sdk/a/g$a;)Lcom/sdk/a/e;

    move-result-object p1

    .line 20
    :goto_1
    iput-object p1, v0, Lcom/sdk/x/d;->f:Lcom/sdk/a/e;

    return-void
.end method
