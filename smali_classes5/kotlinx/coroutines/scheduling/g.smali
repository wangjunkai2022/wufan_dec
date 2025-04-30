.class public final Lkotlinx/coroutines/scheduling/g;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Lkotlinx/coroutines/scheduling/j;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016R\u001c\u0010\t\u001a\u00020\u00048\u0016@\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/g;",
        "Lkotlinx/coroutines/scheduling/j;",
        "",
        "q",
        "",
        "b",
        "I",
        "r",
        "()I",
        "taskMode",
        "<init>",
        "()V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/g;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/g;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/g;->a:Lkotlinx/coroutines/scheduling/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q()V
    .locals 0

    return-void
.end method

.method public r()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/scheduling/g;->b:I

    return v0
.end method
