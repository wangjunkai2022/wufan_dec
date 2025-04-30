.class final Lretrofit2/adapter/rxjava2/f;
.super Ljava/lang/Object;
.source "RxJava2CallAdapter.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Lio/reactivex/h0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/h0;ZZZZZZZ)V
    .locals 0
    .param p2    # Lio/reactivex/h0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/f;->a:Ljava/lang/reflect/Type;

    .line 3
    iput-object p2, p0, Lretrofit2/adapter/rxjava2/f;->b:Lio/reactivex/h0;

    .line 4
    iput-boolean p3, p0, Lretrofit2/adapter/rxjava2/f;->c:Z

    .line 5
    iput-boolean p4, p0, Lretrofit2/adapter/rxjava2/f;->d:Z

    .line 6
    iput-boolean p5, p0, Lretrofit2/adapter/rxjava2/f;->e:Z

    .line 7
    iput-boolean p6, p0, Lretrofit2/adapter/rxjava2/f;->f:Z

    .line 8
    iput-boolean p7, p0, Lretrofit2/adapter/rxjava2/f;->g:Z

    .line 9
    iput-boolean p8, p0, Lretrofit2/adapter/rxjava2/f;->h:Z

    .line 10
    iput-boolean p9, p0, Lretrofit2/adapter/rxjava2/f;->i:Z

    return-void
.end method


# virtual methods
.method public adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/f;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lretrofit2/adapter/rxjava2/b;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava2/b;-><init>(Lretrofit2/Call;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lretrofit2/adapter/rxjava2/c;

    invoke-direct {v0, p1}, Lretrofit2/adapter/rxjava2/c;-><init>(Lretrofit2/Call;)V

    .line 4
    :goto_0
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/f;->d:Z

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lretrofit2/adapter/rxjava2/e;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava2/e;-><init>(Lio/reactivex/z;)V

    :goto_1
    move-object v0, p1

    goto :goto_2

    .line 6
    :cond_1
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/f;->e:Z

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Lretrofit2/adapter/rxjava2/a;

    invoke-direct {p1, v0}, Lretrofit2/adapter/rxjava2/a;-><init>(Lio/reactivex/z;)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_2
    iget-object p1, p0, Lretrofit2/adapter/rxjava2/f;->b:Lio/reactivex/h0;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {v0, p1}, Lio/reactivex/z;->G5(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object v0

    .line 10
    :cond_3
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/f;->f:Z

    if-eqz p1, :cond_4

    .line 11
    sget-object p1, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0, p1}, Lio/reactivex/z;->T6(Lio/reactivex/BackpressureStrategy;)Lio/reactivex/j;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/f;->g:Z

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {v0}, Lio/reactivex/z;->i5()Lio/reactivex/i0;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/f;->h:Z

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {v0}, Lio/reactivex/z;->h5()Lio/reactivex/q;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    iget-boolean p1, p0, Lretrofit2/adapter/rxjava2/f;->i:Z

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {v0}, Lio/reactivex/z;->a3()Lio/reactivex/a;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/f;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
