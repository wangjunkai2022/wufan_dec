.class public final enum Lcom/tencent/stat/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/stat/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/tencent/stat/a/f;

.field public static final enum b:Lcom/tencent/stat/a/f;

.field public static final enum c:Lcom/tencent/stat/a/f;

.field public static final enum d:Lcom/tencent/stat/a/f;

.field public static final enum e:Lcom/tencent/stat/a/f;

.field public static final enum f:Lcom/tencent/stat/a/f;

.field public static final enum g:Lcom/tencent/stat/a/f;

.field public static final enum h:Lcom/tencent/stat/a/f;

.field private static final synthetic j:[Lcom/tencent/stat/a/f;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/tencent/stat/a/f;

    const-string v1, "PAGE_VIEW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/stat/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/stat/a/f;->a:Lcom/tencent/stat/a/f;

    new-instance v1, Lcom/tencent/stat/a/f;

    const-string v4, "SESSION_ENV"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/tencent/stat/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/tencent/stat/a/f;->b:Lcom/tencent/stat/a/f;

    new-instance v4, Lcom/tencent/stat/a/f;

    const-string v6, "ERROR"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/tencent/stat/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/tencent/stat/a/f;->c:Lcom/tencent/stat/a/f;

    new-instance v6, Lcom/tencent/stat/a/f;

    const-string v8, "CUSTOM"

    const/16 v9, 0x3e8

    invoke-direct {v6, v8, v7, v9}, Lcom/tencent/stat/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/tencent/stat/a/f;->d:Lcom/tencent/stat/a/f;

    new-instance v8, Lcom/tencent/stat/a/f;

    const-string v9, "ADDITION"

    const/4 v10, 0x4

    const/16 v11, 0x3e9

    invoke-direct {v8, v9, v10, v11}, Lcom/tencent/stat/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/tencent/stat/a/f;->e:Lcom/tencent/stat/a/f;

    new-instance v9, Lcom/tencent/stat/a/f;

    const-string v11, "MONITOR_STAT"

    const/4 v12, 0x5

    const/16 v13, 0x3ea

    invoke-direct {v9, v11, v12, v13}, Lcom/tencent/stat/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/tencent/stat/a/f;->f:Lcom/tencent/stat/a/f;

    new-instance v11, Lcom/tencent/stat/a/f;

    const-string v13, "MTA_GAME_USER"

    const/4 v14, 0x6

    const/16 v15, 0x3eb

    invoke-direct {v11, v13, v14, v15}, Lcom/tencent/stat/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/tencent/stat/a/f;->g:Lcom/tencent/stat/a/f;

    new-instance v13, Lcom/tencent/stat/a/f;

    const-string v15, "NETWORK_MONITOR"

    const/4 v14, 0x7

    const/16 v12, 0x3ec

    invoke-direct {v13, v15, v14, v12}, Lcom/tencent/stat/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/tencent/stat/a/f;->h:Lcom/tencent/stat/a/f;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/tencent/stat/a/f;

    aput-object v0, v12, v2

    aput-object v1, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lcom/tencent/stat/a/f;->j:[Lcom/tencent/stat/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/stat/a/f;->i:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/stat/a/f;->i:I

    return v0
.end method
