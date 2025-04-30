.class public final enum Lcom/sdk/d/b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/d/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sdk/d/b;

.field public static final enum b:Lcom/sdk/d/b;

.field public static final enum c:Lcom/sdk/d/b;

.field public static final enum d:Lcom/sdk/d/b;

.field public static final enum e:Lcom/sdk/d/b;

.field public static final enum f:Lcom/sdk/d/b;

.field public static final enum g:Lcom/sdk/d/b;

.field public static final synthetic h:[Lcom/sdk/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/sdk/d/b;

    const-string v1, "UI_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdk/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdk/d/b;->a:Lcom/sdk/d/b;

    new-instance v1, Lcom/sdk/d/b;

    const-string v3, "UI_NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdk/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdk/d/b;->b:Lcom/sdk/d/b;

    new-instance v3, Lcom/sdk/d/b;

    const-string v5, "UI_LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdk/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdk/d/b;->c:Lcom/sdk/d/b;

    new-instance v5, Lcom/sdk/d/b;

    const-string v7, "DEFAULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sdk/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sdk/d/b;->d:Lcom/sdk/d/b;

    new-instance v7, Lcom/sdk/d/b;

    const-string v9, "BG_TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/sdk/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/sdk/d/b;->e:Lcom/sdk/d/b;

    new-instance v9, Lcom/sdk/d/b;

    const-string v11, "BG_NORMAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/sdk/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/sdk/d/b;->f:Lcom/sdk/d/b;

    new-instance v11, Lcom/sdk/d/b;

    const-string v13, "BG_LOW"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/sdk/d/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/sdk/d/b;->g:Lcom/sdk/d/b;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/sdk/d/b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/sdk/d/b;->h:[Lcom/sdk/d/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/d/b;
    .locals 1

    const-class v0, Lcom/sdk/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/d/b;

    return-object p0
.end method

.method public static values()[Lcom/sdk/d/b;
    .locals 1

    sget-object v0, Lcom/sdk/d/b;->h:[Lcom/sdk/d/b;

    invoke-virtual {v0}, [Lcom/sdk/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/d/b;

    return-object v0
.end method
