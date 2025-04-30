.class public Lcom/sdk/a/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "g"

.field public static b:Z

.field public static final c:Ljava/lang/String;

.field public static final d:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public e:Landroid/content/Context;

.field public f:Lcom/sdk/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/a/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    sput-boolean v0, Lcom/sdk/a/g;->b:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sdk/a/g;->c:Ljava/lang/String;

    new-instance v0, Lcom/sdk/a/f;

    invoke-direct {v0}, Lcom/sdk/a/f;-><init>()V

    sput-object v0, Lcom/sdk/a/g;->d:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sdk/a/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sdk/a/h<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdk/a/g;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    if-eqz v0, :cond_2

    .line 25
    iget-object v1, v0, Lcom/sdk/a/h;->c:Ljava/lang/String;

    .line 26
    iget-object v0, v0, Lcom/sdk/a/h;->d:Ljava/lang/String;

    .line 27
    sget-object v2, Lcom/sdk/a/g$a;->a:Lcom/sdk/a/g$a;

    invoke-static {v2}, Lcom/sdk/a/g$a;->a(Lcom/sdk/a/g$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 28
    iget-object v2, v1, Lcom/sdk/a/h;->f:Ljava/util/TreeMap;

    .line 29
    invoke-virtual {v1, v2}, Lcom/sdk/a/h;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "?"

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 30
    iget-object v1, v1, Lcom/sdk/a/h;->e:Ljava/lang/String;

    .line 31
    invoke-static {v1}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "?unikey="

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 33
    sget-object v1, Lcom/sdk/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/sdk/a/g;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, ""

    sget-object v1, Lcom/sdk/p/f$a;->c:Lcom/sdk/p/f$a;

    invoke-virtual {v1}, Lcom/sdk/p/f$a;->a()I

    :try_start_0
    invoke-static {p1}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdk/a/g;->e:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sdk/p/f;->a(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sdk/p/f$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sdk/p/f$a;->a()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0, p1}, Lcom/sdk/a/g;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sdk/p/f$a;->b:Lcom/sdk/p/f$a;

    invoke-virtual {p1}, Lcom/sdk/p/f$a;->a()I

    move-result v4

    if-eq v3, v4, :cond_5

    iget-object v4, p0, Lcom/sdk/a/g;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getAndroidSDKVersion(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0x17

    if-ge v4, v5, :cond_3

    .line 1
    iget-object v3, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 2
    iget-object v3, v3, Lcom/sdk/a/h;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v3}, Lcom/sdk/a/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/sdk/a/g;->e:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/sdk/p/f;->a(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sdk/p/f$a;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sdk/a/g;->e:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sdk/p/f;->a(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sdk/p/f$a;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Lcom/sdk/p/f$a;->a()I

    move-result v3

    const/16 v5, 0x15

    if-le v4, v5, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/sdk/p/f$a;->a()I

    move-result p1

    if-eq v3, p1, :cond_2

    new-instance p1, Lcom/sdk/a/b;

    iget-object v4, p0, Lcom/sdk/a/g;->e:Landroid/content/Context;

    invoke-direct {p1, v4, v1}, Lcom/sdk/a/b;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    goto :goto_1

    :cond_2
    move-object p1, v2

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/sdk/a/b;

    iget-object v4, p0, Lcom/sdk/a/g;->e:Landroid/content/Context;

    invoke-direct {p1, v4, v1}, Lcom/sdk/a/b;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    :goto_1
    invoke-virtual {p1}, Lcom/sdk/a/b;->a()Ljava/net/HttpURLConnection;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_4

    return-object v2

    :cond_4
    move-object v2, p1

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/net/HttpURLConnection;

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/sdk/p/f$a;->a:Lcom/sdk/p/f$a;

    invoke-virtual {p1}, Lcom/sdk/p/f$a;->a()I

    move-result p1

    if-ne v3, p1, :cond_7

    const/4 v3, 0x2

    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_8

    .line 7
    sget-boolean p2, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->smartTrust:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_8

    const-string p2, "https"

    .line 8
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    sget-object p1, Lcom/sdk/a/g;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_8
    const/16 p1, 0x7530

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object p1, p0, Lcom/sdk/a/g;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/sdk/m/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "user-agent"

    :try_start_2
    invoke-virtual {v2, p2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "netType"

    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "os"

    const-string p2, "android"

    :try_start_4
    invoke-virtual {v2, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 9
    iget-object p1, p1, Lcom/sdk/a/h;->h:Ljava/util/HashMap;

    if-eqz p1, :cond_9

    .line 10
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_9

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :cond_9
    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sdk/o/c;->c(Ljava/lang/String;)V

    sget-object p2, Lcom/sdk/a/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/sdk/a/g;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 11

    const-string v0, "--"

    const-string v1, "\r\n"

    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    const-string v3, "Content-Type"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 11
    iget-object v2, v2, Lcom/sdk/a/h;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multipart/form-data; boundary="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sdk/a/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "application/x-www-form-urlencoded"

    :goto_2
    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "connection"

    const-string v3, "keep-alive"

    invoke-virtual {p1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/sdk/a/g$a;->b:Lcom/sdk/a/g$a;

    invoke-static {v2}, Lcom/sdk/a/g$a;->a(Lcom/sdk/a/g$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 13
    iget-object v3, v3, Lcom/sdk/a/h;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "POST"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v2, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 15
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v2, :cond_7

    :try_start_0
    iget-object v5, p0, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 16
    iget-object v5, v5, Lcom/sdk/a/h;->f:Ljava/util/TreeMap;

    .line 17
    invoke-virtual {v2, v5}, Lcom/sdk/a/h;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v5

    .line 18
    iget-object v6, v2, Lcom/sdk/a/h;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "/dro/log/v1.0/log"

    .line 19
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    iget-object v5, v2, Lcom/sdk/a/h;->f:Ljava/util/TreeMap;

    .line 21
    invoke-virtual {v5}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v5

    .line 22
    :cond_3
    iget-object v2, v2, Lcom/sdk/a/h;->g:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "utf-8"

    if-eqz v2, :cond_6

    .line 23
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/sdk/a/g;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "Content-Disposition: form-data; name=\"params\""

    :try_start_3
    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, "\r\n\r\n"

    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    if-eqz v7, :cond_5

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/sdk/a/g;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v10, "Content-Disposition: form-data; name=\""

    :try_start_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v10, "\"; filename=\""

    :try_start_6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v7, "\"\r\n"

    :try_start_7
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v7, "Content-Type: application/octet-stream\r\n"

    :try_start_8
    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v7, "Content-Transfer-Encoding: binary\r\n\r\n"

    :try_start_9
    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_4
    invoke-virtual {v8, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    invoke-virtual {v3, v7, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v9, "\r\n--"

    :try_start_a
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/sdk/a/g;->c:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v9, "--\r\n"

    :try_start_b
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdk/o/c;->c(Ljava/lang/String;)V

    sget-object v1, Lcom/sdk/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/sdk/a/g;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 24
    :cond_7
    :goto_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_6

    :cond_8
    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :cond_9
    :goto_6
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    .line 34
    sget-boolean v0, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->isStrong:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "/api/netm/v1.0/qhbt"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/api/netm/v1.0/qhbv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/st/api/v1.0/ses"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method
