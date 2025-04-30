.class public final enum Lcom/tencent/cos/task/TaskState;
.super Ljava/lang/Enum;
.source "TaskState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/cos/task/TaskState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/cos/task/TaskState;

.field public static final enum CANCEL:Lcom/tencent/cos/task/TaskState;

.field public static final enum DISABLE:Lcom/tencent/cos/task/TaskState;

.field public static final enum FAILED:Lcom/tencent/cos/task/TaskState;

.field public static final enum FINISH:Lcom/tencent/cos/task/TaskState;

.field public static final enum PAUSE:Lcom/tencent/cos/task/TaskState;

.field public static final enum RETRY:Lcom/tencent/cos/task/TaskState;

.field public static final enum SENDING:Lcom/tencent/cos/task/TaskState;

.field public static final enum SUCCEED:Lcom/tencent/cos/task/TaskState;

.field public static final enum WAITING:Lcom/tencent/cos/task/TaskState;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/tencent/cos/task/TaskState;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    const-string v3, "waitting"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/tencent/cos/task/TaskState;->WAITING:Lcom/tencent/cos/task/TaskState;

    .line 2
    new-instance v1, Lcom/tencent/cos/task/TaskState;

    const-string v3, "SENDING"

    const/4 v4, 0x1

    const-string v5, "sending"

    invoke-direct {v1, v3, v4, v4, v5}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/tencent/cos/task/TaskState;->SENDING:Lcom/tencent/cos/task/TaskState;

    .line 3
    new-instance v3, Lcom/tencent/cos/task/TaskState;

    const-string v5, "FINISH"

    const/4 v6, 0x2

    const-string v7, "finish"

    invoke-direct {v3, v5, v6, v6, v7}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/tencent/cos/task/TaskState;->FINISH:Lcom/tencent/cos/task/TaskState;

    .line 4
    new-instance v5, Lcom/tencent/cos/task/TaskState;

    const-string v7, "SUCCEED"

    const/4 v8, 0x3

    const-string v9, "succeed"

    invoke-direct {v5, v7, v8, v8, v9}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/tencent/cos/task/TaskState;->SUCCEED:Lcom/tencent/cos/task/TaskState;

    .line 5
    new-instance v7, Lcom/tencent/cos/task/TaskState;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    const-string v11, "failed"

    invoke-direct {v7, v9, v10, v10, v11}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/tencent/cos/task/TaskState;->FAILED:Lcom/tencent/cos/task/TaskState;

    .line 6
    new-instance v9, Lcom/tencent/cos/task/TaskState;

    const-string v11, "PAUSE"

    const/4 v12, 0x5

    const-string v13, "pause"

    invoke-direct {v9, v11, v12, v12, v13}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/tencent/cos/task/TaskState;->PAUSE:Lcom/tencent/cos/task/TaskState;

    .line 7
    new-instance v11, Lcom/tencent/cos/task/TaskState;

    const-string v13, "CANCEL"

    const/4 v14, 0x6

    const-string v15, "cancel"

    invoke-direct {v11, v13, v14, v14, v15}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/tencent/cos/task/TaskState;->CANCEL:Lcom/tencent/cos/task/TaskState;

    .line 8
    new-instance v13, Lcom/tencent/cos/task/TaskState;

    const-string v15, "RETRY"

    const/4 v14, 0x7

    const-string v12, "retry"

    invoke-direct {v13, v15, v14, v14, v12}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/tencent/cos/task/TaskState;->RETRY:Lcom/tencent/cos/task/TaskState;

    .line 9
    new-instance v12, Lcom/tencent/cos/task/TaskState;

    const-string v15, "DISABLE"

    const/16 v14, 0x8

    const-string v10, "disable"

    invoke-direct {v12, v15, v14, v14, v10}, Lcom/tencent/cos/task/TaskState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/tencent/cos/task/TaskState;->DISABLE:Lcom/tencent/cos/task/TaskState;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/tencent/cos/task/TaskState;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    .line 10
    sput-object v10, Lcom/tencent/cos/task/TaskState;->$VALUES:[Lcom/tencent/cos/task/TaskState;

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
    iput p3, p0, Lcom/tencent/cos/task/TaskState;->code:I

    .line 3
    iput-object p4, p0, Lcom/tencent/cos/task/TaskState;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/cos/task/TaskState;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/cos/task/TaskState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/task/TaskState;

    return-object p0
.end method

.method public static values()[Lcom/tencent/cos/task/TaskState;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/cos/task/TaskState;->$VALUES:[Lcom/tencent/cos/task/TaskState;

    invoke-virtual {v0}, [Lcom/tencent/cos/task/TaskState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/cos/task/TaskState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/task/TaskState;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/cos/task/TaskState;->desc:Ljava/lang/String;

    return-object v0
.end method
