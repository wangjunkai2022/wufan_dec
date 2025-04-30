.class final Lio/reactivex/schedulers/b$e;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final a:Lio/reactivex/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/f;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/f;-><init>()V

    sput-object v0, Lio/reactivex/schedulers/b$e;->a:Lio/reactivex/h0;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
