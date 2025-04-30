.class public final enum Lcom/join/mgps/dto/ForumBean$ForumEvent;
.super Ljava/lang/Enum;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForumEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/dto/ForumBean$ForumEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum CommentReply:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum CommentReplyDelete:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum DownloadCenterAd:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum Forum:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ForumAll:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ForumIndexBanner:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ForumPosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ForumWelcome:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ForumWelcomeBanner:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ForumWelcomePosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum HomeGameCarefully:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum HomepageRecommendGroup:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum HomepageRecommendLabel:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum MyProfileFavorites:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum Posts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum PostsComment:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum PostsDelete:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum PostsIndex2:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum PostsPraise:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum PostsSubmit:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ProfileComment:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ProfileGetUnreadMessageCount:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ProfileMessage:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum ProfilePosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

.field public static final enum SearchListData:Lcom/join/mgps/dto/ForumBean$ForumEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v1, "ForumWelcomeBanner"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumWelcomeBanner:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v3, "ForumWelcome"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumWelcome:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v3, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v5, "ForumWelcomePosts"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumWelcomePosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 2
    new-instance v5, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v7, "Forum"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/join/mgps/dto/ForumBean$ForumEvent;->Forum:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v7, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v9, "ForumPosts"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumPosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v9, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v11, "ForumAll"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumAll:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 3
    new-instance v11, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v13, "PostsSubmit"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/join/mgps/dto/ForumBean$ForumEvent;->PostsSubmit:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v13, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v15, "Posts"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/join/mgps/dto/ForumBean$ForumEvent;->Posts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v15, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v14, "PostsIndex2"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/join/mgps/dto/ForumBean$ForumEvent;->PostsIndex2:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v14, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v12, "PostsDelete"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/join/mgps/dto/ForumBean$ForumEvent;->PostsDelete:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v12, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v10, "PostsComment"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/join/mgps/dto/ForumBean$ForumEvent;->PostsComment:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v10, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v8, "PostsPraise"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/join/mgps/dto/ForumBean$ForumEvent;->PostsPraise:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 4
    new-instance v8, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v6, "CommentReply"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/join/mgps/dto/ForumBean$ForumEvent;->CommentReply:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v6, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v4, "CommentReplyDelete"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/dto/ForumBean$ForumEvent;->CommentReplyDelete:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 5
    new-instance v4, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v2, "ProfilePosts"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ProfilePosts:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v6, "ProfileGetUnreadMessageCount"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ProfileGetUnreadMessageCount:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v6, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v4, "ProfileMessage"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ProfileMessage:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v4, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v2, "ProfileComment"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ProfileComment:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 6
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v6, "MyProfileFavorites"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->MyProfileFavorites:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 7
    new-instance v6, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v4, "ForumIndexBanner"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/dto/ForumBean$ForumEvent;->ForumIndexBanner:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v4, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v2, "HomepageRecommendGroup"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendGroup:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v6, "HomepageRecommendLabel"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomepageRecommendLabel:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 8
    new-instance v6, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v4, "HomeGameCarefully"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/join/mgps/dto/ForumBean$ForumEvent;->HomeGameCarefully:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 9
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v4, "DownloadCenterAd"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->DownloadCenterAd:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    .line 10
    new-instance v4, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const-string v6, "SearchListData"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/join/mgps/dto/ForumBean$ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/join/mgps/dto/ForumBean$ForumEvent;->SearchListData:Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const/16 v2, 0x19

    new-array v2, v2, [Lcom/join/mgps/dto/ForumBean$ForumEvent;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    .line 11
    sput-object v2, Lcom/join/mgps/dto/ForumBean$ForumEvent;->$VALUES:[Lcom/join/mgps/dto/ForumBean$ForumEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/dto/ForumBean$ForumEvent;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/dto/ForumBean$ForumEvent;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/dto/ForumBean$ForumEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/dto/ForumBean$ForumEvent;->$VALUES:[Lcom/join/mgps/dto/ForumBean$ForumEvent;

    invoke-virtual {v0}, [Lcom/join/mgps/dto/ForumBean$ForumEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/dto/ForumBean$ForumEvent;

    return-object v0
.end method
