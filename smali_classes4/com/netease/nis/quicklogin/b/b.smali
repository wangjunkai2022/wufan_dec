.class public final enum Lcom/netease/nis/quicklogin/b/b;
.super Ljava/lang/Enum;
.source "ErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/nis/quicklogin/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/nis/quicklogin/b/b;

.field public static final enum b:Lcom/netease/nis/quicklogin/b/b;

.field public static final enum c:Lcom/netease/nis/quicklogin/b/b;

.field public static final enum d:Lcom/netease/nis/quicklogin/b/b;

.field public static final enum e:Lcom/netease/nis/quicklogin/b/b;

.field public static final enum f:Lcom/netease/nis/quicklogin/b/b;

.field public static final enum g:Lcom/netease/nis/quicklogin/b/b;

.field public static final enum h:Lcom/netease/nis/quicklogin/b/b;

.field private static final synthetic i:[Lcom/netease/nis/quicklogin/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/netease/nis/quicklogin/b/b;

    const-string v1, "NET_REQUEST_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/nis/quicklogin/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/nis/quicklogin/b/b;->a:Lcom/netease/nis/quicklogin/b/b;

    .line 2
    new-instance v1, Lcom/netease/nis/quicklogin/b/b;

    const-string v3, "DNS_PARSER_ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/nis/quicklogin/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/nis/quicklogin/b/b;->b:Lcom/netease/nis/quicklogin/b/b;

    .line 3
    new-instance v3, Lcom/netease/nis/quicklogin/b/b;

    const-string v5, "CONNECTION_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/nis/quicklogin/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/nis/quicklogin/b/b;->c:Lcom/netease/nis/quicklogin/b/b;

    .line 4
    new-instance v5, Lcom/netease/nis/quicklogin/b/b;

    const-string v7, "REQUEST_TIMEOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/nis/quicklogin/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/nis/quicklogin/b/b;->d:Lcom/netease/nis/quicklogin/b/b;

    .line 5
    new-instance v7, Lcom/netease/nis/quicklogin/b/b;

    const-string v9, "NET_SWITCH_TIMEOUT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/netease/nis/quicklogin/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/netease/nis/quicklogin/b/b;->e:Lcom/netease/nis/quicklogin/b/b;

    .line 6
    new-instance v9, Lcom/netease/nis/quicklogin/b/b;

    const-string v11, "RETURN_DATA_ERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/netease/nis/quicklogin/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    .line 7
    new-instance v11, Lcom/netease/nis/quicklogin/b/b;

    const-string v13, "SDK_INTERNAL_EXCEPTION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/netease/nis/quicklogin/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    .line 8
    new-instance v13, Lcom/netease/nis/quicklogin/b/b;

    const-string v15, "OTHER"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/netease/nis/quicklogin/b/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/netease/nis/quicklogin/b/b;->h:Lcom/netease/nis/quicklogin/b/b;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/netease/nis/quicklogin/b/b;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/netease/nis/quicklogin/b/b;->i:[Lcom/netease/nis/quicklogin/b/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/netease/nis/quicklogin/b/b;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/nis/quicklogin/b/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/nis/quicklogin/b/b;

    return-object p0
.end method

.method public static values()[Lcom/netease/nis/quicklogin/b/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/b/b;->i:[Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v0}, [Lcom/netease/nis/quicklogin/b/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/nis/quicklogin/b/b;

    return-object v0
.end method
