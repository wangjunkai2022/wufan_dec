.class final Lretrofit2/adapter/rxjava2/c$a;
.super Ljava/lang/Object;
.source "CallExecuteObservable.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile b:Z


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/c$a;->a:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lretrofit2/adapter/rxjava2/c$a;->b:Z

    .line 2
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/c$a;->a:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/c$a;->b:Z

    return v0
.end method
