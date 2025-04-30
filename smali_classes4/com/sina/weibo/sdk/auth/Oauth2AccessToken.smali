.class public Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final KEY_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field protected static final KEY_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field protected static final KEY_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field protected static final KEY_SCREEN_NAME:Ljava/lang/String; = "userName"

.field protected static final KEY_UID:Ljava/lang/String; = "uid"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mExpiresTime:J

.field private mRefreshToken:Ljava/lang/String;

.field private mScreenName:Ljava/lang/String;

.field private mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 5

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;-><init>()V

    const-string v1, "uid"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setUid(Ljava/lang/String;)V

    const-string v1, "userName"

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setScreenName(Ljava/lang/String;)V

    const-string v1, "access_token"

    .line 4
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setAccessToken(Ljava/lang/String;)V

    const-string v1, "refresh_token"

    .line 5
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setRefreshToken(Ljava/lang/String;)V

    const-string v1, "expires_in"

    .line 6
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setExpiresTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "Oauth2AccessToken expires parse error: "

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sina/weibo/sdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-object v0

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseAccessToken(Ljava/lang/String;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 5

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    new-instance p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    invoke-direct {p0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;-><init>()V

    const-string v1, "uid"

    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setUid(Ljava/lang/String;)V

    const-string v1, "userName"

    .line 15
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setScreenName(Ljava/lang/String;)V

    const-string v1, "access_token"

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setAccessToken(Ljava/lang/String;)V

    const-string v1, "expires_in"

    .line 17
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 19
    invoke-virtual {p0, v1, v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setExpiresTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Oauth2AccessToken expires parse error: "

    .line 20
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sina/weibo/sdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "refresh_token"

    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->setRefreshToken(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionValid()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method protected setExpiresTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mExpiresTime:J

    return-void
.end method

.method protected setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mRefreshToken:Ljava/lang/String;

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mScreenName:Ljava/lang/String;

    return-void
.end method

.method protected setUid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->mUid:Ljava/lang/String;

    return-void
.end method
