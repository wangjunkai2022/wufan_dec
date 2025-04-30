.class public Lnet/lingala/zip4j/crypto/PBKDF2/e;
.super Ljava/lang/Object;
.source "PBKDF2Parameters.java"


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->c:Ljava/lang/String;

    const-string v1, "UTF-8"

    .line 3
    iput-object v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->d:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->a:[B

    const/16 v1, 0x3e8

    .line 5
    iput v1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->b:I

    .line 6
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->c:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->d:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->a:[B

    .line 11
    iput p4, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->b:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->e:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->c:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->d:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->a:[B

    .line 17
    iput p4, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->b:I

    .line 18
    iput-object p5, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->e:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->e:[B

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->b:I

    return v0
.end method

.method public e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->a:[B

    return-object v0
.end method

.method public f([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->e:[B

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->c:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->d:Ljava/lang/String;

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->b:I

    return-void
.end method

.method public j([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/PBKDF2/e;->a:[B

    return-void
.end method
