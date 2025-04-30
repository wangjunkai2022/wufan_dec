.class final enum Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;
.super Ljava/lang/Enum;
.source "FaceTransferScanQrCodeActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

.field public static final enum DONE:Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

.field public static final enum PREVIEW:Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

.field public static final enum SUCCESS:Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;->PREVIEW:Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    new-instance v1, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;->SUCCESS:Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    new-instance v3, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;->DONE:Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;->$VALUES:[Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;->$VALUES:[Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    invoke-virtual {v0}, [Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/zxing/decoding/FaceTransferScanQrCodeActivityHandler$State;

    return-object v0
.end method
