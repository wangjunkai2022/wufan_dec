.class public final enum Lcom/tencent/cos/task/TaskType;
.super Ljava/lang/Enum;
.source "TaskType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/task/TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/task/TaskType;

.field public static final enum CMD_TASK:Lcom/tencent/cos/task/TaskType;

.field public static final enum DOWNLOAD_TASK:Lcom/tencent/cos/task/TaskType;

.field public static final enum UNKNOW:Lcom/tencent/cos/task/TaskType;

.field public static final enum UPLOAD_TASK:Lcom/tencent/cos/task/TaskType;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/tencent/cos/task/TaskType;

    const-string v1, "UNKNOW"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "unknowTask"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/cos/task/TaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/task/TaskType;->UNKNOW:Lcom/tencent/cos/task/TaskType;

    .line 2
    new-instance v1, Lcom/tencent/cos/task/TaskType;

    const-string v3, "CMD_TASK"

    const/4 v4, 0x1

    const-string v5, "cmdTask"

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/tencent/cos/task/TaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/task/TaskType;->CMD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 3
    new-instance v3, Lcom/tencent/cos/task/TaskType;

    const-string v5, "DOWNLOAD_TASK"

    const/4 v6, 0x2

    const-string v7, "downloadTask"

    invoke-direct {v3, v5, v6, v4, v7}, Lcom/tencent/cos/task/TaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/tencent/cos/task/TaskType;->DOWNLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    .line 4
    new-instance v5, Lcom/tencent/cos/task/TaskType;

    const-string v7, "UPLOAD_TASK"

    const/4 v8, 0x3

    const-string v9, "uploadTask"

    invoke-direct {v5, v7, v8, v6, v9}, Lcom/tencent/cos/task/TaskType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/tencent/cos/task/TaskType;->UPLOAD_TASK:Lcom/tencent/cos/task/TaskType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/tencent/cos/task/TaskType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/tencent/cos/task/TaskType;->$VALUES:[Lcom/tencent/cos/task/TaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/tencent/cos/task/TaskType;->code:I

    .line 3
    iput-object p4, p0, Lcom/tencent/cos/task/TaskType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/task/TaskType;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/cos/task/TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/task/TaskType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/task/TaskType;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/task/TaskType;->$VALUES:[Lcom/tencent/cos/task/TaskType;

    invoke-virtual {v0}, [Lcom/tencent/cos/task/TaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/task/TaskType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/task/TaskType;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskType;->desc:Ljava/lang/String;

    return-object v0
.end method
