.class final enum Lcom/switfpass/pay/activity/zxing/decoding/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum bQ:Lcom/switfpass/pay/activity/zxing/decoding/d;

.field public static final enum bR:Lcom/switfpass/pay/activity/zxing/decoding/d;

.field public static final enum bS:Lcom/switfpass/pay/activity/zxing/decoding/d;

.field private static final synthetic bT:[Lcom/switfpass/pay/activity/zxing/decoding/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/switfpass/pay/activity/zxing/decoding/d;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/switfpass/pay/activity/zxing/decoding/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/switfpass/pay/activity/zxing/decoding/d;->bQ:Lcom/switfpass/pay/activity/zxing/decoding/d;

    new-instance v1, Lcom/switfpass/pay/activity/zxing/decoding/d;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/switfpass/pay/activity/zxing/decoding/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/switfpass/pay/activity/zxing/decoding/d;->bR:Lcom/switfpass/pay/activity/zxing/decoding/d;

    new-instance v3, Lcom/switfpass/pay/activity/zxing/decoding/d;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/switfpass/pay/activity/zxing/decoding/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/switfpass/pay/activity/zxing/decoding/d;->bS:Lcom/switfpass/pay/activity/zxing/decoding/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/switfpass/pay/activity/zxing/decoding/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/switfpass/pay/activity/zxing/decoding/d;->bT:[Lcom/switfpass/pay/activity/zxing/decoding/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/switfpass/pay/activity/zxing/decoding/d;
    .locals 1

    const-class v0, Lcom/switfpass/pay/activity/zxing/decoding/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/switfpass/pay/activity/zxing/decoding/d;

    return-object p0
.end method

.method public static values()[Lcom/switfpass/pay/activity/zxing/decoding/d;
    .locals 4

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/d;->bT:[Lcom/switfpass/pay/activity/zxing/decoding/d;

    array-length v1, v0

    new-array v2, v1, [Lcom/switfpass/pay/activity/zxing/decoding/d;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
