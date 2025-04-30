.class public final enum Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;
.super Ljava/lang/Enum;
.source "CommentAllListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentAllListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

.field public static final enum COMMENT:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

.field public static final enum REPLY:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

.field public static final enum TITLE:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    const-string v3, "COMMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    const-string v5, "REPLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->REPLY:Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/adapter/CommentAllListAdapter$ViewType;

    return-object v0
.end method
