.class Lnet/lingala/zip4j/crypto/PBKDF2/d;
.super Ljava/lang/Object;
.source "PBKDF2HexFormatter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnet/lingala/zip4j/crypto/PBKDF2/e;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    .line 1
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2
    array-length v1, p2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3
    aget-object v2, p2, v1

    invoke-static {v2}, Lnet/lingala/zip4j/crypto/PBKDF2/a;->c(Ljava/lang/String;)[B

    move-result-object v2

    .line 4
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    .line 5
    aget-object p2, p2, v3

    invoke-static {p2}, Lnet/lingala/zip4j/crypto/PBKDF2/a;->c(Ljava/lang/String;)[B

    move-result-object p2

    .line 6
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->j([B)V

    .line 7
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->i(I)V

    .line 8
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->f([B)V

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public b(Lnet/lingala/zip4j/crypto/PBKDF2/e;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->e()[B

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/a;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/e;->a()[B

    move-result-object p1

    invoke-static {p1}, Lnet/lingala/zip4j/crypto/PBKDF2/a;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
