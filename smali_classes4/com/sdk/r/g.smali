.class public Lcom/sdk/r/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/sdk/s/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/cucc/needless/cmb/sm/SmUtils_CMB;->digestEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/cucc/needless/cmb/sm/SmUtils_CMB;->asymmetricEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/cucc/needless/cmb/sm/SmUtils_CMB;->symmetryEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p3, p4}, Lcom/cucc/needless/cmb/sm/SmUtils_CMB;->asymmetricDecrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/sdk/r/c;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/cucc/needless/cmb/sm/Util;->byteToHex([B)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cucc/needless/cmb/sm/Util;->hexToByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cucc/needless/cmb/sm/Util;->hexToByte(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/sdk/r/c;->a(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/cucc/needless/cmb/sm/SmUtils_CMB;->symmetryDecrypt([B[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
