.class public Lcn/sharesdk/framework/a;
.super Ljava/lang/Object;
.source "CheckAppKey.java"


# static fields
.field public static volatile a:Z

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-boolean v1, Lcn/sharesdk/framework/a;->a:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcn/sharesdk/framework/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "CheckAppKeyAsynchronously verify the appkey"

    invoke-virtual {v0, v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 5
    new-instance v0, Lcn/sharesdk/framework/a$1;

    invoke-direct {v0}, Lcn/sharesdk/framework/a$1;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0

    .line 7
    :cond_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CheckAppKeyDetermine whether successAppKey is equal to mobsdk.getappkey"

    invoke-virtual {v1, v3, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 8
    sget-object v1, Lcn/sharesdk/framework/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v2
.end method
