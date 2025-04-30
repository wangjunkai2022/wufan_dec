.class public Lcom/sdk/f/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/String; = ""

.field public static c:Ljava/lang/String; = ""


# direct methods
.method public static a(Landroid/content/Context;)Lcom/sdk/Unicorn/base/framework/bean/AInfo;
    .locals 2

    new-instance v0, Lcom/sdk/Unicorn/base/framework/bean/AInfo;

    invoke-direct {v0}, Lcom/sdk/Unicorn/base/framework/bean/AInfo;-><init>()V

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getAppLable(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->setN(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->setC(I)V

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->setV(Ljava/lang/String;)V

    sget-boolean v1, Lcom/sdk/f/a;->a:Z

    if-eqz v1, :cond_0

    sget-object p0, Lcom/sdk/f/a;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->setPk(Ljava/lang/String;)V

    sget-object p0, Lcom/sdk/f/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->setPk(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getAppMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sdk/Unicorn/base/framework/bean/AInfo;->setMd5(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sdk/Unicorn/base/framework/bean/KInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/sdk/Unicorn/base/framework/bean/PInfo;
    .locals 2

    new-instance v0, Lcom/sdk/Unicorn/base/framework/bean/PInfo;

    invoke-direct {v0}, Lcom/sdk/Unicorn/base/framework/bean/PInfo;-><init>()V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/PInfo;->setOs(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lcom/sdk/Unicorn/base/framework/bean/SInfo;
    .locals 2

    new-instance v0, Lcom/sdk/Unicorn/base/framework/bean/SInfo;

    invoke-direct {v0}, Lcom/sdk/Unicorn/base/framework/bean/SInfo;-><init>()V

    sget-object v1, Lcom/sdk/Unicorn/base/module/config/BaseConfig;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->setN(Ljava/lang/String;)V

    sget v1, Lcom/sdk/Unicorn/base/module/config/BaseConfig;->c:I

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->setC(I)V

    sget-object v1, Lcom/sdk/Unicorn/base/module/config/BaseConfig;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->setV(Ljava/lang/String;)V

    sget-object v1, Lcom/sdk/Unicorn/base/module/config/BaseConfig;->cm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sdk/Unicorn/base/framework/bean/SInfo;->setCm(Ljava/lang/String;)V

    return-object v0
.end method
