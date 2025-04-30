.class public final enum Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;
.super Ljava/lang/Enum;
.source "MGGameDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum COMMIT:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum COMMIT_FOOTER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum COMMIT_HEADER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum COMMIT_REPLY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum DETIAL_ADGROUP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum GAMEAD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum GAME_FAST_ENTRY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum GAME_GIFTS:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum GAME_GIFTS_BOTTOM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum GAME_GIFTS_ITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum GIFT_AND_SERVICE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum INFORMATION:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum INFORMATIONTOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum MESSAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum NULLITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum RECOMMEND:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum SERVICEITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum STRAYTEGYITEM_IMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum STRAYTEGYITEM_NOIMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum STRAYTEGYTABLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum TITLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum UPDATE_RECORD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum VIEWPAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum VOUCHER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

.field public static final enum WEB:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v1, "TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v3, "VIEWPAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VIEWPAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v5, "UPDATE_RECORD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->UPDATE_RECORD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 4
    new-instance v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v7, "WEB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->WEB:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 5
    new-instance v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v9, "GAME_GIFTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 6
    new-instance v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v11, "GAMEAD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAMEAD:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 7
    new-instance v11, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v13, "MESSAGE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->MESSAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 8
    new-instance v13, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v15, "RECOMMEND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->RECOMMEND:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 9
    new-instance v15, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v14, "INFORMATION"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATION:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 10
    new-instance v14, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v12, "COMMIT_HEADER"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_HEADER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 11
    new-instance v12, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v10, "COMMIT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 12
    new-instance v10, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v8, "COMMIT_REPLY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_REPLY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 13
    new-instance v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v6, "COMMIT_FOOTER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->COMMIT_FOOTER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 14
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v4, "GAME_ITEM_TOP"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_ITEM_TOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 15
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v2, "GAME_GIFTS_ITEM"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_ITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 16
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v6, "GAME_GIFTS_BOTTOM"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_GIFTS_BOTTOM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 17
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v4, "VOUCHER"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->VOUCHER:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 18
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v2, "DETIAL_ADGROUP"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->DETIAL_ADGROUP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 19
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v6, "INFORMATIONTOP"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->INFORMATIONTOP:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 20
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v4, "SERVICEITEM"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->SERVICEITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 21
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v2, "STRAYTEGYTABLE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYTABLE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 22
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v6, "STRAYTEGYITEM_IMAGE"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_IMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 23
    new-instance v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v4, "STRAYTEGYITEM_NOIMAGE"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->STRAYTEGYITEM_NOIMAGE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 24
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v4, "GAME_FAST_ENTRY"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GAME_FAST_ENTRY:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 25
    new-instance v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v6, "GIFT_AND_SERVICE"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->GIFT_AND_SERVICE:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    .line 26
    new-instance v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const-string v6, "NULLITEM"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->NULLITEM:Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    .line 27
    sput-object v4, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/adapter/MGGameDetailAdapter$ViewType;

    return-object v0
.end method
