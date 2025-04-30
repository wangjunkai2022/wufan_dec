.class public Lcom/xinzhu/overmind/client/b;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/client/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/client/b;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "e"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
