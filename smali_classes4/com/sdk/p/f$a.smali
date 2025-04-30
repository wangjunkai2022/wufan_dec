.class public abstract enum Lcom/sdk/p/f$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/p/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/p/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sdk/p/f$a;

.field public static final enum b:Lcom/sdk/p/f$a;

.field public static final enum c:Lcom/sdk/p/f$a;

.field public static final synthetic d:[Lcom/sdk/p/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/sdk/p/c;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdk/p/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdk/p/f$a;->a:Lcom/sdk/p/f$a;

    new-instance v1, Lcom/sdk/p/d;

    const-string v3, "NET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdk/p/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdk/p/f$a;->b:Lcom/sdk/p/f$a;

    new-instance v3, Lcom/sdk/p/e;

    const-string v5, "UNKNOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sdk/p/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sdk/p/f$a;->c:Lcom/sdk/p/f$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sdk/p/f$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sdk/p/f$a;->d:[Lcom/sdk/p/f$a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/sdk/p/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/p/f$a;
    .locals 1

    const-class v0, Lcom/sdk/p/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/p/f$a;

    return-object p0
.end method

.method public static values()[Lcom/sdk/p/f$a;
    .locals 1

    sget-object v0, Lcom/sdk/p/f$a;->d:[Lcom/sdk/p/f$a;

    invoke-virtual {v0}, [Lcom/sdk/p/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/p/f$a;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method
