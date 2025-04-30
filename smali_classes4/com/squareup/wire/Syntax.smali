.class public final enum Lcom/squareup/wire/Syntax;
.super Ljava/lang/Enum;
.source "Syntax.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/Syntax$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/wire/Syntax;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u0011\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u0016\u0010\u0004\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005j\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/squareup/wire/Syntax;",
        "",
        "",
        "toString",
        "string",
        "Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Companion",
        "a",
        "PROTO_2",
        "PROTO_3",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/Syntax;

.field public static final Companion:Lcom/squareup/wire/Syntax$a;

.field public static final enum PROTO_2:Lcom/squareup/wire/Syntax;

.field public static final enum PROTO_3:Lcom/squareup/wire/Syntax;


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/squareup/wire/Syntax;

    new-instance v1, Lcom/squareup/wire/Syntax;

    const-string v2, "PROTO_2"

    const/4 v3, 0x0

    const-string v4, "proto2"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/squareup/wire/Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/squareup/wire/Syntax;->PROTO_2:Lcom/squareup/wire/Syntax;

    aput-object v1, v0, v3

    new-instance v1, Lcom/squareup/wire/Syntax;

    const-string v2, "PROTO_3"

    const/4 v3, 0x1

    const-string v4, "proto3"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/squareup/wire/Syntax;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    aput-object v1, v0, v3

    sput-object v0, Lcom/squareup/wire/Syntax;->$VALUES:[Lcom/squareup/wire/Syntax;

    new-instance v0, Lcom/squareup/wire/Syntax$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/Syntax$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/Syntax;->Companion:Lcom/squareup/wire/Syntax$a;

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

    iput-object p3, p0, Lcom/squareup/wire/Syntax;->string:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getString$p(Lcom/squareup/wire/Syntax;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/wire/Syntax;->string:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/Syntax;
    .locals 1

    const-class v0, Lcom/squareup/wire/Syntax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/Syntax;

    return-object p0
.end method

.method public static values()[Lcom/squareup/wire/Syntax;
    .locals 1

    sget-object v0, Lcom/squareup/wire/Syntax;->$VALUES:[Lcom/squareup/wire/Syntax;

    invoke-virtual {v0}, [Lcom/squareup/wire/Syntax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/Syntax;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/wire/Syntax;->string:Ljava/lang/String;

    return-object v0
.end method
