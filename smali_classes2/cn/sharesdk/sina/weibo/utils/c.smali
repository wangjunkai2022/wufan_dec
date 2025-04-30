.class public Lcn/sharesdk/sina/weibo/utils/c;
.super Ljava/lang/Object;
.source "WeiboAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/sina/weibo/utils/c$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:Lcn/sharesdk/sina/weibo/utils/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sina.weibo.sdkProvider/query/package"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/sharesdk/sina/weibo/utils/c;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcn/sharesdk/sina/weibo/utils/c;->b:Lcn/sharesdk/sina/weibo/utils/c$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x40

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcn/sharesdk/framework/utils/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const-string v0, "18da2bf10352443a00a5e046d9fca6bd"

    invoke-static {p0, v0}, Lcn/sharesdk/sina/weibo/utils/c;->a([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result p0

    return p0

    :catchall_0
    return v1
.end method

.method private static a([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 5
    aget-object v3, p0, v2

    .line 6
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->MD5([B)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "check pass"

    invoke-virtual {p0, v0, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method
