.class public Lcom/join/mgps/socket/fight/arena/ArenaService$b;
.super Landroid/os/Binder;
.source "ArenaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/fight/arena/ArenaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/socket/fight/arena/ArenaService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/socket/fight/arena/ArenaService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$b;->this$0:Lcom/join/mgps/socket/fight/arena/ArenaService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/join/mgps/socket/fight/arena/ArenaService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/fight/arena/ArenaService$b;->this$0:Lcom/join/mgps/socket/fight/arena/ArenaService;

    return-object v0
.end method
