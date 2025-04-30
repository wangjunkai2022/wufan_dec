.class final enum Lcom/zxing/android/decoding/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zxing/android/decoding/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zxing/android/decoding/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zxing/android/decoding/CaptureActivityHandler$State;

.field public static final enum DONE:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/zxing/android/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zxing/android/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    .line 2
    new-instance v1, Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zxing/android/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    .line 3
    new-instance v3, Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zxing/android/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->DONE:Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->$VALUES:[Lcom/zxing/android/decoding/CaptureActivityHandler$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zxing/android/decoding/CaptureActivityHandler$State;
    .locals 1

    .line 1
    const-class v0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/zxing/android/decoding/CaptureActivityHandler$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/zxing/android/decoding/CaptureActivityHandler$State;->$VALUES:[Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    invoke-virtual {v0}, [Lcom/zxing/android/decoding/CaptureActivityHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zxing/android/decoding/CaptureActivityHandler$State;

    return-object v0
.end method
