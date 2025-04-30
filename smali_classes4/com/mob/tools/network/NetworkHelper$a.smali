.class Lcom/mob/tools/network/NetworkHelper$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/network/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/mob/tools/network/NetworkHelper$a;->b:Ljava/lang/String;

    const-string p1, "033!jhfhSl<fhfngnfm>kf(gnhihigfgngkfjfehi>f[ikfhfmfhhh5k$fjhmfhfi4fPgefjfk"

    .line 4
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "011?hh kf6gifmhiKf[fhfmfi1k"

    .line 5
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "004-jijghgjj"

    .line 7
    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "022=jhfh+l-fhgnhi_kQfifefjfg;fHfkgnjlOkCfkgj?fUgefj0k"

    .line 8
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "004Nfgfmfg,f"

    invoke-static {v5}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v2, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    .line 11
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "016RhhLkfCgkfjfehiNfXikfhfmfhhh%k3fjhi"

    invoke-static {v4}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 15
    array-length v2, p1

    if-eqz v2, :cond_0

    .line 16
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/mob/tools/network/NetworkHelper$a;->a:Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "no trust manager found."

    invoke-direct {p1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 18
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to initialize the standard trust manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 19
    iput-object v0, p0, Lcom/mob/tools/network/NetworkHelper$a;->a:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/mob/tools/network/NetworkHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mob/tools/network/NetworkHelper$a;-><init>(Ljava/lang/String;)V

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

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "018Dfi:ekQfifliigffgSk.fm*fWgkfjfehiWfkj"

    .line 2
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "018^fi1ekEfiflgj5kWfj!lk$fjgkfjfehiCfkj"

    .line 3
    invoke-static {v0}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 4
    aget-object p2, p3, v1

    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5
    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 6
    array-length v2, p2

    if-ne v2, v0, :cond_1

    .line 7
    :try_start_0
    aget-object p1, p2, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p3, "013Xfi>ek:fiflihfhgffgUj9fgOf*fk"

    invoke-static {p3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 9
    aget-object p2, p2, v1

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/mob/tools/network/NetworkHelper$a;->a:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    const/4 v4, 0x2

    if-lt v2, v3, :cond_2

    :try_start_1
    const-string v2, "030Mjhfh5lKfhfngnfm2kf-gnhihigfgnjijghgjjgkfjfehiPf7ikfhfmfhhhAk]fj"

    .line 13
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "android.net.http.X509TrustManagerExtensions"

    .line 14
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Class;

    aput-object v2, v5, v1

    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    .line 16
    iget-object v5, p0, Lcom/mob/tools/network/NetworkHelper$a;->a:Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "034)jhfh!l,fhgnhiAkSfifefjfgWf(fkgnfiBk>fjCf5gnjijghgjjiiPk?fj!fMfghjfgfifh_fk"

    .line 17
    invoke-static {v3}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 18
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "0189fi8ek5fiflgj6k(fjSlk^fjgkfjfehi^fkj"

    invoke-static {v6}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v8, v1

    aput-object p1, v8, v0

    aput-object p1, v8, v4

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v0

    .line 21
    iget-object p2, p0, Lcom/mob/tools/network/NetworkHelper$a;->b:Ljava/lang/String;

    aput-object p2, v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 22
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    :try_start_2
    const-string v2, "034 jhfh[lOfhgnhi+kIfifefjfgCf<fkgnfiTk.fjFfGgnjijghgjjiiZk>fj4fBfghjfgfifhBfk"

    .line 23
    invoke-static {v2}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 24
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/mob/tools/network/NetworkHelper$a;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "018:fi9ekFfiflgj4k?fj lkJfjgkfjfehiMfkj"

    invoke-static {v5}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v6, v1

    aput-object p1, v6, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 27
    iget-object v2, p0, Lcom/mob/tools/network/NetworkHelper$a;->a:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 28
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 29
    :cond_3
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "there were one more certificates but no trust manager found."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "there were no certificates."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p1, "018BhhCkf=glfifi(kgfkjWgihihifeXkXfjhi"

    .line 31
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :try_start_3
    const-string p1, "0342jhfh?lKfhgnhi-k*fifefjfgNfMfkgnfiHk^fj.fPgnjijghgjjii=k=fjQf%fghjfgfifhWfk"

    .line 32
    invoke-static {p1}, Lcom/mob/commons/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 33
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object p1

    :catchall_3
    move-exception p1

    .line 34
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_6
    const-string p1, "hashCode"

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "toString"

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
