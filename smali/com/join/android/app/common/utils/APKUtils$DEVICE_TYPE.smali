.class public final enum Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;
.super Ljava/lang/Enum;
.source "APKUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/utils/APKUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEVICE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;",
        "",
        "",
        "value",
        "",
        "desc",
        "mDesc",
        "Ljava/lang/String;",
        "mType",
        "I",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/String;)V",
        "ALL",
        "REAL",
        "VM",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

.field public static final enum ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

.field public static final enum REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

.field public static final enum VM:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;


# instance fields
.field private final mDesc:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    new-instance v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    const-string v2, "ALL"

    const/4 v3, 0x0

    const-string v4, "\u5168\u7c7b\u578b"

    .line 1
    invoke-direct {v1, v2, v3, v3, v4}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->ALL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    aput-object v1, v0, v3

    new-instance v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    const-string v2, "REAL"

    const/4 v3, 0x1

    const-string v4, "\u771f\u673a"

    invoke-direct {v1, v2, v3, v3, v4}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->REAL:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    aput-object v1, v0, v3

    new-instance v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    const-string v2, "VM"

    const/4 v3, 0x2

    const-string v4, "\u865a\u62df\u673a"

    invoke-direct {v1, v2, v3, v3, v4}, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->VM:Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->$VALUES:[Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->mType:I

    iput-object p4, p0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;
    .locals 1

    const-class v0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;
    .locals 1

    sget-object v0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->$VALUES:[Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    invoke-virtual {v0}, [Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;

    return-object v0
.end method


# virtual methods
.method public final desc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/common/utils/APKUtils$DEVICE_TYPE;->mType:I

    return v0
.end method
