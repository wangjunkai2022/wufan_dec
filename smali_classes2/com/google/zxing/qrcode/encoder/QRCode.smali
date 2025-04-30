.class public final Lcom/google/zxing/qrcode/encoder/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"


# static fields
.field public static final NUM_MASK_PATTERNS:I = 0x8


# instance fields
.field private ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private maskPattern:I

.field private matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

.field private matrixWidth:I

.field private mode:Lcom/google/zxing/qrcode/decoder/Mode;

.field private numDataBytes:I

.field private numECBytes:I

.field private numRSBlocks:I

.field private numTotalBytes:I

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 3
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    .line 5
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    .line 6
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 7
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    .line 8
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    .line 9
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    .line 10
    iput v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    .line 11
    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    return-void
.end method

.method public static isValidMaskPattern(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public at(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Bad value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return p1
.end method

.method public getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-object v0
.end method

.method public getMaskPattern()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    return v0
.end method

.method public getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    return-object v0
.end method

.method public getMatrixWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    return v0
.end method

.method public getMode()Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object v0
.end method

.method public getNumDataBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    return v0
.end method

.method public getNumECBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    return v0
.end method

.method public getNumRSBlocks()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    return v0
.end method

.method public getNumTotalBytes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    return v0
.end method

.method public isValid()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    if-eq v2, v1, :cond_0

    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->isValidMaskPattern(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    return-void
.end method

.method public setMaskPattern(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    return-void
.end method

.method public setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    return-void
.end method

.method public setMatrixWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    return-void
.end method

.method public setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    return-void
.end method

.method public setNumDataBytes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    return-void
.end method

.method public setNumECBytes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    return-void
.end method

.method public setNumRSBlocks(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    return-void
.end method

.method public setNumTotalBytes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n matrixWidth: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrixWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n numTotalBytes: "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numTotalBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n numDataBytes: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numDataBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n numECBytes: "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numECBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n numRSBlocks: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->numRSBlocks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-nez v1, :cond_0

    const-string v1, "\n matrix: null\n"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "\n matrix:\n"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v1, p0, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ">>\n"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
