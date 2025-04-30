.class public final synthetic Lkotlinx/coroutines/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final synthetic a:Lkotlinx/coroutines/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/z;

    invoke-direct {v0}, Lkotlinx/coroutines/z;-><init>()V

    sput-object v0, Lkotlinx/coroutines/z;->a:Lkotlinx/coroutines/z;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lkotlinx/coroutines/b0;->B(Ljava/lang/Runnable;)V

    return-void
.end method
