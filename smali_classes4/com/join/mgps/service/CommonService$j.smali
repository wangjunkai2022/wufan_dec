.class Lcom/join/mgps/service/CommonService$j;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/service/CommonService;


# direct methods
.method private constructor <init>(Lcom/join/mgps/service/CommonService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$j;->a:Lcom/join/mgps/service/CommonService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/service/CommonService;Lcom/join/mgps/service/CommonService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/service/CommonService$j;-><init>(Lcom/join/mgps/service/CommonService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$j;->a:Lcom/join/mgps/service/CommonService;

    invoke-static {v0}, Lcom/join/mgps/service/CommonService;->l(Lcom/join/mgps/service/CommonService;)V

    return-void
.end method
