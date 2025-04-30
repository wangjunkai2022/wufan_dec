.class public Lcom/join/mgps/service/CommonService$k;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService;


# direct methods
.method public constructor <init>(Lcom/join/mgps/service/CommonService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$k;->a:Lcom/join/mgps/service/CommonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$k;->a:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$k;->a:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v0}, Lcom/join/mgps/service/CommonService;->T()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$k;->a:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v0}, Lcom/join/mgps/service/CommonService;->U()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$k;->a:Lcom/join/mgps/service/CommonService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/service/CommonService;->V(I)V

    :cond_0
    return-void
.end method
