.class public final enum Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;
.super Ljava/lang/Enum;
.source "ForumBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum AD_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum BAIDUAD:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum FORUM_TOPIC:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum GROUP_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum GROUP_ITEM_2:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum GROUP_MEMBER_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum GROUP_MEMBER_SECTION_TITLE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum HOT_FORUM_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum HOT_FORUM_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum HOT_FORUM_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum LIVE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum LIVE_ENTRY:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum MID_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum MY_FORUM_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum MY_FORUM_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum MY_FORUM_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum MY_FORUM_MORE_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_TOP:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum TAG_FLOW_LAYOUT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum TAG_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

.field public static final enum TOP_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v1, "POST_HEADER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v3, "POST_SUBJECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v5, "POST_MESSAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 4
    new-instance v5, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v7, "POST_IMAGE_THUMBNAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 5
    new-instance v7, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v9, "POST_VIDEO_THUMBNAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 6
    new-instance v9, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v11, "POST_FOOTER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 7
    new-instance v11, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v13, "POST_TOP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 8
    new-instance v13, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v15, "POST_GAME"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 9
    new-instance v15, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v14, "MY_FORUM_HEADER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 10
    new-instance v14, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v12, "MY_FORUM_ITEM"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 11
    new-instance v12, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v10, "MY_FORUM_FOOTER"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 12
    new-instance v10, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v8, "MY_FORUM_MORE_FOOTER"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_MORE_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 13
    new-instance v8, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "HOT_FORUM_HEADER"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 14
    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v4, "HOT_FORUM_ITEM"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 15
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v2, "HOT_FORUM_FOOTER"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 16
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "TOP_BLOCK"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TOP_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 17
    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v4, "MID_BLOCK"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MID_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 18
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v2, "AD_BLOCK"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->AD_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 19
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "FORUM_TOPIC"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->FORUM_TOPIC:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 20
    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v4, "BAIDUAD"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->BAIDUAD:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 21
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v2, "LIVE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->LIVE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 22
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "LIVE_ENTRY"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->LIVE_ENTRY:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 23
    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v4, "GROUP_ITEM"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 24
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v4, "GROUP_ITEM_2"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_ITEM_2:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 25
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "P_SUBJECT"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 26
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "P_MESSAGE"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 27
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "P_IMGS"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 28
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "P_VIDEO"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 29
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "P_FOOTER"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 30
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "TAG_FLOW_LAYOUT"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_FLOW_LAYOUT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 31
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "GROUP_MEMBER_SECTION_TITLE"

    move-object/from16 v32, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_SECTION_TITLE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 32
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "GROUP_MEMBER_ITEM"

    move-object/from16 v33, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 33
    new-instance v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "TAG_ITEM"

    move-object/from16 v34, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const-string v6, "POST_GAME_RES_LINK"

    move-object/from16 v35, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    const/16 v4, 0x22

    new-array v4, v4, [Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

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

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v32, v4, v0

    const/16 v0, 0x1e

    aput-object v33, v4, v0

    const/16 v0, 0x1f

    aput-object v34, v4, v0

    const/16 v0, 0x20

    aput-object v35, v4, v0

    const/16 v0, 0x21

    aput-object v2, v4, v0

    .line 34
    sput-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    return-object v0
.end method
