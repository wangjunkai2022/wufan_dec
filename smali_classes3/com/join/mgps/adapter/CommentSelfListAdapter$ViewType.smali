.class public final enum Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;
.super Ljava/lang/Enum;
.source "CommentSelfListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentSelfListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

.field public static final enum COMMENT_LIST_ITEM_CONTENT:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

.field public static final enum COMMENT_LIST_ITEM_FOOTER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

.field public static final enum COMMENT_LIST_ITEM_HEADER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

.field public static final enum FAVORITES_F:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

.field public static final enum FAVORITES_ITEM_TITLE:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

.field public static final enum FAVORITES_TITLE:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    const-string v1, "FAVORITES_TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_TITLE:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    const-string v3, "FAVORITES_ITEM_TITLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_ITEM_TITLE:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    const-string v5, "FAVORITES_F"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->FAVORITES_F:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 4
    new-instance v5, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    const-string v7, "COMMENT_LIST_ITEM_HEADER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_HEADER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 5
    new-instance v7, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    const-string v9, "COMMENT_LIST_ITEM_CONTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_CONTENT:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    .line 6
    new-instance v9, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    const-string v11, "COMMENT_LIST_ITEM_FOOTER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->COMMENT_LIST_ITEM_FOOTER:Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/adapter/CommentSelfListAdapter$ViewType;

    return-object v0
.end method
