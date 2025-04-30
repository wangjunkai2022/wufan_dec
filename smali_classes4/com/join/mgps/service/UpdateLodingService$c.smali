.class public Lcom/join/mgps/service/UpdateLodingService$c;
.super Landroid/os/Binder;
.source "UpdateLodingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/UpdateLodingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/service/UpdateLodingService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/UpdateLodingService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/join/mgps/service/UpdateLodingService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    return-object v0
.end method

.method public setDownData(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/join/mgps/service/UpdateLodingService;->g(Lcom/join/mgps/service/UpdateLodingService;Z)Z

    .line 2
    iget-object v0, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {v0, p2}, Lcom/join/mgps/service/UpdateLodingService;->b(Lcom/join/mgps/service/UpdateLodingService;I)I

    .line 3
    iget-object p2, p0, Lcom/join/mgps/service/UpdateLodingService$c;->this$0:Lcom/join/mgps/service/UpdateLodingService;

    invoke-static {p2, p1}, Lcom/join/mgps/service/UpdateLodingService;->j(Lcom/join/mgps/service/UpdateLodingService;Ljava/lang/String;)V

    return-void
.end method
