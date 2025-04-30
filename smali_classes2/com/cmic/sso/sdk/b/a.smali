.class public Lcom/cmic/sso/sdk/b/a;
.super Ljava/lang/Object;
.source "UMCTelephonyManagement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cmic/sso/sdk/b/a$a;
    }
.end annotation


# static fields
.field private static a:Lcom/cmic/sso/sdk/b/a;

.field private static b:J


# instance fields
.field private c:Lcom/cmic/sso/sdk/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    return-void
.end method

.method public static a()Lcom/cmic/sso/sdk/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/cmic/sso/sdk/b/a;->a:Lcom/cmic/sso/sdk/b/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cmic/sso/sdk/b/a;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/b/a;-><init>()V

    sput-object v0, Lcom/cmic/sso/sdk/b/a;->a:Lcom/cmic/sso/sdk/b/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/cmic/sso/sdk/b/a;->a:Lcom/cmic/sso/sdk/b/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 4

    const-string p2, "UMCTelephonyManagement"

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/16 v2, 0x16

    if-lt v0, v2, :cond_4

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v2}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v2

    if-ne v2, v1, :cond_0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;I)I

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android 7.0\u53ca\u4ee5\u4e0a\u624b\u673agetDefaultDataSubscriptionId\u9002\u914d\u6210\u529f: dataSubId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v1}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "android 7.0\u53ca\u4ee5\u4e0a\u624b\u673agetDefaultDataSubscriptionId\u9002\u914d\u5931\u8d25"

    .line 22
    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 23
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "getDefaultDataSubId"

    :try_start_2
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    instance-of v2, v1, Ljava/lang/Integer;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;I)I

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android 7.0\u4ee5\u4e0b\u624b\u673agetDefaultDataSubId\u9002\u914d\u6210\u529f: dataSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v2}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string v1, "readDefaultDataSubId-->getDefaultDataSubId \u53cd\u5c04\u51fa\u9519"

    .line 28
    invoke-static {p2, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v2, "getDefaultDataSubscriptionId"

    :try_start_4
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;I)I

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u53cd\u5c04getDefaultDataSubscriptionId\u9002\u914d\u6210\u529f: dataSubId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v0}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    const-string p1, "getDefaultDataSubscriptionId-->getDefaultDataSubscriptionId \u53cd\u5c04\u51fa\u9519"

    .line 34
    invoke-static {p2, p1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_4
    iget-object p1, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {p1, v1}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;I)I

    :cond_5
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 10

    const-string v0, "sim_id"

    const-string v1, "_id"

    const-string v2, "UMCTelephonyManagement"

    const-string v3, "readSimInfoDbStart"

    .line 3
    invoke-static {v2, v3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content://telephony/siminfo"

    .line 4
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 p1, 0x0

    .line 6
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "sim_id>=?"

    :try_start_1
    const-string v3, "0"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 10
    iget-object v5, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v5}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v5}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 11
    iget-object v5, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v5}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 12
    iget-object v5, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v5, v3}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;I)I

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u901a\u8fc7\u8bfb\u53d6sim db\u83b7\u53d6\u6570\u636e\u6d41\u91cf\u5361\u7684\u5361\u69fd\u503c\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    iget-object v5, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v5}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 15
    iget-object v3, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v3, v4}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "readSimInfoDb error"

    .line 16
    invoke-static {v2, v0}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 17
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string p1, "readSimInfoDbEnd"

    .line 18
    invoke-static {v2, p1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_4

    .line 19
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 20
    :cond_4
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private c(Landroid/content/Context;)I
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "UMCTelephonyManagement"

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p1, v1}, Lcom/cmic/sso/sdk/e/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {}, Lcom/cmic/sso/sdk/e/m;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "getDataNetworkType"

    const/4 v4, 0x1

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data dataNetworkType defaultDataSubId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v5}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v4, [Ljava/lang/Object;

    .line 6
    iget-object v4, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {v4}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data dataNetworkType ---------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data dataNetworkType ---->=N "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception p1

    const-string v1, "data dataNetworkType ----\u53cd\u5c04\u51fa\u9519-----"

    .line 11
    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/b/a;->c(Landroid/content/Context;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "0"

    return-object p1

    :pswitch_0
    const-string p1, "4"

    return-object p1

    :pswitch_1
    const-string p1, "3"

    return-object p1

    :pswitch_2
    const-string p1, "2"

    return-object p1

    :pswitch_3
    const-string p1, "1"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;ZZ)V
    .locals 5

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/cmic/sso/sdk/b/a;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v0, Lcom/cmic/sso/sdk/b/a$a;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/b/a$a;-><init>()V

    iput-object v0, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    if-nez p3, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cmic/sso/sdk/b/a;->a(Landroid/content/Context;Z)V

    .line 7
    invoke-static {}, Lcom/cmic/sso/sdk/e/m;->e()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/cmic/sso/sdk/e/m;->d()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "UMCTelephonyManagement"

    const-string/jumbo p3, "\u534e\u4e3a\u624b\u673a\u517c\u5bb9\u6027\u5904\u7406"

    .line 8
    invoke-static {p2, p3}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {p2}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result p2

    const/4 p3, -0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {p2}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {p2}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result p2

    if-ne p2, p3, :cond_3

    .line 11
    iget-object p2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {p2}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;I)I

    .line 12
    :cond_3
    iget-object p2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {p2, p3}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;I)I

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {p2}, Lcom/cmic/sso/sdk/b/a$a;->b(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result p2

    if-ne p2, p3, :cond_5

    iget-object p2, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    invoke-static {p2}, Lcom/cmic/sso/sdk/b/a$a;->a(Lcom/cmic/sso/sdk/b/a$a;)I

    move-result p2

    if-eq p2, p3, :cond_6

    .line 14
    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_6

    .line 15
    invoke-direct {p0, p1}, Lcom/cmic/sso/sdk/b/a;->b(Landroid/content/Context;)V

    .line 16
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/cmic/sso/sdk/b/a;->b:J

    return-void
.end method

.method public b()Lcom/cmic/sso/sdk/b/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/b/a;->c:Lcom/cmic/sso/sdk/b/a$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/cmic/sso/sdk/b/a$a;

    invoke-direct {v0}, Lcom/cmic/sso/sdk/b/a$a;-><init>()V

    :cond_0
    return-object v0
.end method
