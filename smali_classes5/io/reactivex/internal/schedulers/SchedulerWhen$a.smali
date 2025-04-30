.class final Lio/reactivex/internal/schedulers/SchedulerWhen$a;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lw2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerWhen$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/o<",
        "Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;",
        "Lio/reactivex/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/h0$c;


# direct methods
.method constructor <init>(Lio/reactivex/h0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$a;->a:Lio/reactivex/h0$c;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)Lio/reactivex/a;
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerWhen$a$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$a$a;-><init>(Lio/reactivex/internal/schedulers/SchedulerWhen$a;Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$a;->a(Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method
