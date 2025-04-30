.class Lcom/join/mgps/service/CommonService$m;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$m;->a:Lcom/join/mgps/service/CommonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$m;->a:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v0}, Lcom/join/mgps/service/CommonService;->R()V

    return-void
.end method
