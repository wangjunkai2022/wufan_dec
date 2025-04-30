.class public final Lcom/squareup/wire/p$a;
.super Ljava/lang/Object;
.source "RuntimeEnumAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ&\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0006\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "com/squareup/wire/p$a",
        "",
        "Lcom/squareup/wire/s;",
        "E",
        "Ljava/lang/Class;",
        "enumType",
        "Lcom/squareup/wire/p;",
        "a",
        "<init>",
        "()V",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/squareup/wire/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/squareup/wire/p;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/squareup/wire/s;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/squareup/wire/p<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "enumType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->M:Lcom/squareup/wire/ProtoAdapter$a;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter$a;->b(Ljava/lang/Class;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/squareup/wire/p;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->w()Lcom/squareup/wire/Syntax;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/squareup/wire/p;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Syntax;)V

    return-object v1
.end method
