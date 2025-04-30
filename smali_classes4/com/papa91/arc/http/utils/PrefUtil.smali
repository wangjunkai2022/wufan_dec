.class public Lcom/papa91/arc/http/utils/PrefUtil;
.super Ljava/lang/Object;
.source "PrefUtil.java"


# static fields
.field static prefUtil:Lcom/papa91/arc/http/utils/PrefUtil;


# instance fields
.field context:Landroid/content/Context;

.field mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/http/utils/PrefUtil;->context:Landroid/content/Context;

    const-string v0, "Papa_Stat_SharedPreferences"

    const/4 v1, 0x4

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/http/utils/PrefUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/papa91/arc/http/utils/PrefUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/http/utils/PrefUtil;->prefUtil:Lcom/papa91/arc/http/utils/PrefUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa91/arc/http/utils/PrefUtil;

    invoke-direct {v0, p0}, Lcom/papa91/arc/http/utils/PrefUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa91/arc/http/utils/PrefUtil;->prefUtil:Lcom/papa91/arc/http/utils/PrefUtil;

    .line 3
    :cond_0
    sget-object p0, Lcom/papa91/arc/http/utils/PrefUtil;->prefUtil:Lcom/papa91/arc/http/utils/PrefUtil;

    return-object p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/utils/PrefUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getDNSHttpUrl()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/utils/PrefUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DNSHttpUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/utils/PrefUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public getRequestHeaders()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/utils/PrefUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "RequestHeaders"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/utils/PrefUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/http/utils/PrefUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/http/utils/PrefUtil;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 8
    :cond_2
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 10
    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    return-void
.end method
