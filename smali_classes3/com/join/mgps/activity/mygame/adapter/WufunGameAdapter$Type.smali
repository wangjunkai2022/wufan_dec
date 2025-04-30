.class public final enum Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;
.super Ljava/lang/Enum;
.source "WufunGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

.field public static final enum GAMEITEM:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

.field public static final enum GUESSLIKE:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;


# instance fields
.field number:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    const-string v1, "GAMEITEM"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;->GAMEITEM:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    .line 2
    new-instance v1, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    const-string v4, "GUESSLIKE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5}, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;->GUESSLIKE:Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    new-array v3, v3, [Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 3
    sput-object v3, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;->$VALUES:[Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

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
    iput p3, p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;->number:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;->$VALUES:[Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    invoke-virtual {v0}, [Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/activity/mygame/adapter/WufunGameAdapter$Type;

    return-object v0
.end method
