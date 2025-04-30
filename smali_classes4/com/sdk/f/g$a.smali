.class public abstract enum Lcom/sdk/f/g$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdk/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sdk/f/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sdk/f/g$a;

.field public static final enum b:Lcom/sdk/f/g$a;

.field public static final synthetic c:[Lcom/sdk/f/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sdk/f/e;

    const-string v1, "PRODUCE_STATISTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sdk/f/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sdk/f/g$a;->a:Lcom/sdk/f/g$a;

    new-instance v1, Lcom/sdk/f/f;

    const-string v3, "PRODUCE_DZH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sdk/f/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sdk/f/g$a;->b:Lcom/sdk/f/g$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sdk/f/g$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sdk/f/g$a;->c:[Lcom/sdk/f/g$a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/sdk/f/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sdk/f/g$a;
    .locals 1

    const-class v0, Lcom/sdk/f/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sdk/f/g$a;

    return-object p0
.end method

.method public static values()[Lcom/sdk/f/g$a;
    .locals 1

    sget-object v0, Lcom/sdk/f/g$a;->c:[Lcom/sdk/f/g$a;

    invoke-virtual {v0}, [Lcom/sdk/f/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sdk/f/g$a;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method
