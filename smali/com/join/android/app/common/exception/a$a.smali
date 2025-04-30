.class Lcom/join/android/app/common/exception/a$a;
.super Ljava/lang/Thread;
.source "DefaultExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/exception/a;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcom/join/android/app/common/exception/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/exception/a$a;->b:Lcom/join/android/app/common/exception/a;

    iput-object p2, p0, Lcom/join/android/app/common/exception/a$a;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/exception/a$a;->b:Lcom/join/android/app/common/exception/a;

    iget-object v1, p0, Lcom/join/android/app/common/exception/a$a;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/join/android/app/common/exception/a;->a(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/exception/a$a;->b:Lcom/join/android/app/common/exception/a;

    iget-object v1, p0, Lcom/join/android/app/common/exception/a$a;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/join/android/app/common/exception/a;->b(Lcom/join/android/app/common/exception/a;Ljava/lang/Throwable;)Z

    return-void
.end method
