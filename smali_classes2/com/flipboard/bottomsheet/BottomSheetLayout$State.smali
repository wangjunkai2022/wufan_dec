.class public final enum Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
.super Ljava/lang/Enum;
.source "BottomSheetLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/BottomSheetLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flipboard/bottomsheet/BottomSheetLayout$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field public static final enum EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field public static final enum HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field public static final enum PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

.field public static final enum PREPARING:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const-string v1, "HIDDEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->HIDDEN:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 2
    new-instance v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const-string v3, "PREPARING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PREPARING:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 3
    new-instance v3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const-string v5, "PEEKED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->PEEKED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    .line 4
    new-instance v5, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const-string v7, "EXPANDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->EXPANDED:Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->$VALUES:[Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
    .locals 1

    .line 1
    const-class v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    return-object p0
.end method

.method public static values()[Lcom/flipboard/bottomsheet/BottomSheetLayout$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->$VALUES:[Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    invoke-virtual {v0}, [Lcom/flipboard/bottomsheet/BottomSheetLayout$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flipboard/bottomsheet/BottomSheetLayout$State;

    return-object v0
.end method
