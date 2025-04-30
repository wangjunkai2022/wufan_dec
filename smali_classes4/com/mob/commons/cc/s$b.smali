.class Lcom/mob/commons/cc/s$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/mob/commons/cc/s$b;->b:Ljava/lang/String;

    const-string p1, "javax.net.ssl.TrustManagerFactory"

    .line 4
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "X509"

    aput-object v3, v1, v5

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "java.security.KeyStore"

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "init"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v1, v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 11
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getTrustManagers"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v5, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 15
    array-length v1, p1

    if-eqz v1, :cond_0

    .line 16
    aget-object p1, p1, v5

    iput-object p1, p0, Lcom/mob/commons/cc/s$b;->a:Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "no trust manager found."

    invoke-direct {p1, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    iput-object v0, p0, Lcom/mob/commons/cc/s$b;->a:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/mob/commons/cc/s$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/commons/cc/s$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-class p1, Ljava/lang/String;

    const-string v0, "java.security.cert.X509Certificate"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "checkClientTrusted"

    .line 2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "checkServerTrusted"

    .line 3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 4
    aget-object p2, p3, v3

    check-cast p2, [Ljava/lang/Object;

    const/4 v2, 0x1

    .line 5
    aget-object p3, p3, v2

    check-cast p3, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 6
    array-length v4, p2

    if-ne v4, v2, :cond_1

    .line 7
    :try_start_0
    aget-object p1, p2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p3, "checkValidity"

    new-array v0, v3, [Ljava/lang/Class;

    invoke-virtual {p1, p3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 9
    aget-object p2, p2, v3

    new-array p3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v4, p0, Lcom/mob/commons/cc/s$b;->a:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 11
    invoke-static {}, Lcom/mob/commons/cc/s;->a()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    :try_start_1
    const-string v4, "javax.net.ssl.X509TrustManager"

    .line 12
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "android.net.http.X509TrustManagerExtensions"

    .line 13
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v4, v7, v3

    .line 14
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    .line 15
    iget-object v7, p0, Lcom/mob/commons/cc/s$b;->a:Ljava/lang/Object;

    aput-object v7, v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v8, v3

    aput-object p1, v8, v2

    aput-object p1, v8, v5

    invoke-virtual {v6, v1, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object p3, v0, v2

    .line 20
    iget-object p2, p0, Lcom/mob/commons/cc/s$b;->b:Ljava/lang/String;

    aput-object p2, v0, v5

    invoke-virtual {p1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 23
    iget-object v4, p0, Lcom/mob/commons/cc/s$b;->a:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v6, v3

    aput-object p1, v6, v2

    invoke-virtual {v4, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 25
    iget-object v0, p0, Lcom/mob/commons/cc/s$b;->a:Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v3

    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 26
    :cond_3
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "there were one more certificates but no trust manager found."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "there were no certificates."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "getAcceptedIssuers"

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 29
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 30
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :cond_6
    const-string p1, "hashCode"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "toString"

    .line 33
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    :cond_8
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
