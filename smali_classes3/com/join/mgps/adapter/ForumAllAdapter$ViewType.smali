.class public final enum Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;
.super Ljava/lang/Enum;
.source "ForumAllAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumAllAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

.field public static final enum FORUM_ITEM:Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    const-string v1, "FORUM_ITEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;->FORUM_ITEM:Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    return-object v0
.end method
