.class public final enum Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;
.super Ljava/lang/Enum;
.source "ForumProfileMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumProfileMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

.field public static final enum PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

.field public static final enum PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

.field public static final enum PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    const-string v1, "PROFILE_HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    const-string v3, "PROFILE_MESSAGE_ITEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    const-string v5, "PROFILE_FOOTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    return-object v0
.end method
