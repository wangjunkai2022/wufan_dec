.class public final Lkotlinx/coroutines/channels/k$b;
.super Ljava/lang/Object;
.source "Channel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0000@\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u001c\u0010\r\u001a\u00020\u00028\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0004\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u0004R\u0016\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0004R\u0016\u0010\u0015\u001a\u00020\u00128\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "kotlinx/coroutines/channels/k$b",
        "",
        "",
        "c",
        "I",
        "RENDEZVOUS",
        "f",
        "OPTIONAL_CHANNEL",
        "b",
        "UNLIMITED",
        "h",
        "a",
        "()I",
        "CHANNEL_DEFAULT_CAPACITY",
        "d",
        "CONFLATED",
        "e",
        "BUFFERED",
        "",
        "g",
        "Ljava/lang/String;",
        "DEFAULT_BUFFER_PROPERTY_NAME",
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
.field static final synthetic a:Lkotlinx/coroutines/channels/k$b;

.field public static final b:I = 0x7fffffff

.field public static final c:I = 0x0

.field public static final d:I = -0x1

.field public static final e:I = -0x2

.field public static final f:I = -0x3

.field public static final g:Ljava/lang/String; = "kotlinx.coroutines.channels.defaultBuffer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/coroutines/channels/k$b;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/k$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/k$b;->a:Lkotlinx/coroutines/channels/k$b;

    const-string v0, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v1, 0x40

    const/4 v2, 0x1

    const v3, 0x7ffffffe

    .line 1
    invoke-static {v0, v1, v2, v3}, Lkotlinx/coroutines/internal/k0;->b(Ljava/lang/String;III)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/k$b;->h:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/channels/k$b;->h:I

    return v0
.end method
