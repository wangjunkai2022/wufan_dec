.class Lcom/xinzhu/overmind/server/accounts/c;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field private static final c:Ljava/lang/String; = "Account"

.field private static final d:Ljava/lang/String; = "cipher"

.field private static final e:Ljava/lang/String; = "mac"

.field private static final f:Ljava/lang/String; = "AES"

.field private static final g:Ljava/lang/String; = "iv"

.field private static final h:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final i:Ljava/lang/String; = "HMACSHA256"

.field private static final j:I = 0x10

.field private static k:Lcom/xinzhu/overmind/server/accounts/c;


# instance fields
.field private final a:Ljavax/crypto/SecretKey;

.field private final b:Ljavax/crypto/SecretKey;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES"

    .line 2
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/c;->a:Ljavax/crypto/SecretKey;

    const-string v0, "HMACSHA256"

    .line 4
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/c;->b:Ljavax/crypto/SecretKey;

    return-void
.end method

.method private static a([B[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 3
    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_2
    if-ne p0, p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method private b([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "iv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "HMACSHA256"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/c;->b:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 3
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 4
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 5
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method static declared-synchronized e()Lcom/xinzhu/overmind/server/accounts/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Lcom/xinzhu/overmind/server/accounts/c;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/server/accounts/c;->k:Lcom/xinzhu/overmind/server/accounts/c;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/c;

    invoke-direct {v1}, Lcom/xinzhu/overmind/server/accounts/c;-><init>()V

    sput-object v1, Lcom/xinzhu/overmind/server/accounts/c;->k:Lcom/xinzhu/overmind/server/accounts/c;

    .line 3
    :cond_0
    sget-object v1, Lcom/xinzhu/overmind/server/accounts/c;->k:Lcom/xinzhu/overmind/server/accounts/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private f([B[B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipherArray",
            "iv",
            "macArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/c;->b([B[B)[B

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xinzhu/overmind/server/accounts/c;->a([B[B)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    const-string p2, "Account"

    .line 3
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method c(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "Cannot decrypt null bundle."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "iv"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "cipher"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "mac"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 5
    invoke-direct {p0, v1, v0, p1}, Lcom/xinzhu/overmind/server/accounts/c;->f([B[B[B)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 7
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x2

    .line 8
    iget-object v3, p0, Lcom/xinzhu/overmind/server/accounts/c;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 9
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 13
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method

.method d(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "Cannot encrypt null bundle."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 6
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/c;->a:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 8
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 9
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/xinzhu/overmind/server/accounts/c;->b([B[B)[B

    move-result-object v1

    .line 11
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "cipher"

    .line 12
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "mac"

    .line 13
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "iv"

    .line 14
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v2
.end method
