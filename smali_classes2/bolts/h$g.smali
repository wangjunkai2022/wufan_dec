.class final Lbolts/h$g;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h;->x(JLjava/util/concurrent/ScheduledExecutorService;Lbolts/c;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbolts/i;


# direct methods
.method constructor <init>(Lbolts/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbolts/h$g;->a:Lbolts/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbolts/h$g;->a:Lbolts/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/i;->f(Ljava/lang/Object;)Z

    return-void
.end method
