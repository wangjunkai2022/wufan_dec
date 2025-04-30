.class final enum Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
.super Ljava/lang/Enum;
.source "CustomCircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/CustomCircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DirectionEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

.field public static final enum BOTTOM:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

.field public static final enum LEFT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

.field public static final enum RIGHT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

.field public static final enum TOP:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;


# instance fields
.field private final degree:F

.field private final direction:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;-><init>(Ljava/lang/String;IIF)V

    sput-object v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->LEFT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 2
    new-instance v1, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    const-string v3, "TOP"

    const/4 v4, 0x1

    const/high16 v5, 0x43870000    # 270.0f

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;-><init>(Ljava/lang/String;IIF)V

    sput-object v1, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->TOP:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 3
    new-instance v3, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;-><init>(Ljava/lang/String;IIF)V

    sput-object v3, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->RIGHT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    .line 4
    new-instance v5, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;-><init>(Ljava/lang/String;IIF)V

    sput-object v5, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->BOTTOM:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->$VALUES:[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->direction:I

    .line 3
    iput p4, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->degree:F

    return-void
.end method

.method public static getDegree(I)F
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->getDirection(I)Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->getDegree()F

    move-result p0

    return p0
.end method

.method public static getDirection(I)Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
    .locals 5

    .line 2
    invoke-static {}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->values()[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3, p0}, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->equalsDescription(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->RIGHT:Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->$VALUES:[Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    invoke-virtual {v0}, [Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;

    return-object v0
.end method


# virtual methods
.method public equalsDescription(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->direction:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDegree()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->degree:F

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CustomCircleProgressBar$DirectionEnum;->direction:I

    return v0
.end method
