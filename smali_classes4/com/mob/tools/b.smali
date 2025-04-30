.class public Lcom/mob/tools/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mob/tools/b;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mob/commons/n;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/mob/tools/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    new-instance v0, Lcom/mob/tools/b;

    invoke-direct {v0}, Lcom/mob/tools/b;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mob/tools/log/NLog;->crash(Ljava/lang/Throwable;)V

    .line 2
    sget-object v0, Lcom/mob/tools/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
