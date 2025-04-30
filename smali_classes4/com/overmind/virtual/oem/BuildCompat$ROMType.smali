.class public final enum Lcom/overmind/virtual/oem/BuildCompat$ROMType;
.super Ljava/lang/Enum;
.source "BuildCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/overmind/virtual/oem/BuildCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ROMType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/overmind/virtual/oem/BuildCompat$ROMType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum COLOR_OS:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum EMUI:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum FLYME:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum LETV:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum MIUI:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum OTHER:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum SAMSUNG:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum VIVO:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

.field public static final enum _360:Lcom/overmind/virtual/oem/BuildCompat$ROMType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v1, "EMUI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->EMUI:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 2
    new-instance v1, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v3, "MIUI"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->MIUI:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 3
    new-instance v3, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v5, "FLYME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->FLYME:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 4
    new-instance v5, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v7, "COLOR_OS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->COLOR_OS:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 5
    new-instance v7, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v9, "LETV"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->LETV:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 6
    new-instance v9, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v11, "VIVO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->VIVO:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 7
    new-instance v11, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v13, "_360"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->_360:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 8
    new-instance v13, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v15, "SAMSUNG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->SAMSUNG:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    .line 9
    new-instance v15, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const-string v14, "OTHER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/overmind/virtual/oem/BuildCompat$ROMType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->OTHER:Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 10
    sput-object v14, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->$VALUES:[Lcom/overmind/virtual/oem/BuildCompat$ROMType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/overmind/virtual/oem/BuildCompat$ROMType;
    .locals 1

    .line 1
    const-class v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    return-object p0
.end method

.method public static values()[Lcom/overmind/virtual/oem/BuildCompat$ROMType;
    .locals 1

    .line 1
    sget-object v0, Lcom/overmind/virtual/oem/BuildCompat$ROMType;->$VALUES:[Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    invoke-virtual {v0}, [Lcom/overmind/virtual/oem/BuildCompat$ROMType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/overmind/virtual/oem/BuildCompat$ROMType;

    return-object v0
.end method
