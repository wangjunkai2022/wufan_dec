.class public final enum Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;
.super Ljava/lang/Enum;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean$ForumTabBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_ACTIVITY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_BEST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_FORUM_MEMBER:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_GIFT:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_HELP:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_LAST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_NORMAL:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

.field public static final enum TAB_TYPE_STRATEGY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const-string v1, "TAB_TYPE_NORMAL"

    const/4 v2, 0x0

    const-string v3, "normal_posts"

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_NORMAL:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 2
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const-string v3, "TAB_TYPE_HELP"

    const/4 v4, 0x1

    const-string v5, "help_posts"

    invoke-direct {v1, v3, v4, v5}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_HELP:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 3
    new-instance v3, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const-string v5, "TAB_TYPE_LAST"

    const/4 v6, 0x2

    const-string v7, "last_posts"

    invoke-direct {v3, v5, v6, v7}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_LAST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 4
    new-instance v5, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const-string v7, "TAB_TYPE_BEST"

    const/4 v8, 0x3

    const-string v9, "best_posts"

    invoke-direct {v5, v7, v8, v9}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_BEST:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 5
    new-instance v7, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const-string v9, "TAB_TYPE_FORUM_MEMBER"

    const/4 v10, 0x4

    const-string v11, "forum_members"

    invoke-direct {v7, v9, v10, v11}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_FORUM_MEMBER:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 6
    new-instance v9, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const-string v11, "TAB_TYPE_ACTIVITY"

    const/4 v12, 0x5

    const-string v13, "activity_posts"

    invoke-direct {v9, v11, v12, v13}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_ACTIVITY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 7
    new-instance v11, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const-string v13, "TAB_TYPE_GIFT"

    const/4 v14, 0x6

    const-string v15, "gift_posts"

    invoke-direct {v11, v13, v14, v15}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_GIFT:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    .line 8
    new-instance v13, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const-string v15, "TAB_TYPE_STRATEGY"

    const/4 v14, 0x7

    const-string v12, "strategy_posts"

    invoke-direct {v13, v15, v14, v12}, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->TAB_TYPE_STRATEGY:Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 9
    sput-object v12, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->$VALUES:[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->$VALUES:[Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    invoke-virtual {v0}, [Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumTabBean$Type;->name:Ljava/lang/String;

    return-object v0
.end method
