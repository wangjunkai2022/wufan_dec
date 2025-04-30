.class final enum Lcom/join/mgps/activity/GameInformationActivityV2$GType;
.super Ljava/lang/Enum;
.source "GameInformationActivityV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/activity/GameInformationActivityV2$GType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum comment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

.field public static final enum webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;


# instance fields
.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v1, "webview"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webview:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 2
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v4, "card"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->card:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 3
    new-instance v4, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v6, "comment"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->comment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 4
    new-instance v6, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v8, "commentTitle"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v7, v9}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->commentTitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 5
    new-instance v8, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v10, "TITLE"

    const/4 v11, 0x5

    invoke-direct {v8, v10, v9, v11}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->TITLE:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 6
    new-instance v10, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v12, "COMMENT"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->COMMENT:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    new-instance v12, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v14, "webtitle"

    const/16 v15, 0x8

    invoke-direct {v12, v14, v13, v15}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->webtitle:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    .line 7
    new-instance v14, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v13, "REPLY"

    const/4 v11, 0x7

    invoke-direct {v14, v13, v11, v11}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->REPLY:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    new-instance v13, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    const-string v11, "sendcomment"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v15, v9}, Lcom/join/mgps/activity/GameInformationActivityV2$GType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->sendcomment:Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    new-array v9, v9, [Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    aput-object v13, v9, v15

    .line 8
    sput-object v9, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->$VALUES:[Lcom/join/mgps/activity/GameInformationActivityV2$GType;

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
    iput p3, p0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->i:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/activity/GameInformationActivityV2$GType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/activity/GameInformationActivityV2$GType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->$VALUES:[Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    invoke-virtual {v0}, [Lcom/join/mgps/activity/GameInformationActivityV2$GType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/activity/GameInformationActivityV2$GType;

    return-object v0
.end method


# virtual methods
.method public vaule()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$GType;->i:I

    return v0
.end method
