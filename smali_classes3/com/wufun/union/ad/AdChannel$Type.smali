.class public final enum Lcom/wufun/union/ad/AdChannel$Type;
.super Ljava/lang/Enum;
.source "AdChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wufun/union/ad/AdChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wufun/union/ad/AdChannel$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wufun/union/ad/AdChannel$Type;

.field public static final enum GDT:Lcom/wufun/union/ad/AdChannel$Type;

.field public static final enum TT:Lcom/wufun/union/ad/AdChannel$Type;

.field public static final enum UNKNOWN:Lcom/wufun/union/ad/AdChannel$Type;


# instance fields
.field public val:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/wufun/union/ad/AdChannel$Type;

    const-string v1, "TT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/wufun/union/ad/AdChannel$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wufun/union/ad/AdChannel$Type;->TT:Lcom/wufun/union/ad/AdChannel$Type;

    .line 2
    new-instance v1, Lcom/wufun/union/ad/AdChannel$Type;

    const-string v3, "GDT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/wufun/union/ad/AdChannel$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/wufun/union/ad/AdChannel$Type;->GDT:Lcom/wufun/union/ad/AdChannel$Type;

    .line 3
    new-instance v3, Lcom/wufun/union/ad/AdChannel$Type;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lcom/wufun/union/ad/AdChannel$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/wufun/union/ad/AdChannel$Type;->UNKNOWN:Lcom/wufun/union/ad/AdChannel$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/wufun/union/ad/AdChannel$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/wufun/union/ad/AdChannel$Type;->$VALUES:[Lcom/wufun/union/ad/AdChannel$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    return-void
.end method

.method public static parse(I)Lcom/wufun/union/ad/AdChannel$Type;
    .locals 2

    .line 1
    sget-object v0, Lcom/wufun/union/ad/AdChannel$Type;->TT:Lcom/wufun/union/ad/AdChannel$Type;

    iget v1, v0, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    if-ne p0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcom/wufun/union/ad/AdChannel$Type;->GDT:Lcom/wufun/union/ad/AdChannel$Type;

    iget v1, v0, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    if-ne p0, v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object p0, Lcom/wufun/union/ad/AdChannel$Type;->UNKNOWN:Lcom/wufun/union/ad/AdChannel$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wufun/union/ad/AdChannel$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/wufun/union/ad/AdChannel$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wufun/union/ad/AdChannel$Type;

    return-object p0
.end method

.method public static values()[Lcom/wufun/union/ad/AdChannel$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/wufun/union/ad/AdChannel$Type;->$VALUES:[Lcom/wufun/union/ad/AdChannel$Type;

    invoke-virtual {v0}, [Lcom/wufun/union/ad/AdChannel$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wufun/union/ad/AdChannel$Type;

    return-object v0
.end method
