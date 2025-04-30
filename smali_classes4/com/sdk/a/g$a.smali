.class public final enum Lcom/sdk/a/g$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sdk/a/g$a;

.field public static final enum b:Lcom/sdk/a/g$a;

.field public static final enum c:Lcom/sdk/a/g$a;

.field public static final enum d:Lcom/sdk/a/g$a;

.field public static final enum e:Lcom/sdk/a/g$a;

.field public static final enum f:Lcom/sdk/a/g$a;

.field public static final enum g:Lcom/sdk/a/g$a;

.field public static final enum h:Lcom/sdk/a/g$a;

.field public static final enum i:Lcom/sdk/a/g$a;

.field public static final enum j:Lcom/sdk/a/g$a;

.field public static final synthetic k:[Lcom/sdk/a/g$a;


# instance fields
.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/sdk/a/g$a;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sdk/a/g$a;->a:Lcom/sdk/a/g$a;

    new-instance v1, Lcom/sdk/a/g$a;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sdk/a/g$a;->b:Lcom/sdk/a/g$a;

    new-instance v3, Lcom/sdk/a/g$a;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sdk/a/g$a;->c:Lcom/sdk/a/g$a;

    new-instance v5, Lcom/sdk/a/g$a;

    const-string v7, "HEAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sdk/a/g$a;->d:Lcom/sdk/a/g$a;

    new-instance v7, Lcom/sdk/a/g$a;

    const-string v9, "MOVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/sdk/a/g$a;->e:Lcom/sdk/a/g$a;

    new-instance v9, Lcom/sdk/a/g$a;

    const-string v11, "COPY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/sdk/a/g$a;->f:Lcom/sdk/a/g$a;

    new-instance v11, Lcom/sdk/a/g$a;

    const-string v13, "DELETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/sdk/a/g$a;->g:Lcom/sdk/a/g$a;

    new-instance v13, Lcom/sdk/a/g$a;

    const-string v15, "OPTIONS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/sdk/a/g$a;->h:Lcom/sdk/a/g$a;

    new-instance v15, Lcom/sdk/a/g$a;

    const-string v14, "TRACE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/sdk/a/g$a;->i:Lcom/sdk/a/g$a;

    new-instance v14, Lcom/sdk/a/g$a;

    const-string v12, "CONNECT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/sdk/a/g$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/sdk/a/g$a;->j:Lcom/sdk/a/g$a;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/sdk/a/g$a;

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

    sput-object v12, Lcom/sdk/a/g$a;->k:[Lcom/sdk/a/g$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sdk/a/g$a;->l:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sdk/a/g$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sdk/a/g$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/a/g$a;
    .locals 1

    const-class v0, Lcom/sdk/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/a/g$a;

    return-object p0
.end method

.method public static values()[Lcom/sdk/a/g$a;
    .locals 1

    sget-object v0, Lcom/sdk/a/g$a;->k:[Lcom/sdk/a/g$a;

    invoke-virtual {v0}, [Lcom/sdk/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/a/g$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/a/g$a;->l:Ljava/lang/String;

    return-object v0
.end method
