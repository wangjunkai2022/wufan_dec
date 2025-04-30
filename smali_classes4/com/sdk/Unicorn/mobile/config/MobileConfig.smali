.class public Lcom/sdk/Unicorn/mobile/config/MobileConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/sdk/f/c;


# instance fields
.field public apk:Ljava/lang/String;

.field public c:I

.field public cm:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public r:J

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sdk/Unicorn/base/module/config/BaseConfig;->apk:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdk/Unicorn/mobile/config/MobileConfig;->apk:Ljava/lang/String;

    sget-object v0, Lcom/sdk/Unicorn/base/module/config/BaseConfig;->cm:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdk/Unicorn/mobile/config/MobileConfig;->cm:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sdk/Unicorn/mobile/config/MobileConfig;->c:I

    const-string v0, "1.0"

    iput-object v0, p0, Lcom/sdk/Unicorn/mobile/config/MobileConfig;->v:Ljava/lang/String;

    const-string v0, "ZzxOAuth"

    iput-object v0, p0, Lcom/sdk/Unicorn/mobile/config/MobileConfig;->n:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdk/Unicorn/mobile/config/MobileConfig;->r:J

    return-void
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/mobile/config/MobileConfig;->apk:Ljava/lang/String;

    return-object v0
.end method

.method public getCM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/mobile/config/MobileConfig;->cm:Ljava/lang/String;

    return-object v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sdk/l/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
