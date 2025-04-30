.class public final enum Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;
.super Ljava/lang/Enum;
.source "ForumTopicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/ForumTopicAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum FORUM_TOPIC_TOP:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_FOOTER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_HEADER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_IMAGE:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_MESSAGE:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_SUBJECT:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_TOP:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_VIDEO:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

.field public static final enum POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v1, "FORUM_TOPIC_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->FORUM_TOPIC_TOP:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 2
    new-instance v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v3, "POST_HEADER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 3
    new-instance v3, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v5, "POST_SUBJECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 4
    new-instance v5, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v7, "POST_MESSAGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 5
    new-instance v7, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v9, "POST_IMAGE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_IMAGE:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 6
    new-instance v9, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v11, "POST_VIDEO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_VIDEO:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 7
    new-instance v11, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v13, "POST_IMAGE_THUMBNAIL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 8
    new-instance v13, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v15, "POST_VIDEO_THUMBNAIL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 9
    new-instance v15, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v14, "POST_FOOTER"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    .line 10
    new-instance v14, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const-string v12, "POST_TOP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->$VALUES:[Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/adapter/ForumTopicAdapter$ViewType;

    return-object v0
.end method
