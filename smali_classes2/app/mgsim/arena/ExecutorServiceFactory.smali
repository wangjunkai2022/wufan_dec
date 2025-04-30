.class public Lapp/mgsim/arena/ExecutorServiceFactory;
.super Ljava/lang/Object;
.source "ExecutorServiceFactory.java"


# static fields
.field private static mExecutors:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lapp/mgsim/arena/ExecutorServiceFactory;->mExecutors:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lapp/mgsim/arena/ExecutorServiceFactory;->mExecutors:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
