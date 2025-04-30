.class public final enum Lcom/join/mgps/customview/RewardType;
.super Ljava/lang/Enum;
.source "RewardType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/mgps/customview/RewardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/mgps/customview/RewardType;

.field public static final enum COMMENT_POST:Lcom/join/mgps/customview/RewardType;

.field public static final enum DAILY_LOGIN:Lcom/join/mgps/customview/RewardType;

.field public static final enum DOWNLOAD:Lcom/join/mgps/customview/RewardType;

.field public static final enum EVERDAYLOGIN:Lcom/join/mgps/customview/RewardType;

.field public static final enum REGISTER:Lcom/join/mgps/customview/RewardType;

.field public static final enum REPLY_POST:Lcom/join/mgps/customview/RewardType;

.field public static final enum SUBMIT_POST:Lcom/join/mgps/customview/RewardType;


# instance fields
.field private val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/join/mgps/customview/RewardType;

    const-string v1, "REGISTER"

    const/4 v2, 0x0

    const-string v3, "\u5b8c\u6210\u6ce8\u518c"

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/join/mgps/customview/RewardType;->REGISTER:Lcom/join/mgps/customview/RewardType;

    .line 2
    new-instance v1, Lcom/join/mgps/customview/RewardType;

    const-string v3, "DOWNLOAD"

    const/4 v4, 0x1

    const-string v5, "\u5b8c\u6210\u4e0b\u8f7d"

    invoke-direct {v1, v3, v4, v5}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/join/mgps/customview/RewardType;->DOWNLOAD:Lcom/join/mgps/customview/RewardType;

    .line 3
    new-instance v3, Lcom/join/mgps/customview/RewardType;

    const-string v5, "SUBMIT_POST"

    const/4 v6, 0x2

    const-string v7, "\u5b8c\u6210\u53d1\u5e16"

    invoke-direct {v3, v5, v6, v7}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/join/mgps/customview/RewardType;->SUBMIT_POST:Lcom/join/mgps/customview/RewardType;

    .line 4
    new-instance v5, Lcom/join/mgps/customview/RewardType;

    const-string v7, "COMMENT_POST"

    const/4 v8, 0x3

    const-string v9, "\u5b8c\u6210\u8bc4\u8bba"

    invoke-direct {v5, v7, v8, v9}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/join/mgps/customview/RewardType;->COMMENT_POST:Lcom/join/mgps/customview/RewardType;

    .line 5
    new-instance v7, Lcom/join/mgps/customview/RewardType;

    const-string v9, "DAILY_LOGIN"

    const/4 v10, 0x4

    const-string v11, "\u6bcf\u65e5\u79ef\u6781\u73a9\u5bb6"

    invoke-direct {v7, v9, v10, v11}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/join/mgps/customview/RewardType;->DAILY_LOGIN:Lcom/join/mgps/customview/RewardType;

    .line 6
    new-instance v9, Lcom/join/mgps/customview/RewardType;

    const-string v11, "REPLY_POST"

    const/4 v12, 0x5

    const-string v13, "\u5b8c\u6210\u56de\u590d"

    invoke-direct {v9, v11, v12, v13}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/join/mgps/customview/RewardType;->REPLY_POST:Lcom/join/mgps/customview/RewardType;

    .line 7
    new-instance v11, Lcom/join/mgps/customview/RewardType;

    const-string v13, "EVERDAYLOGIN"

    const/4 v14, 0x6

    const-string v15, "\u6bcf\u65e5\u767b\u5f55"

    invoke-direct {v11, v13, v14, v15}, Lcom/join/mgps/customview/RewardType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/join/mgps/customview/RewardType;->EVERDAYLOGIN:Lcom/join/mgps/customview/RewardType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/join/mgps/customview/RewardType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/join/mgps/customview/RewardType;->$VALUES:[Lcom/join/mgps/customview/RewardType;

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
    iput-object p3, p0, Lcom/join/mgps/customview/RewardType;->val:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/mgps/customview/RewardType;
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/customview/RewardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/mgps/customview/RewardType;

    return-object p0
.end method

.method public static values()[Lcom/join/mgps/customview/RewardType;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/customview/RewardType;->$VALUES:[Lcom/join/mgps/customview/RewardType;

    invoke-virtual {v0}, [Lcom/join/mgps/customview/RewardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/mgps/customview/RewardType;

    return-object v0
.end method


# virtual methods
.method public getVal()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/RewardType;->val:Ljava/lang/String;

    return-object v0
.end method
